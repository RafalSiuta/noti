import 'package:flutter/material.dart';

class CustomTextSelectionToolbar extends StatelessWidget {
  final EditableTextState editableTextState;

  const CustomTextSelectionToolbar({super.key, required this.editableTextState});

  @override
  Widget build(BuildContext context) {
    return TextSelectionToolbar(
      anchorAbove: const Offset(5.0, 2.0),
      anchorBelow: const Offset(5.0, -2.0),
      children: [
        TextSelectionToolbarTextButton(
          padding: const EdgeInsets.all(5.0),
          child: Text('copy', style: Theme.of(context).textTheme.bodyMedium),
          onPressed: () {
            editableTextState.copySelection(SelectionChangedCause.toolbar);
          },
        ),
        TextSelectionToolbarTextButton(
          padding: const EdgeInsets.all(5.0),
          child: Text('select all', style: Theme.of(context).textTheme.bodyMedium),
          onPressed: () {
            editableTextState.selectAll(SelectionChangedCause.toolbar);
          },
        ),
        TextSelectionToolbarTextButton(
          padding: const EdgeInsets.all(5.0),
          child: Text('paste', style: Theme.of(context).textTheme.bodyMedium),
          onPressed: () {
            editableTextState.pasteText(SelectionChangedCause.toolbar);
          },
        ),
      ],
    );
  }
}
