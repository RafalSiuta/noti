import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/note_provider.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> with TickerProviderStateMixin {
  bool editTextEnable = false;
  TextEditingController keywordVal = TextEditingController();

  late AnimationController _controller;
  late AnimationController _controllerForScale;
  late Animation<double> _fadeAnim;
  late Animation<double> _scaleAnim;

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: headerDuration);

    _controllerForScale = AnimationController(
        vsync: this, duration: headerDuration);

    _fadeAnim = Tween<double>(begin: fadeStartValue, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _scaleAnim = Tween<double>(begin: scaleStartValue, end: 1).animate(
        CurvedAnimation(parent: _controllerForScale, curve: Curves.easeInBack));

    super.initState();
    Future.delayed(const Duration(milliseconds: 200))
        .then((value) => _controller.forward());

    Future.delayed(headerDuration)
        .then((value) => _controllerForScale.forward());
  }

  @override
  void dispose() {

    _controller.dispose();
    _controllerForScale.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        var searchBarFontSize = SizeInfo.headerSubtitleSize;
        var searchIconSize = SizeInfo.searchIconSize;
        var searchBarHeight = SizeInfo.searchBarHeight;
        var topMargin = SizeInfo.menuTopMargin + 3;
        return FadeTransition(
          opacity: _fadeAnim,
          child: ScaleTransition(
            scale: _fadeAnim,
            child: Container(
              key: widget.key,
              width: MediaQuery.of(context).size.width,
              height: searchBarHeight,
              margin: EdgeInsets.only(left: 8.0, top: topMargin, bottom: 8.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
                    offset: const Offset(0.0, 0.0),
                  ),
                  BoxShadow(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    offset: const Offset(0.0, 0.0),
                    spreadRadius: -1.5,
                    blurRadius: 1.5,
                  ),
                ],
              ),
              child: ScaleTransition(
                scale: _scaleAnim,
                child: GestureDetector(
                  onTap: () {
                    editText();
                  },
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
                    cursorColor: Theme.of(context).textTheme.headlineSmall!.color,
                    controller: keywordVal,
                    autofocus: true,
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: searchBarFontSize),
                    decoration: InputDecoration(
                        hintText: 'Search notes...',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                                fontSize: searchBarFontSize, letterSpacing: 1),
                        prefixIcon: ScaleTransition(
                          scale: _scaleAnim,
                          child: FadeTransition(
                            opacity: _scaleAnim,
                            child: IconButton(
                              splashColor: Colors.transparent,
                              onPressed: () {
                                noteProvider.getNoteByKeyword();
                                editText();
                              },
                              icon: Icon(
                                Icons.search,
                                size: searchIconSize,
                                color: Theme.of(context).textTheme.headlineLarge!.color,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
