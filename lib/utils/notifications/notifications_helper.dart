//
// import 'package:permission_handler/permission_handler.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest_all.dart' as tz;
//
// import '../../models/db_model/task.dart';
//
// final FlutterLocalNotificationsPlugin notifications = FlutterLocalNotificationsPlugin();
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:flutter/services.dart'; // PlatformException
// + jeśli chcesz otwierać ustawienia:
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

import '../../models/db_model/task.dart';


final FlutterLocalNotificationsPlugin notifications = FlutterLocalNotificationsPlugin();

class NotificationsHelper {
  // ---- Singleton ----
  static final NotificationsHelper _instance = NotificationsHelper._internal();
  factory NotificationsHelper() => _instance;
  NotificationsHelper._internal();

  // ---- Stałe kanałów ----
  static const String _channelSoundId = 'noti_channel_sound';
  static const String _channelSilentId = 'noti_channel_silent';
  static const String _channelSoundName = 'Task Notifications (sound)';
  static const String _channelSilentName = 'Task Notifications (silent)';
  static const String _channelDescription = 'Channel used for task reminders';

  bool _tzInited = false;

  /// Flaga UI – wybór kanału przy planowaniu.
  bool isSoundOn = true;

  Future<void> _configureLocalTimeZone() async {
    if (kIsWeb || Platform.isLinux || Platform.isWindows) {
      return;
    }
    // 1) Załaduj bazę stref (IANA)
    tz.initializeTimeZones();

    // 2) Pobierz aktualną strefę z urządzenia (TimezoneInfo) i ustaw w tz
    final TimezoneInfo tzInfo = await FlutterTimezone.getLocalTimezone();
    final String timeZoneName = tzInfo.identifier; // np. "Europe/Warsaw"
    tz.setLocalLocation(tz.getLocation(timeZoneName));

    _tzInited = true; // skoro już zainicjowaliśmy timezone
  }

  /// Wywołaj raz (np. w `main()` / po starcie aplikacji).
  Future<void> init() async {
    await _configureLocalTimeZone();

    // Nie inicjalizuj drugi raz, jeśli już zrobione w _configureLocalTimeZone
    const androidInit = AndroidInitializationSettings('@drawable/ic_stat_noti');
    // const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);

    await notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        await _onSelectNotification(response.payload);
      },
    );

    // ... tworzenie kanałów jak wcześniej
    final androidImpl = notifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

    if (androidImpl != null) {
      await androidImpl.createNotificationChannel(const AndroidNotificationChannel(
        _channelSoundId,
        _channelSoundName,
        description: _channelDescription,
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound('sound'),
        enableVibration: true,
      ));

      await androidImpl.createNotificationChannel(const AndroidNotificationChannel(
        _channelSilentId,
        _channelSilentName,
        description: _channelDescription,
        importance: Importance.max,
        playSound: false,
        enableVibration: true,
      ));
    }



  }

  /// Proste ustawienie preferencji dźwięku (przełącznik w ustawieniach).
  /// Pamiętaj: na Androidzie 8+ dźwięk jest własnością KANAŁU.
  /// My to rozwiązujemy przez dwa kanały i wybór kanału przy planowaniu.
  Future<void> setSoundEnabled(bool enabled) async {
    isSoundOn = enabled;
  }


  Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
    if (!scheduledDate.isAfter(DateTime.now())) return;

    final int notificationId = task.id is int ? task.id as int : task.id.hashCode;
    final String channelId = isSoundOn ? _channelSoundId : _channelSilentId;

    final androidDetails = AndroidNotificationDetails(
      channelId,
      isSoundOn ? _channelSoundName : _channelSilentName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      color: const Color(0xFF0032A1),
      // icon: '@mipmap/ic_launcher',
      icon: '@drawable/ic_stat_noti',
      largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
      enableVibration: true,
      category: AndroidNotificationCategory.reminder,
    );
    final details = NotificationDetails(android: androidDetails);

    final tzTime = tz.TZDateTime.from(scheduledDate, tz.local);

    try {
      await notifications.zonedSchedule(
        notificationId,
        task.title,
        task.description,
        tzTime,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        payload: task.id.toString(),
      );
    } on PlatformException catch (e) {
      if (e.code == 'exact_alarms_not_permitted') {
        // Fallback 1: planowanie nie-dokładne (działa bez specjalnego dostępu)
        await notifications.zonedSchedule(
          notificationId,
          task.title,
          task.description,
          tzTime,
          details,
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
          payload: task.id.toString(),
        );

        // (opcjonalnie) pokaż w UI przycisk do włączenia exact alarms:
        // await openExactAlarmSettings();
      } else {
        rethrow;
      }
    }
  }

  Future<void> cancelNotification(int id) async {
    await notifications.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await notifications.cancelAll();
  }

  /// Uprawnienia – powiadomienia (Android 13+) i wskazówka nt. exact alarm.
  Future<void> requestNotificationPermissions() async {
    // Android 13+: POST_NOTIFICATIONS runtime
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      if (!status.isGranted) {
        await Permission.notification.request();
      }
    }
  }

  /// Otwiera ustawienia aplikacji (np. gdy chcesz, by user sam włączył alarmy/dźwięk).
  Future<void> openSystemAppSettings() async {
    await openAppSettings();
  }

  // ---- Callback po kliknięciu w powiadomienie ----
  Future<void> _onSelectNotification(String? payload) async {
    // Tu możesz nawigować w appce po kliknięciu w powiadomienie,
    // z użyciem payload (np. id zadania).
  }

  Future<void> openExactAlarmSettings() async {
    const intent = AndroidIntent(
      action: 'android.settings.REQUEST_SCHEDULE_EXACT_ALARM',
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
    );
    await intent.launch();
  }
  Future<bool> ensureNotificationCapabilities() async {
    // 1) POST_NOTIFICATIONS (Android 13+)
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      if (!status.isGranted) {
        final newStatus = await Permission.notification.request();
        if (!newStatus.isGranted) {
          return false; // user odmówił
        }
      }
    }

    // 2) Exact alarms (Android 12–14): sprawdź „sprytnie”
    final hasExact = await _hasExactAlarmPermission();
    if (!hasExact) {
      // Otwórz ekran: Ustawienia → Specjalny dostęp → Alarmy i przypomnienia
      await openExactAlarmSettings();
      return false;
    }
    return true;
  }



  /// „Probe” sprawdzający, czy możemy użyć EXACT.
  /// Próbuje zaplanować cichą notyfikację na 5 minut do przodu
  /// trybem exact i natychmiast ją anuluje.
  Future<bool> _hasExactAlarmPermission() async {
    if (!Platform.isAndroid) return true;

    final int probeId = 990001;
    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        _channelSilentId,          // cichy kanał
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
        probeId,
        'probe',
        'probe',
        when,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        payload: 'probe',
      );
      // jeśli się udało — anulujemy i mamy potwierdzenie
      await notifications.cancel(probeId);
      return true;
    } on PlatformException catch (e) {
      if (e.code == 'exact_alarms_not_permitted') {
        return false;
      }
      rethrow; // inne błędy pokaż normalnie
    }
  }
