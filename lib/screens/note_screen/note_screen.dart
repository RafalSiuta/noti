import 'package:flutter/material.dart';

import 'note_list.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        child: Column(
          children: const [
           // SearchBar(),
            Expanded(
              child: NoteList(
                isGrid: true,
              ),
            ),
          ],
        ));
  }
}
