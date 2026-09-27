import 'dart:collection';
import 'package:noti/models/theme_model/theme_model.dart';
import '../../styles/themes/style_exports.dart';
import '../../styles/themes/theme_9.dart';

class ThemesList {
  UnmodifiableListView<ThemeModel> get themesList {
    return UnmodifiableListView(_themesList);
  }

  int get themesListCounter {
    return themesList.length;
  }

  final List<ThemeModel> _themesList = [
    ThemeModel(
      id: 1025,
      title: "Noti2",
      themeData: theme_1,
      imgThemePath: 'theme_1.png',
    ),
    ThemeModel(
      id: 1026,
      title: "Jupiter",
      themeData: theme_2,
      imgThemePath: 'theme_2.png',
    ),
    ThemeModel(
      id: 1027,
      title: "Dark office",
      themeData: theme_3,
      imgThemePath: 'theme_3.png',
    ),
    ThemeModel(
      id: 1028,
      title: "Ghost",
      themeData: theme_4,
      imgThemePath: 'theme_4.png',
    ),
    ThemeModel(
      id: 1029,
      title: "Medici",
      themeData: theme_5,
      imgThemePath: 'theme_5.png',
    ),
    ThemeModel(
      id: 1030,
      title: "Hacker",
      themeData: theme_6,
      imgThemePath: 'theme_6.png',
    ),
    ThemeModel(
      id: 1031,
      title: "Coffee",
      themeData: theme_7,
      imgThemePath: 'theme_7.png',
    ),
    ThemeModel(
      id: 1032,
      title: "Old book",
      themeData: theme_8,
      imgThemePath: 'theme_8.png',
    ),
    ThemeModel(
      id: 1033,
      title: "Noti",
      themeData: theme_9,
      imgThemePath: 'theme_9.png',
    ),
  ];
}
