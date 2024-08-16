import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../styles/shapes/shapes.dart';


class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SettingsProvider>(
        builder: (context, settingsProvider, child) {
          return
        Theme(
          data: settingsProvider.getTheme(),
      child: Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        const BackgroundShape(),
        SafeArea(
            child:  Column(

        )),
      ]
      ));
    }
    ));
  }
}
