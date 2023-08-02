import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/note_provider.dart';
import '../../utils/dimensions/size_info.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with TickerProviderStateMixin {
  bool editTextEnable = false;
  TextEditingController keywordVal = TextEditingController();

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        var searchBarFontSize = SizeInfo.headerSubtitleSize;
        var searchIconSize = SizeInfo.searchIconSize;
        var searchBarHeight = SizeInfo.searchBarHeight;
        var topMargin = SizeInfo.menuTopMargin;
        return PlayAnimationBuilder<Offset>(
          tween: Tween<Offset>(
              begin: const Offset(-20.0, 0), end: Offset.zero),
          duration: const Duration(milliseconds: 300),
          delay: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          builder: (context, value, child){
            return Container(
              key: widget.key,
              width: MediaQuery.of(context).size.width,
              height: searchBarHeight,
              margin: EdgeInsets.only(left: 8.0, top: topMargin, bottom: 5.0),
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context).unselectedWidgetColor.withOpacity(0.6),
                    offset: const Offset(0.0, 0.0),
                  ),
                  BoxShadow(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    offset: const Offset(0.0, 0.0),
                    spreadRadius: -2.0,
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  editText();
                },
                child: Transform.translate(
                  offset: value,
                  child: TextField(

                    maxLines: 1,
                    cursorWidth: 1,
                    keyboardType: TextInputType.text,
                    enabled: editTextEnable,
                    onChanged: (newText) {
                      setState(() {
                        noteProvider.keyword = newText;
                        keywordVal.selection = TextSelection.fromPosition(
                            TextPosition(offset: keywordVal.text.length));
                      });
                      noteProvider.getNoteByKeyword();
                    },
                    onEditingComplete: () {
                      editText();
                    },
                    cursorColor: Theme.of(context).textTheme.headlineLarge!.color,
                    controller: keywordVal,
                    autofocus: true,
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: searchBarFontSize),
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        focusedBorder: InputBorder.none,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                            fontSize: searchBarFontSize, letterSpacing: 0),
                        prefixIcon: IconButton(
                          splashColor: Colors.transparent,
                          onPressed: () {
                            noteProvider.getNoteByKeyword();
                            editText();
                          },
                          icon: Icon(
                            Icons.search,
                            size: searchIconSize,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        )),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
