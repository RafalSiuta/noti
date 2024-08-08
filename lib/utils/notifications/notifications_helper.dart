// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
//
// final FlutterLocalNotificationsPlugin notifications =
//     FlutterLocalNotificationsPlugin();
//
// class NotificationHelper {
//   static final NotificationHelper _notificationService =
//       NotificationHelper._internal();
//
//   bool isSound = true;
//
//   factory NotificationHelper() {
//     return _notificationService;
//   }
//
//   NotificationHelper._internal();
//
//   Future<void> init() async {
//     final launchDetails = await notifications.getNotificationAppLaunchDetails();
//     if (launchDetails != null && launchDetails.didNotificationLaunchApp) {
//       selectNotification(launchDetails.payload);
//     }
//
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings("@mipmap/ic_launcher");
//
//     final IOSInitializationSettings initializationSettingsIOS =
//         IOSInitializationSettings(
//             requestAlertPermission: true,
//             requestBadgePermission: true,
//             requestSoundPermission: true,
//             onDidReceiveLocalNotification: (int id, String? title, String? body,
//                 String? payload) async {});
//
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS,
//             macOS: null);
//
//     tz.initializeTimeZones();
//
//     await notifications.initialize(initializationSettings,
//         onSelectNotification: selectNotification);
//   }
//
//   Future selectNotification(payload) async {}
//   Future<void> showNotification() {
//     AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'channel id 1',
//       'Noti',
//       'Task notification',
//       icon: '@mipmap/ic_launcher',
//       playSound: isSound,
//       // autoCancel: true,
//       importance: Importance.max,
//       priority: Priority.high,
//       sound: const RawResourceAndroidNotificationSound('sound'),
//       largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
//     );
//     //ios
//     const iOSPlatformChannelSpecifics = IOSNotificationDetails(
//         sound: 'sound.wav',
//         presentAlert: true,
//         presentBadge: true,
//         presentSound: true);
//     //platform
//     NotificationDetails platformChannelSpecifics = NotificationDetails(
//         android: androidPlatformChannelSpecifics,
//         iOS: iOSPlatformChannelSpecifics);
//     return notifications.show(1, 'Test notification', "Testing notification",
//         platformChannelSpecifics);
//   }
//
//   Future<void> addSchedule(Task task, DateTime date) async {
//     var currentDateTime = tz.TZDateTime.from(
//             DateTime(date.year, date.month, date.day, date.hour, date.minute),
//             tz.local)
//         .add(const Duration(seconds: 10));
//     task.id ??= 1000234556 + 1;
//
//     //android
//     AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'channel id 5',
//       'Noti',
//       'Task notification',
//       icon: '@mipmap/ic_launcher',
//       playSound: isSound,
//       autoCancel: true,
//       importance: Importance.max,
//       priority: Priority.high,
//       sound: const RawResourceAndroidNotificationSound('sound'),
//       largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
//     );
//     //ios
//     IOSNotificationDetails iOSPlatformChannelSpecifics = IOSNotificationDetails(
//         sound: 'sound.mp3',
//         presentAlert: isSound,
//         presentBadge: true,
//         presentSound: true);
//     //platform
//     NotificationDetails platformChannelSpecifics = NotificationDetails(
//         android: androidPlatformChannelSpecifics,
//         iOS: iOSPlatformChannelSpecifics);
//
//     await notifications.zonedSchedule(task.id!, task.title, task.description,
//         currentDateTime, platformChannelSpecifics,
//         androidAllowWhileIdle: true,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.wallClockTime);
//   }
// }
