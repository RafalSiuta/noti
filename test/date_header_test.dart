import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:noti/providers/holidays_provider.dart';
import 'package:noti/utils/internationalization/app_localizations.dart';
import 'package:noti/widgets/headers/date_header.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('separates trading Sunday title from holiday title', (
    tester,
  ) async {
    final provider = HolidaysProvider();
    addTearDown(provider.dispose);
    await provider.loadHolidays(year: 2026, locale: const Locale('pl', 'PL'));

    late BuildContext appContext;
    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('pl', 'PL'),
        supportedLocales: const [Locale('pl', 'PL')],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: Builder(
          builder: (context) {
            appContext = context;
            return const SizedBox();
          },
        ),
      ),
    );
    await tester.pump();

    final selectedDate = DateTime(2026, 12, 6);
    expect(
      DateHeader.holidayTitleFor(appContext, selectedDate, provider),
      isNull,
    );
    expect(
      DateHeader.tradingSundayTitleFor(appContext, selectedDate, provider),
      'Niedziela handlowa',
    );

    await tester.pumpWidget(const SizedBox());
  });
}