//testing functions
  Future<void> showImmediateTest() async {
    const androidDetails = AndroidNotificationDetails(
      _channelSoundId, // albo _channelSilentId
      _channelSoundName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );
    const details = NotificationDetails(android: androidDetails);

    await notifications.show(
      999001, // testowe ID
      'Test natychmiastowy',
      'Jeśli to widzisz, kanał + permission są OK.',
      details,
      payload: 'immediate_test',
    );
  }

  Future<void> scheduleInOneMinute() async {
    final when = DateTime.now().add(const Duration(minutes: 1));
    await scheduleNotification(
      Task(
        id: "123456", // podaj stabilny int (lub zmień na własny model)
        title: 'Test za minutę',
        description: 'Sprawdzenie exact alarm',
        date: when, priority: 1,icon: 1, isTaskDone: false,
        // w Twoim modelu dodaj minimalne wymagane pola
      ),
      when,
    );
  }

  Future<void> debugDumpNotificationState() async {
    final perm = await Permission.notification.status;
    final pending = await notifications.pendingNotificationRequests();

    print('--- NOTI DEBUG ---');
    print('POST_NOTIFICATIONS: ${perm.isGranted}');
    print('Pending count: ${pending.length}');
    for (final p in pending) {
      print('  id=${p.id} title=${p.title} body=${p.body}');
    }
    try {
      final tzInfo = await FlutterTimezone.getLocalTimezone();
      print('Timezone: ${tzInfo.identifier}');
    } catch (_) {}
    print('-------------------');
  }

}
// Future<void> init() async {
//   await _configureLocalTimeZone();
//   if (!_tzInited) {
//     tz.initializeTimeZones();
//     _tzInited = true;
//   }
//
//   // 2) Ustawienia init
//   const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
//   const initSettings = InitializationSettings(android: androidInit);
//
//   await notifications.initialize(
//     initSettings,
//     onDidReceiveNotificationResponse: (NotificationResponse response) async {
//       await _onSelectNotification(response.payload);
//     },
//   );
//
//   // 3) Utworzenie kanałów (Android 8+)
//   final androidImpl = notifications.resolvePlatformSpecificImplementation<
//       AndroidFlutterLocalNotificationsPlugin>();
//
//   if (androidImpl != null) {
//     // Kanał z dźwiękiem – UWAGA: dźwięk definiujemy tu, a nie w NotificationDetails.
//     await androidImpl.createNotificationChannel(
//       const AndroidNotificationChannel(
//         _channelSoundId,
//         _channelSoundName,
//         description: _channelDescription,
//         importance: Importance.max,
//         playSound: true,
//         sound: RawResourceAndroidNotificationSound('sound'), // plik: res/raw/sound.wav
//         enableVibration: true,
//       ),
//     );
//
//     // Kanał bez dźwięku
//     await androidImpl.createNotificationChannel(
//       const AndroidNotificationChannel(
//         _channelSilentId,
//         _channelSilentName,
//         description: _channelDescription,
//         importance: Importance.max,
//         playSound: false,
//         enableVibration: true,
//       ),
//     );
//   }
// }
/// Zaplanuj jednorazowe powiadomienie dla Taska.
// Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
//   // Nie planuj w przeszłość
//   if (!scheduledDate.isAfter(DateTime.now())) return;
//
//   // ID notyfikacji – najlepiej stabilny int z bazy.
//   final int notificationId = task.id.hashCode; // jeśli masz int, użyj go bezpośrednio
//
//   // Wybór kanału wg preferencji dźwięku
//   final String channelId = isSoundOn ? _channelSoundId : _channelSilentId;
//
//   final androidDetails = AndroidNotificationDetails(
//     channelId,
//     isSoundOn ? _channelSoundName : _channelSilentName,
//     channelDescription: _channelDescription,
//     importance: Importance.max,
//     priority: Priority.high,
//     // NIE ustawiamy tu `sound` – na Androidzie 8+ decyduje kanał.
//     // Ikona – możesz podmienić na własną w @drawable, np. '@drawable/ic_notification'
//     icon: '@mipmap/ic_launcher',
//     enableVibration: true,
//     category: AndroidNotificationCategory.reminder,
//   );
//
//   final details = NotificationDetails(android: androidDetails);
//
//   await notifications.zonedSchedule(
//     notificationId,
//     task.title,
//     task.description,
//     tz.TZDateTime.from(scheduledDate, tz.local),
//     details,
//     androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//     payload: task.id.toString(),
//   );
//
//
// }
// class NotificationsHelper {
//   static final NotificationsHelper _notificationService = NotificationsHelper._internal();
//
//   factory NotificationsHelper() {
//     return _notificationService;
//   }
//
//   NotificationsHelper._internal();
//
//   Future<void> init() async {
//     const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher'); // Ikona aplikacji
//
//     final InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//     );
//
//     await notifications.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
//
//         selectNotification(notificationResponse.payload);
//       },
//     );
//     tz.initializeTimeZones();
//   }
//
//   Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
//     if (scheduledDate.isBefore(DateTime.now())) {
//       return;
//     }
//
//     int notificationId = task.id.hashCode;
//
//     await notifications.zonedSchedule(
//       notificationId,
//       task.title,
//       task.description,
//       tz.TZDateTime.from(scheduledDate, tz.local),
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           'noti_channel',
//           'Task Notifications',
//           channelDescription: 'This channel is used for task notifications',
//           importance: Importance.max,
//           priority: Priority.high,
//           sound: isSoundOn ? RawResourceAndroidNotificationSound('sound') : null,
//         ),
//       ),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//
//       // uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//       matchDateTimeComponents: DateTimeComponents.time, // Dopasowanie dokładnego czasu
//     );
//   }
//
//   Future<void> cancelNotification(int taskId) async {
//     await notifications.cancel(taskId); // Anulowanie powiadomienia
//   }
//
//   Future<void> selectNotification(String? payload) async {
//
//   }
//
//   bool isSoundOn = false;
//   Future<void> requestNotificationSound(bool isOn) async {
//
//
//     isSoundOn = isOn;
//   }
//
//   Future<void> requestNotificationPermissions() async {
//
//     if (await Permission.notification.isDenied) {
//       await Permission.notification.request();
//     }
//   }
//
//   Future<void> denyNotificationPermissions() async {
//
//     await openAppSettings();
//   }
//
//   Future<void> cancelAllNotifications() async {
//
//     await notifications.cancelAll();
//   }
// }
