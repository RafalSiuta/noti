import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti_2/providers/calendar_provider.dart';
import 'package:noti_2/providers/home_provider.dart';
import 'package:noti_2/providers/note_provider.dart';
import 'package:noti_2/providers/project_provider.dart';
import 'package:noti_2/providers/settings_provider.dart';
import 'package:noti_2/providers/task_provider.dart';
import 'package:noti_2/screens/main_screen.dart';
import 'package:noti_2/screens/settings_screen/settings_screen.dart';
import 'package:noti_2/widgets/themes/theme2.dart';
import 'package:noti_2/widgets/themes/theme_default.dart';
import 'package:noti_2/utils/custom_page_route/custom_page_route.dart';
import 'package:noti_2/widgets/themes/theme_default.dart';
import 'package:noti_2/widgets/themes/theme_ghost.dart';
import 'package:provider/provider.dart';

void main() async {
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
    //final theme = Provider.of<SettingsProvider>(context);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SettingsProvider(themeGhost),
          ),
          ChangeNotifierProvider(
            create: (context) => CalendarProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => TaskProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NoteProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ProjectProvider(),
          ),
          // ChangeNotifierProvider(
          //   create: (context) => NoteCategoryProvider(),
          // ),
          // ChangeNotifierProvider(
          //   create: (context) => NoteProvider(),
          // ),
        ],
        child:
        // MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   title: 'Noti',
        //   theme: Provider.of<SettingsProvider>(context).getTheme(),
        //   initialRoute: '/',
        //   onGenerateRoute: (route) => onGenerateRoute(route),
        // ),
        Consumer<SettingsProvider>(
          builder: (context, settings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Noti',
              theme: settings.getTheme(),
              initialRoute: '/',
              onGenerateRoute: (route) => onGenerateRoute(route),
            );
          },
        )
    );


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
