import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/holidays_provider.dart';
import '../../providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({super.key, required this.title, this.isNotes = false});

  final String title;
  final bool isNotes;

  @override
  Widget build(BuildContext context) {
    return Consumer2<TaskProvider, HolidaysProvider>(builder: (context,taskProvider,holidaysProvider,child) {
      final holidays = holidaysProvider.getHolidaysForDay(taskProvider.selDay);
      String holidayName = '';
      if (!isNotes && holidays.isNotEmpty) {
        holidayName = holidays
            .map(
              (holiday) => AppLocalizations.of(context)!
                  .localizedValue(holiday.name, fallback: holiday.id),
            )
            .join('\n');
      }
      return Center(
          child: PlayAnimationBuilder(
            tween: Tween<double>(begin: 0.8, end: 1.0),
            duration: headerDuration,
            delay: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RichText(
                   text:TextSpan(
                     text: context.t(title).capitalizeFirstLetter(),
                     children: <TextSpan>[
                       TextSpan(
                         text: "\n$holidayName",//.isNotEmpty ? "\n$holidayName" : "",
                         style: Theme.of(context)
                             .textTheme
                             .headlineMedium!
                             .copyWith(
                             fontSize: SizeInfo.calendarDaySize,color:  Theme.of(context).colorScheme.secondaryFixed),
                       )
                     ],
                     style: Theme
                         .of(context)
                         .textTheme
                         .bodyMedium!
                         .copyWith(
                         fontSize: SizeInfo.headerSubtitleSize,
                         letterSpacing: 1),
                   ),
                    //title,
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )
      );
    });
  }
}
