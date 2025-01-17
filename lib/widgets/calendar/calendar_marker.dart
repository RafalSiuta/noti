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

    int itemCount = priorityCount.length;  // Liczba unikalnych priorytetów

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
          // Jeden marker - wszystkie rogi zaokrąglone
          borderRadius = BorderRadius.circular(cornerRadius);
        } else if (index == 0) {
          // Pierwszy marker, zaokrąglenie tylko górnych rogów
          borderRadius = BorderRadius.only(topRight: Radius.circular(cornerRadius), topLeft: Radius.circular(cornerRadius));
        } else if (index == priorityCount.length - 1) {
          // Ostatni marker, zaokrąglenie tylko dolnych rogów
          borderRadius = BorderRadius.only(bottomRight: Radius.circular(cornerRadius), bottomLeft: Radius.circular(cornerRadius));
        } else {
          // Środkowy marker, bez zaokrągleń
          borderRadius = BorderRadius.zero;
        }
        // Reszta logiki
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

      // itemBuilder: (context, index){
      //   var markerColor = Theme.of(context).indicatorColor;
      //   var borderRadius = BorderRadius.only(bottomRight:Radius.circular(cornerRadius),bottomLeft: Radius.circular(cornerRadius));
      //   if(index == 1){
      //     markerColor = Theme.of(context).colorScheme.secondaryFixed;
      //     borderRadius = BorderRadius.zero;
      //   }else if(index == 2){
      //     markerColor = Theme.of(context).colorScheme.primaryFixed;
      //     borderRadius = BorderRadius.only(topRight:Radius.circular(cornerRadius),topLeft: Radius.circular(cornerRadius));
      //   }else{
      //     markerColor = Theme.of(context).indicatorColor;
      //   }
      //   return Container(
      //     decoration: BoxDecoration(
      //         shape: BoxShape.rectangle,
      //         color:markerColor,
      //         borderRadius: borderRadius
      //     ),
      //     width: markerRadius,
      //     height: markerRadius,
      //     child: Center(
      //       child: Text('${itemsLength}',//Text('${tasks.length}',//itemsLength
      //           textAlign: TextAlign.center,
      //           style: Theme.of(context)
      //               .textTheme
      //               .displayLarge!
      //               .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
      //     ),
      //   );
      // },

    );
  }
}
// children: [
// Container(
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// color:Theme.of(context).colorScheme.primaryFixed,
// borderRadius: BorderRadius.only(topRight:Radius.circular(cornerRadius),topLeft: Radius.circular(cornerRadius))
// ),
// width: markerRadius,
// height: markerRadius,
// child: Center(
// child: Text('${tasks.length}',
// textAlign: TextAlign.center,
// style: Theme.of(context)
//     .textTheme
//     .displayLarge!
//     .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
// ),
// ),
// Container(
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// color: Theme.of(context).colorScheme.secondaryFixed,
// // borderRadius: BorderRadius.only(bottomRight:Radius.circular(cornerRadius),bottomLeft: Radius.circular(cornerRadius))
// ),
// width: markerRadius,
// height: markerRadius,
// child: Center(
// child: Text('${tasks.length}',
// textAlign: TextAlign.center,
// style: Theme.of(context)
//     .textTheme
//     .displayLarge!
//     .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
// ),
// ),
// Container(
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// color: Theme.of(context).indicatorColor,
// borderRadius: BorderRadius.only(bottomRight:Radius.circular(cornerRadius),bottomLeft: Radius.circular(cornerRadius))
// ),
// width: markerRadius,
// height: markerRadius,
// child: Center(
// child: Text('${tasks.length}',
// textAlign: TextAlign.center,
// style: Theme.of(context)
//     .textTheme
//     .displayLarge!
//     .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
// ),
// ),
//
// ],
// Container(
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// color: Theme.of(context).indicatorColor,
// borderRadius: BorderRadius.all(Radius.circular(4))
// ),
// width: markerRadius,
// height: markerRadius,
// child: Center(
// child: Text('${notes.length}',
// textAlign: TextAlign.center,
// style: Theme.of(context)
//     .textTheme
//     .displayLarge!
//     .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
// ),
// );

