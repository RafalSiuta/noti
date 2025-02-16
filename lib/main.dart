import 'dart:io';
import 'package:noti/providers/gallery_image_provider.dart';
import 'package:noti/providers/home_provider.dart';
import 'package:noti/providers/note_provider.dart';
import 'package:noti/providers/permission_provider.dart';
import 'package:noti/providers/settings_provider.dart';
import 'package:noti/providers/task_provider.dart';
import 'package:noti/screens/home_screen/launcher.dart';
import 'package:noti/screens/settings_screen/settings_screen.dart';
import 'package:noti/utils/customPageRoute/custom_page_route.dart';
import 'package:noti/utils/notifications/notifications_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'database/database_helper.dart';
import 'package:device_info_plus/device_info_plus.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<int> getAndroidVersion() async {
    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.version.sdkInt;
    }
    return 0;
  }

  final int androidVersion = await getAndroidVersion();

  if (Platform.isAndroid && androidVersion >= 35) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: null,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  } else {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await DatabaseHelper.databaseHelper.initializeHive();
  await NotificationsHelper().init();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => PermissionProvider(),
          ),
          ChangeNotifierProxyProvider(
            create: (context) => SettingsProvider(Provider.of<PermissionProvider>(context, listen: false)),
            update: (context, PermissionProvider permissions, calendar) => SettingsProvider(permissions),
          ),
          ChangeNotifierProvider(
            create: (context) => GalleryImageProvider(),
          ),
          ChangeNotifierProxyProvider(
            create: (context) => TaskProvider(Provider.of<SettingsProvider>(context, listen: false)),
            update: (context, SettingsProvider settings, calendar) => TaskProvider(settings),
          ),
          ChangeNotifierProxyProvider(
            create: (context) => NoteProvider(Provider.of<SettingsProvider>(context, listen: false)),
            update: (context, SettingsProvider settings, calendar) => NoteProvider(settings),
          ),
          // ChangeNotifierProvider(
          //   create: (context) => HomeProvider(),
          // ),
          ChangeNotifierProxyProvider2<TaskProvider, NoteProvider, HomeProvider>(
            create: (context) => HomeProvider(
              taskProvider: Provider.of<TaskProvider>(context, listen: false),
              noteProvider: Provider.of<NoteProvider>(context, listen: false),
            ),
            update: (context, taskProvider, noteProvider, homeProvider) =>
                HomeProvider(taskProvider: taskProvider, noteProvider: noteProvider),
          ),
        ],
        child: Consumer<SettingsProvider>(
          builder: (context, settings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Noti',

              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('pl','PL'),
                Locale('en', 'GB'),
              ],
              theme: settings.getTheme(),
              initialRoute: '/',
              onGenerateRoute: (route) => onGenerateRoute(route),
            );
          },
        ));
  }

  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CustomPageRoute(
            child: const Main(),
            settings: settings,
            direction: AxisDirection.left);

      case "/settings":
        return CustomPageRoute(
            child: const SettingsScreen(),
            settings: settings,
            direction: AxisDirection.left);
      default:
        CustomPageRoute(
            child: const Main(),
            settings: settings,
            direction: AxisDirection.left);
    }
  }
}


