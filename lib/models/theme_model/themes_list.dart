import 'dart:collection';
import 'package:noti/models/theme_model/theme_model.dart';

import '../../styles/themes/style_exports.dart';

class ThemesList {
  UnmodifiableListView<ThemeModel> get themesList {
    return UnmodifiableListView(_themesList);
  }

  int get themesListCounter {
    return themesList.length;
  }

  final List<ThemeModel> _themesList = [
    ThemeModel(
        title: "Noti",
        themeData: themeDefault,
        imgThemePath: 'theme1.png'), //default
    ThemeModel(title: "Jupiter", themeData: theme6, imgThemePath: 'theme2.png'),
    ThemeModel(title: "Dark office", themeData: theme3, imgThemePath: 'theme3.png'),
    ThemeModel(title: "Ghost", themeData: theme2, imgThemePath: 'theme4.png'),
    ThemeModel(title: "Medici", themeData: theme1, imgThemePath: 'theme5.png'),
    ThemeModel(title: "Hacker", themeData: theme9, imgThemePath: 'theme6.png'),
    ThemeModel(title: "Coffee", themeData: theme8, imgThemePath: 'theme7.png'),
    ThemeModel(title: "Old book", themeData: theme5, imgThemePath: 'theme8.png'),

    // ThemeModel(title: "Biscuit", themeData: theme11, imgThemePath: 'th11.png'),
    // ThemeModel(
    //     title: "Enterprise", themeData: theme10, imgThemePath: 'th10.png'),
    // ThemeModel(
    //     title: "GardenCity", themeData: theme12, imgThemePath: 'th12.png'),
    // ThemeModel(title: "Cinnamon", themeData: theme7, imgThemePath: 'th7.png'),
    // ThemeModel(title: "Galaxy", themeData: theme4, imgThemePath: 'th13.png'),
  ];
}
