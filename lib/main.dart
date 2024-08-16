import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/providers/category_provider.dart';
import 'package:noti/providers/home_provider.dart';
import 'package:noti/providers/note_provider.dart';
import 'package:noti/providers/permission_provider.dart';
import 'package:noti/providers/settings_provider.dart';
import 'package:noti/providers/task_provider.dart';
import 'package:noti/screens/home_screen/launcher.dart';
import 'package:noti/screens/settings_screen/settings_screen.dart';
import 'package:noti/utils/customPageRoute/custom_page_route.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await NotificationHelper().init();
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
          ChangeNotifierProvider(
            create: (context) => SettingsProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => TaskProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NoteCategoryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NoteProvider(),
          ),
        ],
        child: Consumer<SettingsProvider>(
          builder: (context, settings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Noti',
              //locale: const Locale('pl','PL'),
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('pl','PL'),
                const Locale('en', 'GB'),
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


