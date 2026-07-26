import 'package:noti/models/holiday_date_rule.dart';

class Holiday {
  const Holiday({
    required this.id,
    required this.name,
    required this.description,
    required this.dateRule,
    required this.countries,
    required this.isDayOffByCountry,
    required this.category,
    required this.showInCalendar,
  });

  final String id;
  final Map<String, String> name;
  final Map<String, String> description;
  final HolidayDateRule dateRule;
  final List<String> countries;
  final Map<String, bool> isDayOffByCountry;
  final String category;
  final bool showInCalendar;

  factory Holiday.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final dateRuleJson = json['date_rule'];
    if (id is! String || id.trim().isEmpty || dateRuleJson is! Map) {
      throw const FormatException('Holiday requires an id and date_rule.');
    }

    Map<String, String> readTranslations(String key) {
      final value = json[key];
      if (value == null) return <String, String>{};
      if (value is! Map) {
        throw FormatException('Holiday "$key" must be an object.');
      }
      return <String, String>{
        for (final entry in value.entries)
          if (entry.key is String && entry.value is String)
            (entry.key as String).toLowerCase(): entry.value as String,
      };
    }

    final countriesJson = json['countries'];
    if (countriesJson is! List) {
      throw const FormatException('Holiday countries must be a list.');
    }
    final countries = countriesJson
        .whereType<String>()
        .map((country) => country.toUpperCase())
        .toList(growable: false);
    if (countries.isEmpty) {
      throw const FormatException('Holiday must have at least one country.');
    }

    final dayOffJson = json['is_day_off_by_country'];
    final dayOff = <String, bool>{};
    if (dayOffJson is Map) {
      for (final entry in dayOffJson.entries) {
        if (entry.key is String && entry.value is bool) {
          dayOff[(entry.key as String).toUpperCase()] = entry.value as bool;
        }
      }
    }

    final category = json['category'];
    final showInCalendar = json['show_in_calendar'];

    return Holiday(
      id: id,
      name: readTranslations('name'),
      description: readTranslations('description'),
      dateRule: HolidayDateRule.fromJson(
        Map<String, dynamic>.from(dateRuleJson),
      ),
      countries: countries,
      isDayOffByCountry: dayOff,
      category: category is String ? category : 'other',
      showInCalendar: showInCalendar is bool ? showInCalendar : true,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'date_rule': dateRule.toJson(),
      'countries': countries,
      'is_day_off_by_country': isDayOffByCountry,
      'category': category,
      'show_in_calendar': showInCalendar,
    };
  }

  String getLocalizedName(String languageCode) {
    return _localizedText(name, languageCode) ?? id;
  }

  String getLocalizedDescription(String languageCode) {
    return _localizedText(description, languageCode) ?? '';
  }

  bool isDayOffForCountry(String countryCode) {
    return isDayOffByCountry[countryCode.toUpperCase()] ?? false;
  }

  bool isAvailableForCountry(String countryCode) {
    return countries.contains(countryCode.toUpperCase());
  }

  String? _localizedText(
    Map<String, String> translations,
    String languageCode,
  ) {
    if (translations.isEmpty) return null;
    final normalizedLanguage = languageCode
        .toLowerCase()
        .split(RegExp('[-_]'))
        .first;
    return translations[normalizedLanguage] ??
        translations['en'] ??
        translations.values.first;
  }
}
