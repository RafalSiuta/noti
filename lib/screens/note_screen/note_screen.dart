import 'package:flutter/material.dart';

import '../../widgets/headers/search_bar.dart';
import 'note_list.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: const [
            SearchBar(),
            Expanded(
              child: NoteList(
                isGrid: true,
              ),
            ),
          ],
        ));
  }
}
