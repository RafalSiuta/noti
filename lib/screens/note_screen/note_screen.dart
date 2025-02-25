import 'package:flutter/material.dart';
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
          SearchWindow(),
          Expanded(
            child: NoteList(
              isGrid: true,
            ),
          ),
        ],  ));
  }
}
