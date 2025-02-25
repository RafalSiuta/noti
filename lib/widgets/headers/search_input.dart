import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/dimensions/size_info.dart';
import '../tooltip/custom_text_toolbar.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({this.isExpanded = true, required this.searchInputController,required this.searchFocusNode, required this.onEditingComplete, required this.onChanged, required this.suffixIcon, this.title = "", super.key});
  final bool isExpanded;
  final TextEditingController searchInputController;
  final FocusNode searchFocusNode;
  final VoidCallback onEditingComplete;
  final Function(String) onChanged;
  final Widget suffixIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    var radius = 8.0;
    var searchBarFontSize = SizeInfo.headerSubtitleSize;
    var searchBarHeight = SizeInfo.searchBarHeight;
    BorderRadius searchBarBorderRadius = BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius), bottomLeft: isExpanded ? Radius.circular(.0) : Radius.circular(radius),  bottomRight: isExpanded ? Radius.circular(.0) : Radius.circular(radius));
    return  Container(
      key: key,
      width: MediaQuery.of(context).size.width,
      height: searchBarHeight,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: searchBarBorderRadius,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).unselectedWidgetColor.withValues(alpha:0.5),
            offset: const Offset(0.0, 0.0),
          ),
          BoxShadow(
            color: Theme.of(context).scaffoldBackgroundColor,
            offset: const Offset(0.0, 0.0),
            spreadRadius: -1.0,
            blurRadius: 1.0,
          ),
        ],
      ),
      child: TextField(
        maxLines: 1,
        cursorWidth: 1,
        keyboardType: TextInputType.text,
        controller: searchInputController,
        enabled: true,
        focusNode: searchFocusNode,
        autofocus: false,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        contextMenuBuilder: (context, editableTextState) {
          return CustomTextSelectionToolbar(
              key: key, editableTextState: editableTextState);
        },
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        cursorColor: Theme.of(context).indicatorColor,
        textAlign: TextAlign.left,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontSize: searchBarFontSize),
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: title,
            hintMaxLines: 1,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: searchBarFontSize, letterSpacing: 1),
            suffixIcon: suffixIcon,
            suffixIconConstraints: BoxConstraints(maxWidth: 40, maxHeight: 40)),
      ),
    );
  }
}
