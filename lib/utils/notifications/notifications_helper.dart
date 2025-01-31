
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

import '../../models/db_model/task.dart';

final FlutterLocalNotificationsPlugin notifications = FlutterLocalNotificationsPlugin();

class NotificationsHelper {
  static final NotificationsHelper _notificationService = NotificationsHelper._internal();

  factory NotificationsHelper() {
    return _notificationService;
  }

  NotificationsHelper._internal();

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher'); // Ikona aplikacji

    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await notifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {

        selectNotification(notificationResponse.payload);
      },
    );
    tz.initializeTimeZones();
  }

  Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
    if (scheduledDate.isBefore(DateTime.now())) {
      return;
    }

    int notificationId = task.id.hashCode;

    await notifications.zonedSchedule(
      notificationId,
      task.title,
      task.description,
      tz.TZDateTime.from(scheduledDate, tz.local),
      NotificationDetails(
        android: AndroidNotificationDetails(
          'noti_channel',
          'Task Notifications',
          channelDescription: 'This channel is used for task notifications',
          importance: Importance.max,
          priority: Priority.high,
          sound: isSoundOn ? RawResourceAndroidNotificationSound('sound') : null,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time, // Dopasowanie dokładnego czasu
    );
  }

  Future<void> cancelNotification(int taskId) async {
    await notifications.cancel(taskId); // Anulowanie powiadomienia
  }

  Future<void> selectNotification(String? payload) async {

  }

  bool isSoundOn = false;
  Future<void> requestNotificationSound(bool isOn) async {


    isSoundOn = isOn;
  }

  Future<void> requestNotificationPermissions() async {

    if (await Permission.notification.isDenied) {
      await Permission.notification.request();
    }
  }

  Future<void> denyNotificationPermissions() async {

    await openAppSettings();
  }

  Future<void> cancelAllNotifications() async {

    await notifications.cancelAll();
  }
}
