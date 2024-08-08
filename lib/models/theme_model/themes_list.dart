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
        imgThemePath: 'default.png'), //default
    ThemeModel(title: "Jupiter", themeData: theme6, imgThemePath: 'th6.png'),
    ThemeModel(title: "Frost", themeData: theme9, imgThemePath: 'th9.png'),
    ThemeModel(title: "Ghost", themeData: theme2, imgThemePath: 'th2.png'),
    ThemeModel(title: "Parakeet", themeData: theme5, imgThemePath: 'th5.png'),
    ThemeModel(title: "Aurora", themeData: theme3, imgThemePath: 'th3.png'),
    ThemeModel(title: "MerryJane", themeData: theme1, imgThemePath: 'th1.png'),
    ThemeModel(title: "Mars", themeData: theme8, imgThemePath: 'th8.png'),
    ThemeModel(title: "Biscuit", themeData: theme11, imgThemePath: 'th11.png'),
    ThemeModel(
        title: "Enterprise", themeData: theme10, imgThemePath: 'th10.png'),
    ThemeModel(
        title: "GardenCity", themeData: theme12, imgThemePath: 'th12.png'),
    ThemeModel(title: "Cinnamon", themeData: theme7, imgThemePath: 'th7.png'),
    ThemeModel(title: "Galaxy", themeData: theme4, imgThemePath: 'th13.png'),
  ];
}
