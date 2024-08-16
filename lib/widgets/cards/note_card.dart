
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/note.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../utils/dimensions/size_info.dart';
import '../shapes/note_shape.dart';
import 'image_card.dart';
import 'package:csshadow/csshadow.dart';

class NoteCard extends StatelessWidget {
  final Function()? edit;
  final Note note;
  final bool isGrid;

  const NoteCard(
      {super.key, required this.edit, required this.note, this.isGrid = false});
  @override
  Widget build(BuildContext context) {
    CategoryIconsList categoryIcons = CategoryIconsList();
    var titleFontSize = SizeInfo.noteCardTitle;
    var contentFontSize = SizeInfo.noteCardContent;
    var cardImageSize = SizeInfo.noteCardImageSize;
    var leftPadding = SizeInfo.noteLeftPadding;
    return GestureDetector(
      onTap: edit,
      child: CsShadow(
        shadow: BoxShadow(
          color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
          offset: const Offset(0.5, 0.5),
          blurRadius: 0.1,
        ),
        clipper: NoteCardShape(),
        child: ClipPath(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                width: isGrid ? leftPadding : leftPadding - 8,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                      left: 2, top: isGrid ? 12 : 8.0, right: 5.0, bottom: 3.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(
                              //   categoryIcons.iconsList[note.icon!],
                              //   size: titleFontSize,
                              //   color: Theme.of(context)
                              //       .textTheme
                              //       .displayMedium!
                              //       .color,
                              // ),
                              // const SizedBox(
                              //   height: 5.0,
                              // ),
                              Text(
                                note.title!, //capitalTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: titleFontSize,),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                note.subtitle!,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(fontSize: contentFontSize, height: 1.5),
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                note.description!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: contentFontSize, height:1.5),
                                maxLines: note.image != null && note.image != []
                                    ? 5
                                    : 10,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              note.image != null && note.image!.isNotEmpty
                                  ? ImageCard(
                                      img: note.image!,
                                      size: isGrid
                                          ? cardImageSize
                                          : cardImageSize - 10,
                                      cornerRadius: 8,
                                    )
                                  : Container(),
                              const SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            DateFormat('dd MMM yy').format(note.date),
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: contentFontSize),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          clipper: NoteCardShape(),
          clipBehavior: Clip.hardEdge,
        ),
      ),
    );
  }
}
