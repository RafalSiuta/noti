import 'dart:collection';
import 'package:flutter/material.dart';

import '../settings_model/social_model.dart';

class LibList {
  final List<SocialModel> _libList = [
    SocialModel(
        title: "RetroPortal Studio \nFlutter Shape Maker ...read more",
        icon: Icons.info,
        link: 'https://fluttershapemaker.com/'),
    SocialModel(
        title: "table_calendar: ^3.0.2 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/table_calendar/license'),
    SocialModel(
        title: "tekartik.com \nsqflite: ^2.0.0+4 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/sqflite/license'),
    SocialModel(
        title: "flutter.dev \npath_provider: ^2.0.5 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/path_provider/license'),
    SocialModel(
        title: "dart.dev \nintl: ^0.17.0 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/intl/license'),
    SocialModel(
        title: "flutter.dev \nanimations: ^2.0.1 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/animations/license'),
    SocialModel(
        title: "flutter.dev \nshared_preferences: ^2.0.8v ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/shared_preferences/license'),
    SocialModel(
        title: "dexterx.dev \nflutter_local_notifications: ^8.2.0 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/flutter_local_notifications/license'),
    SocialModel(
        title: " \nflutter_native_timezone: ^2.0.0 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/flutter_native_timezone/license'),
    SocialModel(
        title: "kikt.top \nphoto_manager: ^1.3.2 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/photo_manager/license'),
    SocialModel(
        title: "flutter.dev \ncamera: ^0.9.4 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/camera'),
    SocialModel(
        title: "flutter.dev \nwebview_flutter: ^2.0.14 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/webview_flutter/license'),
    SocialModel(
        title:
            "mobiten.com \nflutter_staggered_animations: ^1.0.0 ...read more",
        icon: Icons.info,
        link: 'https://pub.dev/packages/flutter_staggered_animations/license'),
  ];

  UnmodifiableListView<SocialModel> get libs {
    return UnmodifiableListView(_libList);
  }

  int get libListCounter {
    return _libList.length;
  }
}
