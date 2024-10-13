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

  var topMargin = SizeInfo.menuTopMargin;//SizeInfo.topMargin;
  var titleTextSize = SizeInfo.headerSubtitleSize;
  var helperTextSize = SizeInfo.helpTextSize;
  var navIconSize = SizeInfo.leadingAndTrailingIconSize;
  var verticalPadding = SizeInfo.verticalTextPadding;
  var descriptionFontSize = SizeInfo.taskCreatorDescription;
  int maxTitleLength = 30;
  int maxSubtitleLength = 30;
  int maxDescriptionLength = 4000;
  double inputHeight = 50;
  var leftEdgePadding = SizeInfo.edgePadding;

  var leftPadding = SizeInfo.edgePadding;

  var dialogScale = SizeInfo.dialogScaleFactor;

  var iconListCrossCount = SizeInfo.iconDialogListCrossAxisCount;

  bool editTextEnable = false;
  bool keepInMind = true;
  late AnimationController? _menuSlideInController;
  late Animation<Offset> _menuAnimation;
  //DateTime currentDate = DateTime.now();

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

  void currentDate(DateTime date,){
    setState(() {
      widget.newNote.date = DateTime(date.year,date.month,date.day);
     // dateVal.text = DateFormat('dd MMM yy').format(widget.newNote.date);
    });
  }

  _pickDate(BuildContext context) async {

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.newNote.date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2070),initialEntryMode: DatePickerEntryMode.calendarOnly,
      locale: const Locale('pl'), useRootNavigator:false,
      builder: (context, child) {
        return Transform.scale(
          scale: dialogScale,
          child: child,
        );
      },

    );
    if (picked != null && picked != widget.newNote.date) {
      setState(() {
        //TimeOfDay time = TimeOfDay(hour: widget.newNote.date.hour, minute: widget.newNote.date.minute);
        currentDate(picked);

      });
    }
  }


  IconData pickedIcon = Icons.circle;
  String pickedIconText = "";

  _pickIcon(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return
          StatefulBuilder(builder: (ctx,setDialCtx){

            return CustomDial(
                title: 'Note icon',
                child: Container(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2.5),
                 // padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    crossAxisSpacing: 0.0,
                    shrinkWrap: true,
                    mainAxisSpacing: 0.0,
                    crossAxisCount: iconListCrossCount,
                    children: List.generate(
                      categoryIcons.iconsList.length,
                          (index) =>
                              IconButtonWithText(
                              iconData: categoryIcons.iconsList[index].icon,
                              iconName: categoryIcons.iconsList[index].name,
                              iconSize: navIconSize,
                              value: widget.newNote.icon == categoryIcons.iconsList[index].id! ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  setDialCtx((){
                                    //widget.newNote.icon = index;

                                    widget.newNote.icon = categoryIcons.iconsList[index].id!;
                                    pickedIcon = categoryIcons.getPickedIcon(widget.newNote.icon).icon;
                                    pickedIconText = categoryIcons.getPickedIcon(widget.newNote.icon).name;
                                  });

                                });
                              }),
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
      widget.newNote.image = img;
    });
  }

  List<NavModel> noteNavTitles = [
    NavModel(
      icon: Icons.save,
        title: 'save'
    ),
    NavModel(
      icon: Icons.edit,
        title: 'edit text'
    ),
    NavModel(
        icon: Icons.calendar_month,
        title: 'set date'
    ),
    NavModel(
      icon: Icons.add_photo_alternate_outlined,
        title: 'add image'
    ),
    NavModel(
      icon: Icons.delete,
        title: 'delete note'
    ),
    NavModel(
      icon: Icons.arrow_back,
        title: 'back'
    ),
  ];

  @override
  void initState() {
    currentDate(widget.newNote.date);
    pickedIcon = categoryIcons.getPickedIcon(widget.newNote.icon).icon;
    pickedIconText = categoryIcons.getPickedIcon(widget.newNote.icon).name;
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
                          padding: EdgeInsets.only(top: topMargin, right: leftPadding),
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
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                bottom: .0),
                                            icon: Icon(
                                              pickedIcon,
                                              size: navIconSize,
                                            ),
                                            onPressed: () {
                                              _pickIcon(context);

                                            },
                                          ),
                                          Text(pickedIconText,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 8.0, color:Theme.of(context).indicatorColor, ),)
                                        ],
                                      ),
                                      const VerticalDivider(),
                                      TextButton(
                                        onPressed: () {
                                          _pickDate(context);
                                        },
                                        child: Text(
                                          DateFormat('dd MMM yy')
                                              .format(widget.newNote.date),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                              fontSize:
                                              descriptionFontSize),
                                        ),
                                      ),
                                      // Text(
                                      //   DateFormat('dd MMM yy')
                                      //       .format(widget.newNote.date),
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .headlineMedium!
                                      //       .copyWith(
                                      //           fontSize: descriptionFontSize),
                                      // ),
                                      const VerticalDivider(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 24),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Switch(
                                                value: widget.newNote.keep,
                                                onChanged: (value) {
                                                  setState(() {
                                                    widget.newNote.keep = value;
                                                  });
                                                }),
                                            Text(
                                              'On dash',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                  fontSize: helperTextSize),
                                            ),
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
                        padding:EdgeInsets.only(left: leftEdgePadding),
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
                            SizedBox(
                              height: verticalPadding,
                            ),
                            widget.newNote.image != null &&
                                    widget.newNote.image!.isNotEmpty
                                ? ImageCard(
                                    img: widget.newNote.image!,
                                    width: 100,
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
                            break;
                          case 2:

                            _pickDate(context);

                            break;
                          case 3:
                            _bottomDrawer(context);

                            break;
                          case 4:
                            noteProvider.deleteNote(widget.newNote);
                            Navigator.pop(context, true);


                            break;
                          case 5:
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

