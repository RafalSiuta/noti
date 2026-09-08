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
        id:1025,
        title: "Noti2",
        themeData: theme_1,
        imgThemePath: 'theme_1.png'), //default 1
    ThemeModel(
        id: 1026,
        title: "Jupiter", themeData: theme_2, imgThemePath: 'theme_2.png'),//2
    ThemeModel(
        id:1027, title: "Dark office", themeData: theme_3, imgThemePath: 'theme_3.png'),//3
    ThemeModel(
        id:1028,title: "Ghost", themeData: theme_4, imgThemePath: 'theme_4.png'),//4
    ThemeModel(
        id:1029,title: "Medici", themeData: theme_5, imgThemePath: 'theme_5.png'),//5
    ThemeModel(
        id:1030,title: "Hacker", themeData: theme_6, imgThemePath: 'theme_6.png'),//6
    ThemeModel(
        id:1031,title: "Coffee", themeData: theme_7, imgThemePath: 'theme_7.png'),//7
    ThemeModel(
        id:1032,title: "Old book", themeData: theme_8, imgThemePath: 'theme_8.png'),//8
    ThemeModel(
        id:1033,
        title: "Noti",
        themeData: theme_9,
        imgThemePath: 'theme_9.png'), //9 - noti V1

  ];
}
