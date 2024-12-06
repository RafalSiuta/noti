
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

    // Inicjalizacja powiadomień
    await notifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
        // Logika po kliknięciu powiadomienia
        selectNotification(notificationResponse.payload);
      },
    );
    //await requestNotificationPermissions();
    // Inicjalizacja timezone dla powiadomień
    tz.initializeTimeZones();
  }

  Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
    if (scheduledDate.isBefore(DateTime.now())) {
      print("Cannot schedule a notification in the past: $scheduledDate");
      return; // Nie planuj powiadomień w przeszłości
    }
    print('Scheduling notification for task: ${task.title} at $scheduledDate');

    // Identyfikator powiadomienia
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
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  // Future<void> scheduleNotification(Task task, DateTime scheduledDate) async {
  //   print('Scheduling notification for task: ${task.title} at $scheduledDate');
  //   int notificationId = task.id.hashCode;
  //   await notifications.zonedSchedule(
  //     notificationId, // Użyj ID zadania jako ID powiadomienia //ERROR: The argument type 'String' can't be assigned to the parameter type 'int'
  //     task.title, // Tytuł powiadomienia (np. tytuł zadania)
  //     task.description, // Treść powiadomienia (np. opis zadania)
  //     tz.TZDateTime.from(scheduledDate, tz.local), // Konwersja daty do lokalnej strefy czasowej
  //      NotificationDetails(
  //       android: AndroidNotificationDetails(
  //         'noti_channel', // Kanał powiadomień
  //         'Task Notifications', // Nazwa kanału
  //         channelDescription: 'This channel is used for task notifications',
  //         importance: Importance.max,
  //         priority: Priority.high,
  //           //dodać dźwięk
  //           sound: isSoundOn == true ? RawResourceAndroidNotificationSound('sound') : null,
  //       ),
  //     ),
  //     androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
  //     //androidAllowWhileIdle: true, // depricated
  //      // Pozwolenie na wyświetlanie w trybie uśpienia //DEPRICATED
  //     uiLocalNotificationDateInterpretation:
  //     UILocalNotificationDateInterpretation.absoluteTime,
  //     matchDateTimeComponents: DateTimeComponents.time, // Dopasowanie do dokładnego czasu
  //   );
  //
  // }

  Future<void> cancelNotification(int taskId) async {
    await notifications.cancel(taskId); // Anulowanie powiadomienia
  }

  Future<void> selectNotification(String? payload) async {
    // Logika po kliknięciu powiadomienia (opcjonalnie)
    print('Notification clicked with payload: $payload');
  }

  bool isSoundOn = false;
  Future<void> requestNotificationSound(bool isOn) async {
    //dodaj zapytanie o zgode na dźwięk

    isSoundOn = isOn;
    print('NOTIFICATION HELPER SOUND $isSoundOn');
  }

  Future<void> requestNotificationPermissions() async {
    // Sprawdzanie i proszenie o uprawnienia do powiadomień na Androidzie 13+
    if (await Permission.notification.isDenied) {
      await Permission.notification.request();
    }
  }

  Future<void> denyNotificationPermissions() async {
    // Sprawdzanie i proszenie o uprawnienia do powiadomień na Androidzie 13+
    //jak cofnąć pozwolenie?
    await openAppSettings();
  }

  // Anulowanie wszystkich powiadomień
  Future<void> cancelAllNotifications() async {
    //odwołuje użytkownika do ustawień tel.
    await notifications.cancelAll();
  }
}
