import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti_2/providers/home_provider.dart';
import 'package:noti_2/providers/settings_provider.dart';
import 'package:noti_2/screens/main_screen.dart';
import 'package:noti_2/screens/settings_screen/settings_screen.dart';
import 'package:noti_2/themes/theme_default.dart';
import 'package:noti_2/utils/custom_page_route/custom_page_route.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Noti());
}

class Noti extends StatelessWidget {
  const Noti({super.key});

  //todo:  https://dartling.dev/toggle-full-screen-mode-in-flutter
  static Future<void> setEnabledSystemUIMode(SystemUiMode mode, { List<SystemUiOverlay>? overlays }) async {
    if (mode != SystemUiMode.manual) {
      await SystemChannels.platform.invokeMethod<void>(
        'SystemChrome.setEnabledSystemUIMode',
        //mode.toString(),
      );
    } else {
      assert(mode == SystemUiMode.manual && overlays != null);
      await SystemChannels.platform.invokeMethod<void>(
        'SystemChrome.setEnabledSystemUIOverlays',
        //_stringify(overlays!),
      );
    }
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SettingsProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          // ChangeNotifierProvider(
          //   create: (context) => TaskProvider(),
          // ),
          // ChangeNotifierProvider(
          //   create: (context) => NoteCategoryProvider(),
          // ),
          // ChangeNotifierProvider(
          //   create: (context) => NoteProvider(),
          // ),
        ],
        child: Consumer<SettingsProvider>(
          builder: (context, settings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Noti',
              theme: themeDefault,
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
            child: const MainScreen(),
            settings: settings,
            direction: AxisDirection.left);

      case "/settings":
        return CustomPageRoute(
            child: const SettingsScreen(),
            settings: settings,
            direction: AxisDirection.left);
      default:
        CustomPageRoute(
            child: const MainScreen(),
            settings: settings,
            direction: AxisDirection.left);
    }
  }
}

