import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:flutter/services.dart';

import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

import '../../models/db_model/task.dart';

final FlutterLocalNotificationsPlugin notifications =
    FlutterLocalNotificationsPlugin();

class NotificationsHelper {
  static final NotificationsHelper _instance = NotificationsHelper._internal();
  factory NotificationsHelper() => _instance;
  NotificationsHelper._internal();

  static const String _channelSoundId = 'noti_channel_sound';
  static const String _channelSilentId = 'noti_channel_silent';
  static const String _channelSoundName = 'Task Notifications (sound)';
  static const String _channelSilentName = 'Task Notifications (silent)';
  static const String _channelDescription = 'Channel used for task reminders';

  bool isSoundOn = true;

  Future<void> _configureLocalTimeZone() async {
    if (kIsWeb || Platform.isLinux || Platform.isWindows) {
      return;
    }

    tz.initializeTimeZones();

    final TimezoneInfo tzInfo = await FlutterTimezone.getLocalTimezone();
    final String timeZoneName = tzInfo.identifier;
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future<void> init() async {
    await _configureLocalTimeZone();

    const androidInit = AndroidInitializationSettings('@drawable/ic_stat_noti');

    const initSettings = InitializationSettings(android: androidInit);

    await notifications.initialize(
      settings: initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        await _onSelectNotification(response.payload);
      },
    );

    final androidImpl = notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidImpl != null) {
      await androidImpl.createNotificationChannel(
        const AndroidNotificationChannel(
          _channelSoundId,
          _channelSoundName,
          description: _channelDescription,
          importance: Importance.max,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('sound'),
          enableVibration: true,
        ),
      );

      await androidImpl.createNotificationChannel(
        const AndroidNotificationChannel(
          _channelSilentId,
          _channelSilentName,
          description: _channelDescription,
          importance: Importance.max,
          playSound: false,
          enableVibration: true,
        ),
      );
    }
  }

  Future<void> setSoundEnabled(bool enabled) async {
    isSoundOn = enabled;
  }

  Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
    if (!scheduledDate.isAfter(DateTime.now())) return;

    final int notificationId = task.id is int
        ? task.id as int
        : task.id.hashCode;
    final String channelId = isSoundOn ? _channelSoundId : _channelSilentId;

    final androidDetails = AndroidNotificationDetails(
      channelId,
      isSoundOn ? _channelSoundName : _channelSilentName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      color: const Color(0xFF0032A1),

      icon: '@drawable/ic_stat_noti',
      largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
      enableVibration: true,
      category: AndroidNotificationCategory.reminder,
    );
    final details = NotificationDetails(android: androidDetails);

    final tzTime = tz.TZDateTime.from(scheduledDate, tz.local);

    try {
      await notifications.zonedSchedule(
        id: notificationId,
        title: task.title,
        body: task.description,
        scheduledDate: tzTime,
        notificationDetails: details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        payload: task.id.toString(),
      );
    } on PlatformException catch (e) {
      if (e.code == 'exact_alarms_not_permitted') {
        await notifications.zonedSchedule(
          id: notificationId,
          title: task.title,
          body: task.description,
          scheduledDate: tzTime,
          notificationDetails: details,
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
          payload: task.id.toString(),
        );
      } else {
        rethrow;
      }
    }
  }

  Future<void> cancelNotification(int id) async {
    await notifications.cancel(id: id);
  }

  Future<void> cancelAllNotifications() async {
    await notifications.cancelAll();
  }

  Future<void> requestNotificationPermissions() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      if (!status.isGranted) {
        await Permission.notification.request();
      }
    }
  }

  Future<void> openSystemAppSettings() async {
    await openAppSettings();
  }

  Future<void> _onSelectNotification(String? payload) async {}

  Future<void> openExactAlarmSettings() async {
    const intent = AndroidIntent(
      action: 'android.settings.REQUEST_SCHEDULE_EXACT_ALARM',
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
    );
    await intent.launch();
  }

  Future<bool> ensureNotificationCapabilities() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      if (!status.isGranted) {
        final newStatus = await Permission.notification.request();
        if (!newStatus.isGranted) {
          return false;
        }
      }
    }

    final hasExact = await _hasExactAlarmPermission();
    if (!hasExact) {
      await openExactAlarmSettings();
      return false;
    }
    return true;
  }

  Future<bool> _hasExactAlarmPermission() async {
    if (!Platform.isAndroid) return true;

    final int probeId = 990001;
    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        _channelSilentId,
        _channelSilentName,
        channelDescription: _channelDescription,
        importance: Importance.low,
        priority: Priority.low,
        icon: '@mipmap/ic_launcher',
        enableVibration: false,
        category: AndroidNotificationCategory.reminder,
      ),
    );

    final when = tz.TZDateTime.from(
      DateTime.now().add(const Duration(minutes: 5)),
      tz.local,
    );

    try {
      await notifications.zonedSchedule(
        id: probeId,
        title: 'probe',
        body: 'probe',
        scheduledDate: when,
        notificationDetails: details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        payload: 'probe',
      );

      await notifications.cancel(id: probeId);
      return true;
    } on PlatformException catch (e) {
      if (e.code == 'exact_alarms_not_permitted') {
        return false;
      }
      rethrow;
    }
  }

  Future<void> showImmediateTest() async {
    const androidDetails = AndroidNotificationDetails(
      _channelSoundId,
      _channelSoundName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );
    const details = NotificationDetails(android: androidDetails);

    await notifications.show(
      id: 999001,
      title: 'Test natychmiastowy',
      body: 'Jeśli to widzisz, kanał + permission są OK.',
      notificationDetails: details,
      payload: 'immediate_test',
    );
  }

  Future<void> scheduleInOneMinute() async {
    final when = DateTime.now().add(const Duration(minutes: 1));
    await scheduleNotification(
      Task(
        id: "123456",
        title: 'Test za minutę',
        description: 'Sprawdzenie exact alarm',
        date: when,
        priority: 1,
        icon: 1,
        isTaskDone: false,
      ),
      when,
    );
  }
}
