import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/note_provider/note_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/extensions/numeral_form_extension.dart';

class NoteListHeader extends StatelessWidget {
  const NoteListHeader({super.key, required this.title, this.isSearch = false, this.horizontalPadding = 8.0});

  final String title;
  final bool isSearch;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        int counter = isSearch
            ? noteProvider.noteListByKeywordCounter
            : noteProvider.noteListCounter;
        final notesLabel = plForm(
          context,
          count: counter,
          oneKey:  "headers_text.header_note",     // "notatkę"
          fewKey:  "headers_text.header_notes",    // "notatki"
          manyKey: "headers_text.header_notes_s",  // "notatek"
        );
        return Padding(
          padding:
              EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding, horizontal: horizontalPadding),
          child: Row(
            children: [
              PlayAnimationBuilder(
                tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero),
                duration: headerDuration,
                delay: const Duration(milliseconds: 100),
                curve: Curves.easeOut,
                builder: (context, value, child){
                  return Transform.translate(
                    offset: value,
                    child: Text(
                        counter == 0 ? "" : "${context.t("headers_text.header_you_have").capitalizeFirstLetter()} $counter $notesLabel"
,                     // title,
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
