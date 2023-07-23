import 'dart:collection';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noti_2/model/settings_model/settings_model/social_model.dart';

class SocialList {
  final List<SocialModel> _socialList = [
    SocialModel(
        title: "www",
        icon: FontAwesomeIcons.globe,
        link: 'https://r85-noti.herokuapp.com/'),
    SocialModel(
        title: "youtube",
        icon: FontAwesomeIcons.youtube,
        link: 'https://www.youtube.com/channel/UC_gIXm89-OE4ghDUtAI9Ilg'),
    SocialModel(title: "share", icon: FontAwesomeIcons.share, link: ''),
  ];

  UnmodifiableListView<SocialModel> get socials {
    return UnmodifiableListView(_socialList);
  }

  int get socialsListCounter {
    return _socialList.length;
  }
}
