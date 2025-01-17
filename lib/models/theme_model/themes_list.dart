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
        id:1025,
        title: "Noti",
        themeData: themeDefault,
        imgThemePath: 'theme1.png'), //default
    ThemeModel(
        id: 1026,
        title: "Jupiter", themeData: theme6, imgThemePath: 'theme2.png'),
    ThemeModel(
        id:1027, title: "Dark office", themeData: theme3, imgThemePath: 'theme3.png'),
    ThemeModel(id:1028,title: "Ghost", themeData: theme2, imgThemePath: 'theme4.png'),
    ThemeModel(id:1029,title: "Medici", themeData: theme1, imgThemePath: 'theme5.png'),
    ThemeModel(id:1030,title: "Hacker", themeData: theme9, imgThemePath: 'theme6.png'),
    ThemeModel(id:1031,title: "Coffee", themeData: theme8, imgThemePath: 'theme7.png'),
    ThemeModel(id:1032,title: "Old book", themeData: theme5, imgThemePath: 'theme8.png'),

  ];
}
