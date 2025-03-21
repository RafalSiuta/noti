import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/note_provider/note_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/note_card.dart';
import '../../widgets/headers/note_list_header.dart';
import '../../widgets/text_display/default_text.dart';
import 'note_creator_screen.dart';

class NoteList extends StatelessWidget {
  final bool isGrid;
  const NoteList({super.key, this.isGrid = false});
  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        var columnCount = SizeInfo.gridColumnCount;
        var scaleCard = SizeInfo.scaleCard;
        var  bottomSpacing = SizeInfo.noteListBottomSpacing;
        var noteSpacing = SizeInfo.noteGridSpacing;
        int counter = isGrid
            ? noteProvider.noteListByKeywordCounter
            : noteProvider.noteListCounter;
        final noteList =
            isGrid ? noteProvider.noteListByKeyword : noteProvider.noteList;

        if (noteList.isEmpty) {
          return const DefaultText(
            title: 'No Notes for today',
          );
        } else {
          return Padding(
            padding: EdgeInsets.only(left: 8.0,bottom: bottomSpacing ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NoteListHeader(
                  title: 'You have $counter note${counter > 1 ? "s" : ""}',
                ),
                Expanded(
                  child: AnimationLimiter(
                    child: GridView.count(
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        scrollDirection:
                            isGrid == true ? Axis.vertical : Axis.horizontal,
                        crossAxisSpacing: noteSpacing,
                        shrinkWrap: true,
                        mainAxisSpacing: noteSpacing,
                        crossAxisCount: isGrid == true ? columnCount : 1,
                        childAspectRatio: isGrid == true ? 2.3 / 3 : 2.5 / 2,
                        children: List.generate(counter, (index) {
                          final list = noteList[index];
                          return AnimationConfiguration.staggeredGrid(
                            columnCount: isGrid == true ? 2 : 1,
                            position: index,
                            duration: headerDuration,
                            child: ScaleAnimation(
                              scale: 1.0,
                              child: FadeInAnimation(
                                  child: Transform.scale(
                                      scale: isGrid == true ? 0.9 : scaleCard,
                                      child: NoteCard(
                                        isGrid: isGrid,
                                        edit: () async {
                                          await Navigator.push(
                                              context,
                                              CustomPageRoute(
                                                  child: NoteCreator(
                                                    newNote: list,
                                                    editEnable: false,
                                                  ),
                                                  direction: AxisDirection.up));
                                        },
                                        note: list,
                                      ))),
                            ),
                          );
                        })),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
