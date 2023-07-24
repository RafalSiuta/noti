import 'package:flutter/material.dart';

import '../../widgets/headers/search_bar.dart';
import '../../widgets/navigators/tab_nav.dart';
import '../note_screen/note_list.dart';
import '../project_screen/project_list.dart';
import '../task_screen/task_list.dart';


class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchBar(),
        Expanded(
            child: TabNav([TaskList(),NoteList(isGrid: true,),ProjectList()])),
      ],
    );
  }
}
