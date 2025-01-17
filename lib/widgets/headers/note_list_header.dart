import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../providers/note_provider.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class NoteListHeader extends StatelessWidget {
  const NoteListHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        return Padding(
          padding:
              EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
          child: Row(
            children: [
              PlayAnimationBuilder(
                tween: Tween<double>(begin: 0.9, end: 1.0),
                duration: headerDuration,
                delay: const Duration(milliseconds: 100),
                curve: Curves.easeOut,
                builder: (context, value, child){
                  return Transform.scale(
                    scale: value,
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: SizeInfo.headerSubtitleSize),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  );
                },
              )

            ],
          ),

          // PlayAnimation<double>(
          //   tween: Tween<double>(begin: 0.5, end: 1.0),
          //   duration: const Duration(milliseconds: 300),
          //   delay: const Duration(milliseconds: 200),
          //   curve: Curves.easeOut,
          //   builder: (context, child, value) {
          //     return Transform.scale(
          //       scale: value,
          //       child: Row(
          //         children: [
          //           Text(
          //             title,
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .headline2!
          //                 .copyWith(fontSize: SizeInfo.headerSubtitleSize),
          //             overflow: TextOverflow.ellipsis,
          //             maxLines: 2,
          //           ),
          //           Expanded(
          //             child: DropdownButton<NoteCategory>(
          //               icon: const Icon(Icons.arrow_downward),
          //               iconSize: 24,
          //               elevation: 16,
          //               value: noteProvider.currentNoteCategory,
          //               style: const TextStyle(color: Colors.deepPurple),
          //               underline: Container(
          //                 height: 2,
          //                 color: Colors.deepPurpleAccent,
          //               ),
          //               onChanged: (category) {
          //                 noteProvider.selectNoteCategory(category);
          //               },
          //               items: noteProvider.categoryList
          //                   .map<DropdownMenuItem<NoteCategory>>(
          //                       (NoteCategory value) {
          //                 return DropdownMenuItem<NoteCategory>(
          //                   value: value,
          //                   child: Text(value.name!),
          //                 );
          //               }).toList(),
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   },
          //   // child:
          // ),
        );
      },
    );
  }
}
