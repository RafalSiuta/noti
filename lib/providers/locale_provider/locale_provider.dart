import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kPrefsLocaleKey = 'app_locale_code'; // przechowujemy BCP-47, np. 'pl-PL', 'en-GB', 'es-ES'

class LocaleProvider extends ChangeNotifier {
  LocaleProvider() {
    // // natychmiast ustaw język urządzenia, żeby nie było "mrugnięcia"
    // final device = WidgetsBinding.instance.platformDispatcher.locale;
    // _locale = _normalizeToSupported(device);
    // _hasUserChoice = false;
    //
    // _init(); // potem asynchronicznie nadpisz z prefs (jeśli jest)
  }

  // --- public API ---
  Locale get locale => _locale;
  bool get hasUserChoice => _hasUserChoice;
  String get code => _locale.languageCode; // do radiobuttonów ('pl'/'en'/'es')
  List<Locale> get supportedLocales => _supported;

  /// Ustaw ręcznie po 'en'/'pl'/'es'
  Future<void> setLanguageCode(String code) async {
    final next = _localeFromCode(code);
    await _applyUserChoice(next, persistTag: _toTag(next));
  }

  /// Ustaw ręcznie konkretny Locale (np. przyszłe warianty regionalne)
  Future<void> setLocale(Locale locale) async {
    final next = _normalizeToSupported(locale);
    await _applyUserChoice(next, persistTag: _toTag(next));
  }

  /// Wróć do języka urządzenia (czyści preferencję użytkownika)
  Future<void> resetToSystemLanguage() async {
    final device = WidgetsBinding.instance.platformDispatcher.locale;
    final next = _normalizeToSupported(device);

    _hasUserChoice = false;
    if (next != _locale) {
      _locale = next;
      notifyListeners();
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(kPrefsLocaleKey);
  }

  // --- private ---

  Locale _locale = const Locale('en', 'GB'); // i tak nadpisujemy w konstruktorze
  bool _hasUserChoice = false;

  static const _supported = <Locale>[
    Locale('pl', 'PL'),
    Locale('en', 'GB'),
    Locale('es', 'ES'),
  ];

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(kPrefsLocaleKey);

    if (saved != null && saved.isNotEmpty) {
      // akceptuj zarówno 'en', jak i 'en-GB'
      final parsed = _fromTag(saved) ?? _localeFromCode(saved);
      final next = _normalizeToSupported(parsed);
      _hasUserChoice = true;
      if (next != _locale) {
        _locale = next;
        notifyListeners();
      }
    } else {
      // brak wyboru użytkownika — zostaje, co ustawiliśmy z urządzenia
      _hasUserChoice = false;
      // tu zazwyczaj nic nie zmieniamy, więc bez notify
    }
  }

  Future<void> _applyUserChoice(Locale next, {required String persistTag}) async {
    if (next == _locale && _hasUserChoice) return; // bez zbędnych rebuildów
    _locale = next;
    _hasUserChoice = true;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kPrefsLocaleKey, persistTag);
  }

  static Locale _normalizeToSupported(Locale device) {
    // dopasuj po languageCode (pomijamy country, chyba że chcesz rozbudować)
    for (final l in _supported) {
      if (l.languageCode == device.languageCode) return l;
    }
    return const Locale('en', 'GB'); // globalny fallback
  }

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

  static String _toTag(Locale l) {
    final cc = l.countryCode;
    return cc == null || cc.isEmpty ? l.languageCode : '${l.languageCode}-$cc';
  }

  static Locale? _fromTag(String tag) {
    // akceptuje 'en' lub 'en-GB'
    final parts = tag.split('-');
    if (parts.isEmpty) return null;
    if (parts.length == 1) return Locale(parts[0]);
    return Locale(parts[0], parts[1]);
  }
}
