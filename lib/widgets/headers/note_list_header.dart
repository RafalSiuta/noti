import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/note_provider.dart';
import '../../utils/constans/const_values.dart';
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

        );
      },
    );
  }
}
