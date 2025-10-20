import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kPrefsLocaleKey = 'app_locale_code'; // 'en', 'pl', 'es'

class LocaleProvider extends ChangeNotifier {
  LocaleProvider() {
    _init(); // wczytaj zapisany język przy starcie
  }

  Locale _locale = const Locale('en', 'GB');
  Locale get locale => _locale;

  String get code => _locale.languageCode; // do powiązania z radiobuttonami

  /// Mapowanie krótkiego kodu na Locale spójne z supportedLocales
  static Locale _localeFromCode(String code) {
    switch (code) {
      case 'pl':
        return const Locale('pl', 'PL');
      case 'es':
        return const Locale('es', 'ES');
      case 'en':
      default:
        return const Locale('en', 'GB');
    }
  }

  /// Publiczny setter przyjmujący krótki kod ('en'/'pl'/'es')
  Future<void> setLanguageCode(String code) async {
    final next = _localeFromCode(code);
    // jeśli nic się nie zmienia — wyjdź
    if (next.languageCode == _locale.languageCode && next.countryCode == _locale.countryCode) return;

    _locale = next;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kPrefsLocaleKey, code);
  }

  /// Ewentualnie: bezpośredni setter Locale (np. dla przyszłych rozszerzeń)
  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kPrefsLocaleKey, locale.languageCode);
  }

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(kPrefsLocaleKey);
    if (saved != null && saved.isNotEmpty) {
      _locale = _localeFromCode(saved);
      notifyListeners();
    }
  }
}

