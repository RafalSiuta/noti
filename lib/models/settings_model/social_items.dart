import 'dart:collection';

import 'package:noti/models/settings_model/settings_model/social_model.dart';
import 'package:flutter/material.dart';

class SocialList {
  final List<SocialModel> _socialList = [
    SocialModel(
        title: "www",
        icon: Icons.web,
        link: 'https://www.google.com'),
    SocialModel(
        title: "youtube",
        icon: Icons.play_arrow,
        link: 'https://www.youtube.com'),
    SocialModel(title: "share", icon: Icons.share, link: ''),
  ];

  UnmodifiableListView<SocialModel> get socials {
    return UnmodifiableListView(_socialList);
  }

  int get socialsListCounter {
    return _socialList.length;
  }
}
