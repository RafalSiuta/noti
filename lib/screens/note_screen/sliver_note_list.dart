import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:provider/provider.dart';
import '../../providers/note_provider/note_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/note_card.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/text_display/default_text.dart';
import 'note_creator_screen.dart';


class SliverNoteList extends StatelessWidget {
  const SliverNoteList({this.isSearch = false, super.key});
  final bool isSearch;

  @override
  Widget build(BuildContext context) {

    return Consumer<NoteProvider>(
        builder: (context, noteProvider, child) {
            var edgePadding = SizeInfo.edgePadding;
            var columnCount = SizeInfo.gridColumnCount;
            var scaleCard = SizeInfo.scaleCard;
            var  bottomSpacing = SizeInfo.noteListBottomSpacing;
            var noteSpacing = SizeInfo.noteGridSpacing;
            var headerHeight = SizeInfo.sliverHeaderHeight;
            int counter = isSearch
                ? noteProvider.noteListByKeywordCounter
                : noteProvider.noteListCounter;
            final noteList =
            isSearch ? noteProvider.noteListByKeyword : noteProvider.noteList;

            if(noteList.isEmpty){
              return
                SliverPadding(
                padding: EdgeInsets.only(left: edgePadding-2, top: 10, bottom: 10),
                sliver: SliverFillRemaining(
                  child: DefaultText(
                      title:"headers_text.header_no_notes"
                    // title: 'There is no notes',
                  ),
                )

              );
            }else{
              return SliverPadding(
                  padding: EdgeInsets.only(left: edgePadding-2, ),
                  sliver: SliverMainAxisGroup(
                    slivers: [
                      SliverPersistentHeader(
                          pinned: true,
                          delegate: SliverHeader(
                              paddingHorizontal: 8.0,
                              paddingVertical: 5.0,
                              height: headerHeight,
                              // maxHeight: 60,
                              // minHeight: 55,
                              child: SmallHeader(
                                  title:counter == 0 ? "" : "${context.t("headers_text.header_you_have").capitalizeFirstLetter()} $counter ${counter > 1 ? context.t("headers_text.header_notes"):context.t("headers_text.header_note")}"
                                // title: 'You have $counter note${counter > 1 ? 's' : ""}',
                              ))),
                      SliverGrid.count(
                        crossAxisSpacing: noteSpacing,
                        mainAxisSpacing: noteSpacing,
                        crossAxisCount: isSearch == true ? columnCount : 1,
                        childAspectRatio: isSearch == true ? 2.3 / 3 : 2.5 / 2,
                        children:  List.generate(counter, (index) {
                          final list = noteList[index];
                          return AnimationConfiguration.staggeredGrid(
                            columnCount: isSearch == true ? 2 : 1,
                            position: index,
                            duration: headerDuration,
                            child: ScaleAnimation(
                              scale: 1.0,
                              child: FadeInAnimation(
                                  child: Transform.scale(
                                      scale: isSearch == true ? 0.9 : scaleCard,
                                      child: NoteCard(
                                        isGrid: isSearch,
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
                        })
                      )
                    ],
                  )
              );
            }
        }
    );

    }}


