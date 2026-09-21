import 'package:flutter/material.dart';
import 'package:noti/providers/holiday_provider/holidays_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/widgets/headers/sliver_header.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/extensions/numeral_form_extension.dart';
import '../../utils/internationalization/app_localizations.dart';
import '../../utils/internationalization/i18_extension.dart';

class TaskHeader extends StatelessWidget {
  const TaskHeader({super.key, this.isSearch = false});

  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Consumer2<TaskProvider, HolidaysProvider>(builder: (context,taskProvider,holidaysProvider,child){

      int counter = isSearch
          ? taskProvider.taskListByKeywordCounter
          : taskProvider.taskListCounter;
      final tasksLabel = plForm(
        context,
        count: counter,
        oneKey:  "headers_text.header_task",     // "zadanie"
        fewKey:  "headers_text.header_tasks",    // "zadania"
        manyKey: "headers_text.header_tasks_s",  // "zadań"
      );
      final holidays = holidaysProvider.getHolidaysForDay(taskProvider.selDay);
      final holidayName = holidays
          .map(
            (holiday) => AppLocalizations.of(context)!
                .localizedValue(holiday.name, fallback: holiday.id),
          )
          .join('\n');


      return SliverPersistentHeader(
        pinned:true,
        delegate: SliverHeader(
          paddingHorizontal: SizeInfo.edgePadding,
          paddingVertical: 5.0,
          height: counter > 0 && holidayName.isNotEmpty
              ? SizeInfo.sliverHeaderHeight + SizeInfo.headerSubtitleSize
              : SizeInfo.sliverHeaderHeight,
          isRebuild: true,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
              child: PlayAnimationBuilder(
                tween: Tween<Offset>(begin: const Offset(-5.0, 0), end: Offset.zero),
                duration: headerDuration,
                delay: const Duration(milliseconds: 100),
                curve: Curves.easeOut,
                builder: (context, value, child){
                  return Transform.translate(
                    offset: value,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      text:TextSpan(
                        text: counter == 0 ? "" : "${context.t("headers_text.header_you_have").capitalizeFirstLetter()} $counter $tasksLabel",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontSize: SizeInfo.headerSubtitleSize),
                        children: <TextSpan>[
                          TextSpan(
                            text: counter > 0 && holidayName.isNotEmpty
                                ? "\n$holidayName"
                                : "",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                              fontSize: SizeInfo.calendarDaySize,color: Theme.of(context).colorScheme.secondaryFixed),
                          )
                        ]
                      ),


                    ),
                  );
                },
              )
          ),
        ),
      );
    });
  }
}