import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/constants/sets_keys.dart';

class LocaleProvider extends ChangeNotifier with WidgetsBindingObserver {
  LocaleProvider() {
    WidgetsBinding.instance.addObserver(this);

    final device = WidgetsBinding.instance.platformDispatcher.locale;
    _locale = _normalizeToSupported(device);
    _hasUserChoice = false;

    _init();
  }

  Locale get locale => _locale;
  bool get hasUserChoice => _hasUserChoice;
  String get code => _locale.languageCode;
  List<Locale> get supportedLocales => _supported;

  @override
  void didChangeLocales(List<Locale>? locales) {
    if (_hasUserChoice || locales == null || locales.isEmpty) return;

    final next = _normalizeToSupported(locales.first);
    if (next == _locale) return;

    _locale = next;
    notifyListeners();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> setLanguageCode(String code) async {
    final next = _localeFromCode(code);
    await _applyUserChoice(next, persistTag: _toTag(next));
  }

  Future<void> setLocale(Locale locale) async {
    final next = _normalizeToSupported(locale);
    await _applyUserChoice(next, persistTag: _toTag(next));
  }

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

  Locale _locale = const Locale('en', 'GB');
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
      final parsed = _fromTag(saved) ?? _localeFromCode(saved);
      final next = _normalizeToSupported(parsed);
      _hasUserChoice = true;
      if (next != _locale) {
        _locale = next;
        notifyListeners();
      }
    } else {
      _hasUserChoice = false;
    }
  }

  Future<void> _applyUserChoice(
    Locale next, {
    required String persistTag,
  }) async {
    if (next == _locale && _hasUserChoice) return;
    _locale = next;
    _hasUserChoice = true;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kPrefsLocaleKey, persistTag);
  }

  static Locale _normalizeToSupported(Locale device) {
    for (final l in _supported) {
      if (l.languageCode == device.languageCode) return l;
    }
    return const Locale('en', 'GB');
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
    final parts = tag.split('-');
    if (parts.isEmpty) return null;
    if (parts.length == 1) return Locale(parts[0]);
    return Locale(parts[0], parts[1]);
  }
}
