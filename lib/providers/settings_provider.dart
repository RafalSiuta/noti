import 'package:flutter/widgets.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider() {
    init();
  }

  init() async {
    print('Loading settings..');
  }
}