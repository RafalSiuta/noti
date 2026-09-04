import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/note.dart';
import '../../styles/shapes/note_shape_attachment.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';
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

    var titleFontSize = SizeInfo.noteCardTitle;
    var contentFontSize = SizeInfo.noteCardContent;
    var cardImageSize = SizeInfo.noteCardImageSize;
    var leftPadding = SizeInfo.noteLeftPadding;
    final attachmentWidth = isGrid ? leftPadding - 2 : leftPadding - 6;
    final noteCardClipper = NoteCardShape(
      attachmentWidth: attachmentWidth,
    );

    return GestureDetector(
      onTap: edit,
      child:
      Row(
        children: [
          CsShadow(
            clipper: NoteCardShapeAttachment(),
              shadow: BoxShadow(
                color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.5),
                offset: const Offset(0, 1.5),
                blurRadius: 1.5,
              ),
            child: ClipPath(
              clipper: NoteCardShapeAttachment(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    stops: const [0.0, 1.0],
                    colors: [
                      Theme.of(context).primaryColorLight,
                      Theme.of(context).primaryColor,
                    ],
                  ),
                ),
                width: attachmentWidth,
              ),
            ),
          ),
          Expanded(
            child: CsShadow(
              clipper: NoteCardShape(),
              shadow: BoxShadow(
                color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.5),
                offset: const Offset(0.5, 1.5),
                blurRadius: 1.5,
              ),
              child: ClipPath(
                clipper: NoteCardShape(),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 5.0, top: 5.0, right: isGrid ? 8.0 : 12.0, bottom: 3.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics:NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 3.5,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text(
                                  note.title, //capitalTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                    fontSize: titleFontSize,),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  note.subtitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: contentFontSize, height: 1.5),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                note.description,
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
                              note.image != null && note.image!.isNotEmpty
                                  ? ImageCard(
                                img: note.image!,
                                width: isGrid
                                    ? cardImageSize
                                    : cardImageSize - 10,
                                height: isGrid
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
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                          child: Text(
                            AppLocalizations.of(context)!
                                .dateFormat(note.date,context).fullDate!,
                            // DateFormat('dd MMM yy').format(note.date),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: contentFontSize),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
