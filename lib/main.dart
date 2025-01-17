import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
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
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'database/database_helper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
 //  FlutterNativeSplash.preserve(widgetsBinding: binding);
  await DatabaseHelper.databaseHelper.initializeHive();
  await NotificationsHelper().init();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());

 //FlutterNativeSplash.remove();
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetsFlutterBinding.ensureInitialized(); // add this line
    //display full screen app
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
        ],
        child: Consumer<SettingsProvider>(
          builder: (context, settings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Noti',
              //locale: const Locale('pl','PL'),
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


