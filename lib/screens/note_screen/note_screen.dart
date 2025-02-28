import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/note_search_provider.dart';
import '../../widgets/headers/search_window.dart';
import 'note_list.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        child: Column(
        children:  [
          SearchWindow(searchType: "note",searchProvider: Provider.of<NoteSearchProvider>(context)),
          Expanded(
            child: NoteList(
              isGrid: true,
            ),
          ),
        ],  ));
  }
}
