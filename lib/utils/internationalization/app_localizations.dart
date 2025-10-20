import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../models/date/date_model.dart';
import '../../models/policy_model/policy_model.dart';

class AppLocalizations {
  AppLocalizations({required this.locale});

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  Map<String, dynamic> _localizedMap = {};

  Future<bool> load() async {
    String jsonString;

    // spróbuj pełnego taga (np. en_GB -> en-GB), potem język, a na końcu en
    final candidates = <String>[
      if (locale.countryCode != null && locale.countryCode!.isNotEmpty)
        'lang/${locale.languageCode}_${locale.countryCode}.json',
      'lang/${locale.languageCode}.json',
      'lang/en.json',
    ];

    Object? lastError;
    for (final path in candidates) {
      try {
        jsonString = await rootBundle.loadString(path);
        _localizedMap = json.decode(jsonString) as Map<String, dynamic>;
        return true;
      } catch (e) {
        lastError = e;
        // próbuj dalej
      }
    }
    // Jeśli nic nie weszło — rzuć czytelnym błędem
    throw FlutterError('Unable to load any localization asset. Last error: $lastError');
  }

  /// Tłumaczenie z obsługą zagnieżdżeń: "headers_text.header_policy"
  String tr(String path, {String? fallback}) {
    if (path.isEmpty) return fallback ?? '';
    final parts = path.split('.');
    dynamic current = _localizedMap;

    for (final p in parts) {
      if (current is Map && current.containsKey(p)) {
        current = current[p];
      } else {
        return fallback ?? ''; // lub `path` jeśli chcesz widzieć brakujące klucze
      }
    }
    if (current is String) return current;
    return fallback ?? current?.toString() ?? '';
  }

  List<PolicyItem> policyRules() {
    final raw = _localizedMap['policy_rules'];
    if (raw is! List) return const [];

    return raw.map<PolicyItem>((e) {
      final m = (e as Map).cast<String, dynamic>();
      return PolicyItem(
        id: (m['policy_id'] ?? '').toString(),
        title: (m['policy_title'] ?? '').toString(),
        description: (m['policy_description'] ?? '').toString(),
      );
    }).toList(growable: false);
  }


  // alias zgodny z Twoim wywołaniem
  String translate(String key) => tr(key);

  DateModel dateFormat(DateTime date, BuildContext context) {
    final tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    final model = DateModel();
    model.shortDate     = DateFormat('dd MMM ', tag).format(date);
    model.fullDate      = DateFormat('dd MMM yyyy', tag).format(date);
    model.weekDay       = DateFormat('EEEE', tag).format(date);
    model.monthYear     = DateFormat('MMMM yy', tag).format(date);
    model.shortWeekday  = DateFormat('E', tag).format(date);
    return model;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'pl', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale: locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

