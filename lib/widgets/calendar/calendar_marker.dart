import 'package:flutter/material.dart';
import '../../models/db_model/task.dart';
import '../../utils/colors/priority_color.dart';
import '../responsive/column_row_builder.dart';

class CalendarMarker extends StatelessWidget {

  final double markerRadius;
  final double markerFontSize;
  final List<Task> tasks;


  const CalendarMarker({this.markerRadius = 5.0, this.markerFontSize = 3.0, required this.tasks, super.key});

  @override
  Widget build(BuildContext context) {
    double cornerRadius = 3.0;
    Map<int, int> priorityCount = {};
    for (Task task in tasks) {
      priorityCount[task.priority] = (priorityCount[task.priority] ?? 0) + 1;
    }

    int itemCount = priorityCount.length;

    return ColumnBuilder(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        int priority = priorityCount.keys.elementAt(index);
        int count = priorityCount[priority]!;
           var markerColor = priorityColor(context,priority);

        BorderRadius borderRadius;

        if (priorityCount.length == 1) {

          borderRadius = BorderRadius.circular(cornerRadius);
        } else if (index == 0) {

          borderRadius = BorderRadius.only(topRight: Radius.circular(cornerRadius), topLeft: Radius.circular(cornerRadius));
        } else if (index == priorityCount.length - 1) {

          borderRadius = BorderRadius.only(bottomRight: Radius.circular(cornerRadius), bottomLeft: Radius.circular(cornerRadius));
        } else {

          borderRadius = BorderRadius.zero;
        }

        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: markerColor,
              borderRadius: borderRadius
          ),
          width: markerRadius,
          height: markerRadius,
          child: Center(
            child: Text('$count',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: markerFontSize,fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
          ),
        );
      },

    );
  }
}

