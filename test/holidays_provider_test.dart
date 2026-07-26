import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:noti/models/holiday.dart';
import 'package:noti/models/holiday_date_rule.dart';
import 'package:noti/providers/holidays_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('HolidayDateRule', () {
    test('resolves Western Easter offsets', () {
      const easterSunday = HolidayDateRule(
        type: 'easter_offset',
        offsetDays: 0,
      );
      const easterMonday = HolidayDateRule(
        type: 'easter_offset',
        offsetDays: 1,
      );

      expect(easterSunday.resolveDate(2026), DateTime(2026, 4, 5));
      expect(easterMonday.resolveDate(2026), DateTime(2026, 4, 6));
    });

    test('resolves first and last weekday in a month', () {
      expect(
        HolidayDateRule.resolveWeekdayInMonth(2026, 5, DateTime.monday, 1),
        DateTime(2026, 5, 4),
      );
      expect(
        HolidayDateRule.resolveWeekdayInMonth(2026, 8, DateTime.monday, -1),
        DateTime(2026, 8, 31),
      );
    });

    test('rejects an invalid fixed date', () {
      const invalidDate = HolidayDateRule(type: 'fixed', month: 2, day: 30);

      expect(invalidDate.resolveDate(2026), isNull);
    });
  });

  test('Holiday localization falls back to English and available text', () {
    const holiday = Holiday(
      id: 'example',
      name: {'en': 'English name', 'pl': 'Polska nazwa'},
      description: {'pl': 'Polski opis'},
      dateRule: HolidayDateRule(type: 'fixed', month: 1, day: 1),
      countries: ['PL'],
      isDayOffByCountry: {'PL': true},
      category: 'public',
      showInCalendar: true,
    );

    expect(holiday.getLocalizedName('de'), 'English name');
    expect(holiday.getLocalizedDescription('de'), 'Polski opis');
    expect(holiday.isDayOffForCountry('pl'), isTrue);
  });

  test('provider loads and filters the asset for Polish locale', () async {
    final provider = HolidaysProvider();
    addTearDown(provider.dispose);

    await provider.loadHolidays(year: 2026, locale: const Locale('pl', 'PL'));

    expect(provider.isLoaded, isTrue);
    expect(provider.selectedCountryCode, 'PL');
    expect(provider.selectedLanguageCode, 'pl');
    expect(provider.filteredHolidays, isNotEmpty);
    expect(
      provider.filteredHolidays.every(
        (holiday) => holiday.isAvailableForCountry('PL'),
      ),
      isTrue,
    );
    expect(provider.hasHoliday(DateTime(2026, 4, 5)), isTrue);
    expect(provider.isDayOff(DateTime(2026, 4, 6)), isTrue);
    expect(provider.getHolidaysForDay(DateTime(2026, 6, 12)), isEmpty);
  });
}
