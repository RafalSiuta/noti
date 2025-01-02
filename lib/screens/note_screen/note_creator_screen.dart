import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../models/db_model/note.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../models/menu_model/nav_model.dart';
import '../../providers/note_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/icon_button.dart';
import '../../widgets/cards/image_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/dialogs/note_date_picker.dart';
import '../../widgets/dialogs/gallery_sheet.dart';
import '../../widgets/navigators/creator_nav.dart';
import '../../widgets/tooltip/custom_text_toolbar.dart';

class NoteCreator extends StatefulWidget {
  final Note newNote;
  final bool editEnable;
  const NoteCreator({super.key, required this.newNote, this.editEnable = true});

  @override
  // ignore: library_private_types_in_public_api
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
  var appBarHeight = SizeInfo.appBarCollapsedHeight;
  int maxTitleLength = 100;
  int maxSubtitleLength = 100;
  int maxDescriptionLength = 4000;
  double inputHeight = 50;
  var leftEdgePadding = SizeInfo.leftEdgeCreatorPadding;

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

  void cursorPlace(TextEditingController textVal, String newText){

    // Pobierz aktualną pozycję kursora
    final cursorPosition = textVal.selection.baseOffset;

    // Ustaw tekst, ale bez zmiany pozycji kursora
    textVal.text = newText;

    // Ustawienie kursora na poprzedniej pozycji (chyba że pozycja kursora jest poza zakresem nowego tekstu)
    textVal.selection = TextSelection.fromPosition(
      TextPosition(
        offset: cursorPosition <= newText.length ? cursorPosition : newText.length,
      ),
    );
  }

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
    DateTime? picked;

    await showDialog<DateTime>(
        context: context,
        builder: (context) {
          return NoteDatePickerDial(
            initialDate: widget.newNote.date,
            onDateSelected: (DateTime date, TimeOfDay time) {
              setState(() {
                currentDate(date); // Ustaw datę i czas tylko raz wewnątrz setState
                picked = date; // Ustaw wybraną datę
              });
            },
            onMonthChange: (date) {
              // Logika dla zmiany miesiąca, jeśli jest potrzebna
            },
          );
        }
    );

    if (picked != null && picked != widget.newNote.date) {
      setState(() {
        currentDate(picked!); // Aktualizuj tylko raz, gdy faktycznie potrzebujesz
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
        title: 'edit'
    ),
    NavModel(
        icon: Icons.calendar_month,
        title: 'set date'
    ),
    NavModel(
      icon: Icons.add_photo_alternate_outlined,
        title: 'image'
    ),
    NavModel(
      icon: Icons.delete,
        title: 'delete'
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
        body: Container(
          key: widget.key,
          padding: EdgeInsets.only(top: topMargin, left: leftEdgePadding),
          child: SafeArea(
            child:
                Consumer<NoteProvider>(builder: (context, noteProvider, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomScrollView(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      slivers: [
                        SliverAppBar(
                          backgroundColor: Theme.of(context).cardColor,
                          shadowColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          //scrolledUnderElevation: 0,
                          automaticallyImplyLeading: false,
                          elevation: 0,
                          floating: true,
                          snap: true,
                          pinned: true,
                          collapsedHeight: appBarHeight,
                          expandedHeight: appBarHeight + 5,
                          flexibleSpace:
                          Padding(
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
                                        InkWell(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          child: Padding(
                                            padding: EdgeInsets.only(right: leftEdgePadding),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  pickedIcon,
                                                  size: navIconSize,
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(pickedIconText, textAlign: TextAlign.center,style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(fontSize: navIconSize * 0.52, color:Theme.of(context).indicatorColor),)

                                              ],
                                            ),
                                          ),
                                          onTap: (){
                                            _pickIcon(context);
                                          },
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
                                        const VerticalDivider(),
                                        Padding(
                                          padding: EdgeInsets.only(right: leftEdgePadding, left: leftEdgePadding),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [

                                              Transform.scale(
                                                scale: 0.8,
                                                child: Switch(
                                                    value: widget.newNote.keep,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        widget.newNote.keep = value;
                                                      });
                                                    }),
                                              ),
                                              Text(
                                                'On dash',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                    fontSize: navIconSize * 0.52 ),
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
                          padding:EdgeInsets.only( top: topMargin ,),
                          sliver: SliverList(
                            delegate: SliverChildListDelegate([
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
                                  focusNode: titleNode,
                                  contextMenuBuilder: (context, editableTextState) {
                                    return CustomTextSelectionToolbar(key:widget.key,editableTextState: editableTextState);
                                  },
                                  cursorWidth: 1,
                                  maxLines: null,
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
                                      // titleVal.selection =
                                      //     TextSelection.fromPosition(
                                      //         TextPosition(
                                      //   offset: titleVal.text.length,
                                      // ));
                                      cursorPlace(titleVal,newText);
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
                              SizedBox(
                                height: verticalPadding,
                              ),
                              GestureDetector(
                                onTap: () {
                                  editText();
                                },
                                child: TextField(
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  focusNode: subtitleNode,
                                  contextMenuBuilder: (context, editableTextState) {
                                    return CustomTextSelectionToolbar(key:widget.key,editableTextState: editableTextState);
                                  },
                                  cursorWidth: 1,
                                  maxLines: null,
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
                                      cursorPlace(subtitleVal,newText);
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
                                  contextMenuBuilder: (context, editableTextState) {
                                    return CustomTextSelectionToolbar(key:widget.key,editableTextState: editableTextState);
                                  },
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
                                      cursorPlace(descVal,newText);
                                      // descVal.selection =
                                      //     TextSelection.fromPosition(TextPosition(
                                      //         offset: descVal.text.length));
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
          ),
        ));
  }
}

