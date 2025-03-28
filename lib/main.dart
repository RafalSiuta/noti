import 'dart:io';
import 'package:noti/providers/image_provider/gallery_image_provider.dart';
import 'package:noti/providers/home_provider/home_provider.dart';
import 'package:noti/providers/note_provider/note_provider.dart';
import 'package:noti/providers/note_provider/note_search_provider.dart';
import 'package:noti/providers/permission_provider/permission_provider.dart';
import 'package:noti/providers/search_provider/search_provider.dart';
import 'package:noti/providers/settings_provider/settings_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/providers/task_provider/task_search_provider.dart';
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
        providers:
        [
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => PermissionProvider(),
          ),

          ChangeNotifierProxyProvider<PermissionProvider, SettingsProvider>(
            create: (context) => SettingsProvider(
              Provider.of<PermissionProvider>(context, listen: false),
            ),
            update: (context, permissionProvider, settingsProvider) =>
                SettingsProvider(permissionProvider),
          ),

          ChangeNotifierProvider(
            create: (context) => GalleryImageProvider(),
          ),

          ChangeNotifierProvider(
            create: (context) => SearchProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => TaskSearchProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NoteSearchProvider(),
          ),

          ChangeNotifierProxyProvider2<SettingsProvider, NoteSearchProvider, NoteProvider>(
            create: (context) => NoteProvider(
              Provider.of<SettingsProvider>(context, listen: false),
              Provider.of<NoteSearchProvider>(context, listen: false),
            ),
            update: (context, settingsProvider, searchProvider, noteProvider) =>
                NoteProvider(settingsProvider, searchProvider),
          ),

          ChangeNotifierProxyProvider2<SettingsProvider, TaskSearchProvider, TaskProvider>(
            create: (context) => TaskProvider(
              Provider.of<SettingsProvider>(context, listen: false),
              Provider.of<TaskSearchProvider>(context, listen: false),
            ),
            update: (context, settingsProvider, searchProvider, noteProvider) =>
                TaskProvider(settingsProvider, searchProvider),
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


