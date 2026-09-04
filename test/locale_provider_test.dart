import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:noti/providers/locale_provider/locale_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    binding.platformDispatcher.clearLocaleTestValue();
  });

  test('starts from the device locale before preferences load', () {
    SharedPreferences.setMockInitialValues({});
    binding.platformDispatcher.localeTestValue = const Locale('pl', 'PL');

    final provider = LocaleProvider();
    addTearDown(provider.dispose);

    expect(provider.hasUserChoice, isFalse);
    expect(provider.locale, const Locale('pl', 'PL'));
    expect(provider.code, 'pl');
  });
}
