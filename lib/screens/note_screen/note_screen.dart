import 'package:flutter/material.dart';
import 'package:noti/screens/note_screen/sliver_note_list.dart';
import 'package:provider/provider.dart';
import 'package:noti/providers/note_provider/note_search_provider.dart';
import '../../widgets/headers/note_list_header.dart';
import '../../widgets/headers/search_window.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
          key: key,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverToBoxAdapter(
              child: SearchWindow(
                key: key,
                searchProvider: Provider.of<NoteSearchProvider>(context),
                searchType: "note",
              ),
            ),
            SliverToBoxAdapter(
              child: NoteListHeader(
                title: "",
                isSearch: true,
              ),
            ),
            SliverNoteList(
              isSearch: true,
            ),


            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.0,
              ),
            )
          ]
      );

  }
}
