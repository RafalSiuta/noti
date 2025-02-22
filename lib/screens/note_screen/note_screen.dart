import 'package:flutter/material.dart';

import '../../widgets/headers/search_bar.dart';
import 'note_list.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        child: Column(
        children:  [
          SearchInput(),
          Expanded(
            child: NoteList(
              isGrid: true,
            ),
          ),
        ],  ));
  }
}
