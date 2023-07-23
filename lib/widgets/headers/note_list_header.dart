
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/dimensions/size_info.dart';

class NoteListHeader extends StatelessWidget {
  const NoteListHeader({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: SizeInfo.headerSubtitleSize),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
