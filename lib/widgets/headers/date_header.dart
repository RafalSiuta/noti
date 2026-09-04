import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../models/date/date_model.dart';
import '../../providers/home_provider/home_provider.dart';
import '../../providers/holidays_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<HomeProvider, HolidaysProvider>(
      builder: (context, homeProvider, holidaysProvider, child) {
        final date = AppLocalizations.of(
          context,
        )!.dateFormat(homeProvider.date, context);
        final holidayTitle = holidayTitleFor(
          context,
          homeProvider.date,
          holidaysProvider,
        );
        final tradingSundayTitle = tradingSundayTitleFor(
          context,
          homeProvider.date,
          holidaysProvider,
        );
        return Padding(
          padding: EdgeInsets.only(
            top: SizeInfo.menuTopMargin,
            bottom: 10.0,
            right: 8.0,
            left: SizeInfo.edgePadding,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: PlayAnimationBuilder(
              tween: Tween<Offset>(
                begin: const Offset(-20.0, 0),
                end: Offset.zero,
              ),
              duration: headerDuration,
              builder: (context, value, child) {
                return Transform.translate(
                  offset: value,
                  child: RichText(
                    textScaler: MediaQuery.textScalerOf(context),
                    text: textSpan(
                      context,
                      date,
                      holidayTitle: holidayTitle,
                      tradingSundayTitle: tradingSundayTitle,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  /// Builds the same content used by [RichText] and by [heightFor]. Keeping it
  /// in one place prevents an added TextSpan from being clipped by the sliver.
  static TextSpan textSpan(
    BuildContext context,
    DateModel date, {
    String? holidayTitle,
    String? tradingSundayTitle,
  }) {
    final textStyle = Theme.of(context).textTheme.headlineLarge;
    final hasDetails = holidayTitle != null || tradingSundayTitle != null;
    return TextSpan(
      text: '${date.weekDay!.capitalizeFirstLetter()}\n',
      style: textStyle?.copyWith(fontSize: SizeInfo.headerTitleSize),
      children: <TextSpan>[
        if (tradingSundayTitle != null)
          TextSpan(
            text: tradingSundayTitle,
            style: textStyle?.copyWith(fontSize: SizeInfo.headerSubtitleSize),
          ),
        TextSpan(
          // Do not leave a trailing newline when there is no holiday: it would
          // be measured as an empty RichText line by TextPainter.
          text: '${date.fullDate}${hasDetails ? '\n' : ''}',
          style: textStyle?.copyWith(fontSize: SizeInfo.headerSubtitleSize),
        ),
        if (holidayTitle != null)
          TextSpan(
            text: '$holidayTitle${tradingSundayTitle == null ? '' : '\n'}',
            style: textStyle?.copyWith(fontSize: SizeInfo.headerSubtitleSize),
          ),

      ],
    );
  }

  /// Returns the exact vertical space needed by [DateHeader]'s RichText and
  /// its vertical padding. It reacts to added lines, wrapping and accessibility
  /// text scaling.
  static double heightFor(
    BuildContext context,
    DateTime selectedDate, {
    String? holidayTitle,
    String? tradingSundayTitle,
  }) {
    final date = AppLocalizations.of(
      context,
    )!.dateFormat(selectedDate, context);
    final horizontalPadding = SizeInfo.edgePadding + 8.0;
    final availableWidth =
        (MediaQuery.sizeOf(context).width - horizontalPadding)
            .clamp(0.0, double.infinity)
            .toDouble();
    final painter = TextPainter(
      text: textSpan(
        context,
        date,
        holidayTitle: holidayTitle,
        tradingSundayTitle: tradingSundayTitle,
      ),
      textDirection: Directionality.of(context),
      textScaler: MediaQuery.textScalerOf(context),
      maxLines: null,
    )..layout(maxWidth: availableWidth);

    return painter.height + SizeInfo.menuTopMargin + 10.0;
  }

  /// Returns the localized title of the first holiday on [selectedDate], or
  /// `null` when the day is not a holiday.
  static String? holidayTitleFor(
    BuildContext context,
    DateTime selectedDate,
    HolidaysProvider holidaysProvider,
  ) {
    final holidays = holidaysProvider.getHolidaysForDay(selectedDate);
    for (final holiday in holidays) {
      if (holiday.category == 'shopping') continue;

      return AppLocalizations.of(
        context,
      )!.localizedValue(holiday.name, fallback: holiday.id);
    }

    return null;
  }

  /// Returns the localized trading Sunday title on [selectedDate], or `null`
  /// when that day has no visible trading Sunday entry.
  static String? tradingSundayTitleFor(
    BuildContext context,
    DateTime selectedDate,
    HolidaysProvider holidaysProvider,
  ) {
    final holidays = holidaysProvider.getHolidaysForDay(selectedDate);
    for (final holiday in holidays) {
      if (holiday.category != 'shopping') continue;

      return AppLocalizations.of(
        context,
      )!.localizedValue(holiday.name, fallback: holiday.id);
    }

    return null;
  }
}
