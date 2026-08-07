import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/models/holiday.dart';

class HolidaysProvider extends ChangeNotifier {
  static const _assetPath = 'assets/data/holidays/holidays.json';

  List<Holiday> _allHolidays = <Holiday>[];
  List<Holiday> _filteredHolidays = <Holiday>[];
  Map<DateTime, List<Holiday>> _holidaysByDate = <DateTime, List<Holiday>>{};
  bool _isLoaded = false;
  String? _selectedCountryCode;
  String? _selectedLanguageCode;
  int? _selectedYear;

  List<Holiday> get allHolidays => List.unmodifiable(_allHolidays);
  List<Holiday> get filteredHolidays => List.unmodifiable(_filteredHolidays);
  Map<DateTime, List<Holiday>> get holidaysByDate =>
      Map.unmodifiable(_holidaysByDate);
  bool get isLoaded => _isLoaded;
  String? get selectedCountryCode => _selectedCountryCode;
  String? get selectedLanguageCode => _selectedLanguageCode;
  int? get selectedYear => _selectedYear;

  Future<void> init() async {
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    await loadHolidays(year: DateTime.now().year, locale: locale);
    printHolidaysForSelectedLocale();
  }

  Future<void> updateForLocale(Locale locale) async {
    final countryCode = _normalizeCountryCode(locale.countryCode);
    final languageCode = _normalizeLanguageCode(locale.languageCode);
    if (_isLoaded &&
        _selectedCountryCode == countryCode &&
        _selectedLanguageCode == languageCode) {
      return;
    }

    await loadHolidays(
      year: _selectedYear ?? DateTime.now().year,
      locale: locale,
    );
    printHolidaysForSelectedLocale();
  }

  Future<void> loadHolidays({
    required int year,
    required Locale locale,
    String? overrideCountryCode,
    String? overrideLanguageCode,
  }) async {
    final countryCode = _normalizeCountryCode(
      overrideCountryCode ?? locale.countryCode,
    );
    final languageCode = _normalizeLanguageCode(
      overrideLanguageCode ?? locale.languageCode,
    );

    _isLoaded = false;
    _selectedCountryCode = countryCode;
    _selectedLanguageCode = languageCode;
    _selectedYear = year;

    final parsedHolidays = <Holiday>[];
    try {
      final source = await rootBundle.loadString(_assetPath);
      final decoded = jsonDecode(source);
      if (decoded is! List) {
        throw const FormatException('Holiday JSON root must be a list.');
      }

      for (var index = 0; index < decoded.length; index++) {
        final item = decoded[index];
        if (item is! Map) {
          debugPrint('[Holidays] Skipped entry $index: expected an object.');
          continue;
        }
        try {
          parsedHolidays.add(Holiday.fromJson(Map<String, dynamic>.from(item)));
        } on Object catch (error) {
          debugPrint('[Holidays] Skipped entry $index: $error');
        }
      }
    } on Object catch (error) {
      debugPrint('[Holidays] Could not load $_assetPath: $error');
    }

    final datedHolidays = <({DateTime date, Holiday holiday})>[];
    for (final holiday in parsedHolidays) {
      if (!holiday.showInCalendar ||
          !holiday.isAvailableForCountry(countryCode)) {
        continue;
      }
      final resolvedDate = holiday.dateRule.resolveDate(year);
      if (resolvedDate == null) {
        debugPrint('[Holidays] Could not resolve date for ${holiday.id}.');
        continue;
      }
      datedHolidays.add((
        date: DateTime(resolvedDate.year, resolvedDate.month, resolvedDate.day),
        holiday: holiday,
      ));
    }
    datedHolidays.sort((a, b) {
      final dateComparison = a.date.compareTo(b.date);
      if (dateComparison != 0) return dateComparison;
      final aDayOff = a.holiday.isDayOffForCountry(countryCode);
      final bDayOff = b.holiday.isDayOffForCountry(countryCode);
      if (aDayOff != bDayOff) return aDayOff ? -1 : 1;
      return a.holiday
          .getLocalizedName(languageCode)
          .compareTo(b.holiday.getLocalizedName(languageCode));
    });

    final byDate = <DateTime, List<Holiday>>{};
    for (final item in datedHolidays) {
      byDate.putIfAbsent(item.date, () => <Holiday>[]).add(item.holiday);
    }

    _allHolidays = parsedHolidays;
    _filteredHolidays = datedHolidays
        .map((item) => item.holiday)
        .toList(growable: false);
    _holidaysByDate = byDate;
    _isLoaded = true;
    notifyListeners();
  }

  List<Holiday> getHolidaysForDay(DateTime day) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return List.unmodifiable(
      _holidaysByDate[normalizedDay] ?? const <Holiday>[],
    );
  }

  bool hasHoliday(DateTime day) => getHolidaysForDay(day).isNotEmpty;

  bool isDayOff(DateTime day) {
    final countryCode = _selectedCountryCode;
    if (countryCode == null) return false;
    return getHolidaysForDay(
      day,
    ).any((holiday) => holiday.isDayOffForCountry(countryCode));
  }

  Future<void> reloadForYear(int year) async {
    final countryCode = _selectedCountryCode;
    final languageCode = _selectedLanguageCode;
    if (countryCode == null || languageCode == null) return;
    await loadHolidays(
      year: year,
      locale: Locale(languageCode, countryCode),
      overrideCountryCode: countryCode,
      overrideLanguageCode: languageCode,
    );
  }

  void printHolidaysForSelectedLocale() {
    final countryCode = _selectedCountryCode;
    final languageCode = _selectedLanguageCode;
    final year = _selectedYear;
    if (!_isLoaded ||
        countryCode == null ||
        languageCode == null ||
        year == null) {
      debugPrint('[Holidays] Holidays are not loaded yet.');
      return;
    }

    debugPrint(
      '[Holidays] $countryCode/$languageCode, $year: '
      '${_filteredHolidays.length} holidays',
    );
    for (final entry in _holidaysByDate.entries) {
      for (final holiday in entry.value) {
        final date = entry.key.toIso8601String().split('T').first;
        final dayOff = holiday.isDayOffForCountry(countryCode)
            ? 'day off'
            : 'observance';
        debugPrint(
          '[Holidays] $date | '
          '${holiday.getLocalizedName(languageCode)} | $dayOff',
        );
      }
    }
  }

  void clear() {
    _allHolidays = <Holiday>[];
    _filteredHolidays = <Holiday>[];
    _holidaysByDate = <DateTime, List<Holiday>>{};
    _isLoaded = false;
    _selectedCountryCode = null;
    _selectedLanguageCode = null;
    _selectedYear = null;
    notifyListeners();
  }

  String _normalizeCountryCode(String? countryCode) {
    final normalized = countryCode?.trim().toUpperCase();
    return normalized == null || normalized.isEmpty ? 'PL' : normalized;
  }

  String _normalizeLanguageCode(String? languageCode) {
    final normalized = languageCode
        ?.trim()
        .toLowerCase()
        .split(RegExp('[-_]'))
        .first;
    return normalized == null || normalized.isEmpty ? 'en' : normalized;
  }
}
