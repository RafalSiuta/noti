import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavModel {
  final String title;
  final IconData icon;

  NavModel({this.title = '', this.icon = FontAwesomeIcons.solidCircle});
}
