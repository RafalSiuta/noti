import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';

import '../../models/db_model/note.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../models/menu_model/nav_model.dart';
import '../../providers/note_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/icon_button.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/image_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/dialogs/gallery_sheet.dart';
import '../../widgets/navigators/creator_nav.dart';

class NoteCreator extends StatefulWidget {
  final Note newNote;
  final bool editEnable;
  const NoteCreator({super.key, required this.newNote, this.editEnable = true});

  @override
  _NoteCreatorState createState() => _NoteCreatorState();
}

class _NoteCreatorState extends State<NoteCreator>
    with TickerProviderStateMixin {
  bool editTextEnable = false;
  bool keepInMind = true;
  late AnimationController? _menuSlideInController;
  late Animation<Offset> _menuAnimation;
  DateTime currentDate = DateTime.now();

  TextEditingController titleVal = TextEditingController();
  TextEditingController subtitleVal = TextEditingController();
  TextEditingController descVal = TextEditingController();

  CategoryIconsList categoryIcons = CategoryIconsList();

  FocusNode titleNode = FocusNode();
  FocusNode subtitleNode = FocusNode();
  FocusNode descriptionNode = FocusNode();

  int selectedIndex = 0;

  int selectedCategory = 0;

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
    });
  }

  void fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  _pickIcon(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return
          StatefulBuilder(builder: (ctx,setDialCtx){
            var switchIconSize = SizeInfo.dialogIconSize;
            return CustomDial(
                title: 'Note icon',
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 250,
                  child: GridView.count(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    crossAxisSpacing: 0.0,
                    shrinkWrap: true,
                    mainAxisSpacing: 0.0,
                    crossAxisCount: 5,
                    children: List.generate(
                      categoryIcons.iconsList.length,
                          (index) =>
                              IconButtonWithText(
                              iconData: categoryIcons.iconsList[index].icon,
                              iconName: categoryIcons.iconsList[index].name,
                              iconSize: switchIconSize,
                              value: widget.newNote.icon == index ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  setDialCtx((){
                                    widget.newNote.icon = index;
                                  });

                                });
                              }),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       widget.newNote.icon = index;
                      //     });
                      //   },
                      //   icon:
                      //   Icon(
                      //     categoryIcons.iconsList[index],
                      //     color: categoryIcons.iconsList.length == index
                      //         ? Theme.of(context).indicatorColor
                      //         : Theme.of(context).unselectedWidgetColor,
                      //     size: 13,
                      //   ),
                      // )
                    ),
                  ),
                ));
          });

        });
  }

  _bottomDrawer(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => GallerySheet(
              pickImage: setImage,
            ));
  }


  selectOptions(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (selectedIndex) {
    }
  }

  setImage(Uint8List img) {
    setState(() {
      // img.file.then((value) {
      //   if (value != null) {
      //      return widget.newNote.image = value.readAsBytesSync();
      //   }
      // });
      widget.newNote.image = img;
    });
  }

  List<NavModel> noteNavTitles = [
    // NavModel(
    //   icon: FontAwesomeIcons.list,
    // ),
    NavModel(
      icon: Icons.save,
    ),
    NavModel(
      icon: Icons.edit,
    ),
    NavModel(
      icon: Icons.image,
    ),
    NavModel(
      icon: Icons.delete,
    ),
    NavModel(
      icon: Icons.arrow_back,
    ),
  ];

  @override
  void initState() {
    selectedCategory = widget.newNote.fk!;
    _menuSlideInController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));

    _menuAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _menuSlideInController!, curve: Curves.ease));
    editTextEnable = widget.editEnable;
    titleVal.text = widget.newNote.title;
    subtitleVal.text = widget.newNote.subtitle;
    descVal.text = widget.newNote.description;
    keepInMind = widget.newNote.keep;

    super.initState();
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => _menuSlideInController!.forward());
  }

  @override
  void dispose() {
    titleNode.dispose();
    subtitleNode.dispose();
    descriptionNode.dispose();
    _menuSlideInController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var topMargin = SizeInfo.topMargin;
    var titleTextSize = SizeInfo.headerSubtitleSize;
    var helperTextSize = SizeInfo.helpTextSize;
    var navIconSize = SizeInfo.leadingAndTrailingIconSize;
    var verticalPadding = SizeInfo.verticalTextPadding;
    var descriptionFontSize = SizeInfo.taskCreatorDescription;
    int maxTitleLength = 30;
    int maxSubtitleLength = 30;
    int maxDescriptionLength = 4000;
    double inputHeight = 50;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).cardColor,
        body: SafeArea(
          child:
              Consumer<NoteProvider>(builder: (context, noteProvider, child) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Theme.of(context).cardColor,
                        automaticallyImplyLeading: false,
                        elevation: 0,
                        floating: true,
                        snap: true,
                        pinned: true,
                        collapsedHeight: 100,
                        expandedHeight: 110,
                        flexibleSpace: Padding(
                          padding: EdgeInsets.only(top: topMargin, right: 8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: IntrinsicHeight(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children:
                                      AnimationConfiguration.toStaggeredList(
                                    duration: const Duration(milliseconds: 300),
                                    delay: const Duration(milliseconds: 200),
                                    childAnimationBuilder: (widget) =>
                                        ScaleAnimation(
                                      scale: 0.5,
                                      child: FadeInAnimation(
                                        child: widget,
                                      ),
                                    ),
                                    children: [
                                      IconButton(
                                        padding: const EdgeInsets.all(.0),
                                        icon: Icon(
                                          categoryIcons.iconsList[
                                              widget.newNote.icon ?? 1].icon,
                                          size: navIconSize,
                                          color: Theme.of(context).indicatorColor,
                                        ),
                                        onPressed: () {
                                          _pickIcon(context);
                                        },
                                      ),
                                      const VerticalDivider(),
                                      Text(
                                        DateFormat('dd MMM yy')
                                            .format(widget.newNote.date),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                fontSize: descriptionFontSize),
                                      ),
                                      const VerticalDivider(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 24),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'On dash',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                      fontSize: helperTextSize),
                                            ),
                                            Switch(
                                                value: widget.newNote.keep,
                                                onChanged: (value) {
                                                  setState(() {
                                                    widget.newNote.keep = value;
                                                  });
                                                }),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.only(left: 12.0),
                        sliver: SliverList(
                          delegate: SliverChildListDelegate([
                            // SizedBox(
                            //   height: verticalPadding,
                            // ),
                            GestureDetector(
                              onTap: () {
                                editText();
                              },
                              child: SizedBox(
                                key: widget.key,
                                height: inputHeight,
                                child: TextField(
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  focusNode: titleNode,
                                  cursorWidth: 1,
                                  maxLines: 1,
                                  maxLength: maxTitleLength,
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.text,
                                  enabled: editTextEnable,
                                  onSubmitted: (val) {
                                    setState(() {
                                      fieldFocusChange(
                                          context, titleNode, subtitleNode);
                                    });
                                  },
                                  onChanged: (newText) {
                                    setState(() {
                                      widget.newNote.title = newText;
                                      titleVal.selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                        offset: titleVal.text.length,
                                      ));
                                    });
                                  },
                                  cursorColor: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .color,
                                  controller: titleVal,
                                  autofocus: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: titleTextSize),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    helperText: 'Enter title',
                                    helperStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .helperStyle!
                                        .copyWith(fontSize: helperTextSize),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: verticalPadding,
                            ),
                            GestureDetector(
                              onTap: () {
                                editText();
                              },
                              child: SizedBox(
                                key: widget.key,
                                height: inputHeight,
                                child: TextField(
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  focusNode: subtitleNode,
                                  cursorWidth: 1,
                                  maxLines: 1,
                                  maxLength: maxSubtitleLength,
                                  textInputAction: TextInputAction.done,
                                  onSubmitted: (val) {
                                    setState(() {
                                      fieldFocusChange(context, subtitleNode,
                                          descriptionNode);
                                    });
                                  },
                                  keyboardType: TextInputType.text,
                                  enabled: editTextEnable,
                                  onChanged: (newText) {
                                    setState(() {
                                      widget.newNote.subtitle = newText;
                                      subtitleVal.selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                                  offset:
                                                      subtitleVal.text.length));
                                    });
                                  },
                                  cursorColor: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .color,
                                  controller: subtitleVal,
                                  autofocus: false,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: titleTextSize,height: 1.5),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    helperText: 'Enter subtitle',
                                    helperStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .helperStyle!
                                        .copyWith(fontSize: helperTextSize),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: verticalPadding,
                            // ),
                            GestureDetector(
                              onTap: () {
                                editText();
                              },
                              child: TextField(
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                focusNode: descriptionNode,
                                cursorWidth: 1,
                                maxLength: maxDescriptionLength,
                                maxLines: null,
                                textInputAction: TextInputAction.newline,
                                enabled: editTextEnable,
                                onSubmitted: (val) {
                                  setState(() {
                                    descriptionNode.unfocus();
                                  });
                                },
                                onChanged: (newText) {
                                  setState(() {
                                    widget.newNote.description = newText;
                                    descVal.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: descVal.text.length));
                                  });
                                },
                                cursorColor: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .color,
                                keyboardType: TextInputType.multiline,
                                controller: descVal,
                                autofocus: false,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: titleTextSize,height: 1.5),
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  helperText: 'Enter note text',
                                  helperStyle: Theme.of(context)
                                      .inputDecorationTheme
                                      .helperStyle!
                                      .copyWith(fontSize: helperTextSize),
                                ),
                              ),
                            ),
                            widget.newNote.image != null &&
                                    widget.newNote.image!.isNotEmpty
                                ? ImageCard(
                                    img: widget.newNote.image!,
                                    size: 200,
                                    onTap: () {
                                      _bottomDrawer(context);
                                    },
                                    onHold: () {
                                      setState(() {
                                        widget.newNote.image = Uint8List(0);
                                      });
                                    },
                                  )
                                : Container(),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),

                SlideTransition(
                  position: _menuAnimation,
                  child: CreatorNav(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    navDotIndicatorSize: navIconSize,
                    itemCount: noteNavTitles.length,
                    selectedItem: selectedIndex,
                    titles: noteNavTitles,
                    onTap: (int index) {
                      setState(() {
                        selectedIndex = index;
                        switch (selectedIndex) {
                          case 0:
                            noteProvider.addNote(widget.newNote);
                            Navigator.pop(context, true);
                            break;
                          case 1:
                            editText();
                            //_bottomDrawer(context);
                            break;
                          case 2:
                            _bottomDrawer(context);
                            break;
                          case 3:
                            noteProvider.deleteNote(widget.newNote);
                            Navigator.pop(context, true);
                            break;
                          case 4:
                            setState(() {
                              editTextEnable = false;
                            });
                            Navigator.pop(context, true);

                            break;
                        }
                      });
                    },
                  ),
                ), //nav rail menu
              ],
            );
          }),
        ));
  }
}

