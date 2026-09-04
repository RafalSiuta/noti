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
      const sundayBeforeEaster = HolidayDateRule(
        type: 'easter_offset',
        offsetDays: -7,
      );

      expect(easterSunday.resolveDate(2026), DateTime(2026, 4, 5));
      expect(easterMonday.resolveDate(2026), DateTime(2026, 4, 6));
      expect(sundayBeforeEaster.resolveDate(2026), DateTime(2026, 3, 29));
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

    test('resolves weekdays before a fixed date', () {
      const nearestSundayBeforeChristmasEve = HolidayDateRule(
        type: 'weekday_before_fixed',
        month: 12,
        day: 24,
        weekday: DateTime.sunday,
        ordinal: 1,
      );
      const thirdSundayBeforeChristmasEve = HolidayDateRule(
        type: 'weekday_before_fixed',
        month: 12,
        day: 24,
        weekday: DateTime.sunday,
        ordinal: 3,
      );

      expect(
        nearestSundayBeforeChristmasEve.resolveDate(2026),
        DateTime(2026, 12, 20),
      );
      expect(
        thirdSundayBeforeChristmasEve.resolveDate(2026),
        DateTime(2026, 12, 6),
      );
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
    expect(provider.hasHoliday(DateTime(2026, 11, 1)), isTrue);
    expect(provider.isDayOff(DateTime(2026, 11, 1)), isTrue);
    expect(provider.hasHoliday(DateTime(2026, 11, 11)), isTrue);
    expect(provider.isDayOff(DateTime(2026, 11, 11)), isTrue);
    expect(provider.getHolidaysForDay(DateTime(2026, 6, 12)), isEmpty);
  });

  test(
    'provider marks Polish trading Sundays as calendar observances',
    () async {
      final provider = HolidaysProvider();
      addTearDown(provider.dispose);

      await provider.loadHolidays(year: 2026, locale: const Locale('pl', 'PL'));

      final tradingSundayDates = <DateTime>[
        DateTime(2026, 1, 25),
        DateTime(2026, 3, 29),
        DateTime(2026, 4, 26),
        DateTime(2026, 6, 28),
        DateTime(2026, 8, 30),
        DateTime(2026, 12, 6),
        DateTime(2026, 12, 13),
        DateTime(2026, 12, 20),
      ];

      for (final date in tradingSundayDates) {
        final holidays = provider.getHolidaysForDay(date);

        expect(
          holidays.any((holiday) => holiday.category == 'shopping'),
          isTrue,
          reason: date.toIso8601String(),
        );
        expect(provider.hasHoliday(date), isTrue);
        expect(provider.isDayOff(date), isFalse);
      }
    },
  );
}
