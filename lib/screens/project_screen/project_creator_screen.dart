import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import '../../model/db_models/project.dart';
import '../../model/menu/category_icon_list.dart';
import '../../model/menu/nav_model.dart';
import '../../providers/note_provider.dart';
import '../../providers/project_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/custom_icon_btn.dart';
import '../../widgets/calendar/calendar_widget.dart';
import '../../widgets/cards/image_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/dialogs/gallery_sheet.dart';
import '../../widgets/navigators/creator_nav.dart';

class ProjectCreator extends StatefulWidget {
  final Project newProject;
  final bool editEnable;
  const ProjectCreator({Key? key, required this.newProject, this.editEnable = true})
      : super(key: key);

  @override
  _ProjectCreatorState createState() => _ProjectCreatorState();
}

class _ProjectCreatorState extends State<ProjectCreator>
    with TickerProviderStateMixin {
  bool editTextEnable = false;
  bool keepInMind = true;
  late AnimationController? _menuSlideInController;
  late Animation<Offset> _menuAnimation;
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.now();

  TextEditingController titleVal = TextEditingController();
  TextEditingController subtitleVal = TextEditingController();
  TextEditingController descVal = TextEditingController();

  CategoryIconsList categoryIcons = CategoryIconsList();

  FocusNode titleNode = FocusNode();
  String titleHelperText = "";
  FocusNode subtitleNode = FocusNode();
  String subtitleHelperText = "";
  FocusNode descriptionNode = FocusNode();
  String descHelperText = "";

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
          return CustomDial(
              title: 'Project icon',
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                height: 250,
                child:
                GridView.count(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  crossAxisSpacing: 0.0,
                  shrinkWrap: true,
                  mainAxisSpacing: 0.0,
                  crossAxisCount: 5,
                  children: List.generate(
                      categoryIcons.iconsList.length,
                          (index) =>
                          CustomIconButton((){
                            setState(() {
                              widget.newProject.icon = index;
                            });
                          },12,categoryIcons.iconsList[index], Theme.of(context)
                              .inputDecorationTheme
                              .helperStyle!
                              .copyWith(
                              fontSize: 7.0), "Category", categoryIcons.iconsList.length == index
                              ? Theme.of(context).indicatorColor
                              : Theme.of(context).unselectedWidgetColor)
                  ),
                ),
              ));
        });
  }

  _pickDate(BuildContext context) async {
    showDialog(
        context: context,
        builder:(context){
          return CustomDial(
            title: 'Date picker',
            child: SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                height: 250,
                child: CalendarWidget((picked){
                  if (picked != null && picked != selectedDate) {
                    setState(() {
                      selectedDate = picked;
                      widget.newProject.date = DateTime(selectedDate.year, selectedDate.month,
                          selectedDate.day, dayTime.hour, dayTime.minute); //picked;
                    });
                  }
                })
            ),
          );
        }
    );
  }

  _pickTime(BuildContext context) async {
    showDialog(
        context: context,
        builder:(context){
          return CustomDial(
            title: 'Time picker',
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              height: 250,
              child: Center(child: TimePickerSpinner(
                highlightedTextStyle: Theme.of(context).textTheme.headlineMedium,
                normalTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),
                is24HourMode: true,
                onTimeChange: (time) {
                  setState(() {
                    TimeOfDay pickTime = TimeOfDay(hour: time.hour, minute: time.minute);
                    if (pickTime != dayTime ) {
                      dayTime = pickTime;
                      widget.newProject.date = DateTime(selectedDate.year, selectedDate.month,
                          selectedDate.day, dayTime.hour, dayTime.minute);
                    }
                  });
                },
              )),
            ),
          );
        }
    );
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
      widget.newProject.image = Uint8List(0);//img;
    });
  }

  List<NavModel> noteNavTitles = [
    // NavModel(
    //   icon: FontAwesomeIcons.list,
    // ),
    NavModel(
      icon: FontAwesomeIcons.save,
    ),
    NavModel(
      icon: FontAwesomeIcons.edit,
    ),
    NavModel(
      icon: FontAwesomeIcons.image,
    ),
    NavModel(
      icon: FontAwesomeIcons.trash,
    ),
    NavModel(
      icon: FontAwesomeIcons.arrowLeft,
    ),
  ];



  @override
  void initState() {
    //selectedCategory = widget.newNote.fk!;
    _menuSlideInController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));

    _menuAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _menuSlideInController!, curve: Curves.ease));
    editTextEnable = widget.editEnable;
    titleVal.text = widget.newProject.title!;
    subtitleVal.text = widget.newProject.subtitle!;
    descVal.text = widget.newProject.description!;

    if (titleVal.text.isEmpty){
      titleHelperText = "Enter title";
    }else {

      titleHelperText = "";
    }

    if (subtitleVal.text.isEmpty){
      subtitleHelperText = "Enter subtitle";
    }else {

      subtitleHelperText = "";
    }
    if (descVal.text.isEmpty){
      descHelperText = "Project description";
    }else {

      descHelperText = "";
    }
    descriptionNode.addListener(() {

    });

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
    var leftPadding = SizeInfo.edgePadding;
    var titleTextSize = SizeInfo.taskCreatorTitle;
    var helperTextSize = SizeInfo.helpTextSize;
    var navIconSize = SizeInfo.leadingAndTrailingIconSize;
    var verticalPadding = SizeInfo.verticalTextPadding;
    var descriptionFontSize = SizeInfo.taskCreatorDescription;
    int maxTitleLength = 30;
    int maxSubtitleLength = 100;
    int maxDescriptionLength = 4000;


    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.background,

        body: Container(
          padding: EdgeInsets.only(left: leftPadding),
          child: SafeArea(
            child:
                Consumer<ProjectProvider>(builder: (context, projectProvider, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:
                    Stack(
                      children:[
                        SingleChildScrollView(
                        child: AnimationLimiter(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: topMargin, right: leftPadding),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children:
                                AnimationConfiguration.toStaggeredList(
                                  duration: const Duration(milliseconds: 300),
                                  childAnimationBuilder: (widget) =>
                                      ScaleAnimation(
                                        scale: 0.5,
                                        child: FadeInAnimation(
                                          child: widget,
                                        ),
                                      ),
                                  children: [

                                    SizedBox(
                                                height: 70,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  editText();
                                                },
                                                child: SizedBox(
                                                  key: widget.key,
                                                  height: 40,
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
                                                        widget.newProject.title = newText;
                                                        titleVal.selection =
                                                            TextSelection.fromPosition(
                                                                TextPosition(
                                                          offset: titleVal.text.length,
                                                        ));
                                                      });
                                                    },
                                                    cursorColor: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .color,
                                                    controller: titleVal,
                                                    autofocus: true,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineLarge!
                                                        .copyWith(fontSize: titleTextSize),
                                                    textAlign: TextAlign.start,
                                                    decoration: InputDecoration(
                                                      helperText: titleHelperText,
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
                                                child: SizedBox(
                                                  key: widget.key,
                                                  //height: null,
                                                  child: TextField(
                                                    maxLengthEnforcement:
                                                        MaxLengthEnforcement.enforced,
                                                    focusNode: subtitleNode,
                                                    cursorWidth: 1,
                                                    maxLines: 3,
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
                                                        widget.newProject.subtitle = newText;
                                                        subtitleVal.selection =
                                                            TextSelection.fromPosition(
                                                                TextPosition(
                                                                    offset:
                                                                        subtitleVal.text.length));
                                                      });
                                                    },
                                                    cursorColor: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .color,
                                                    controller: subtitleVal,
                                                    autofocus: false,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium!
                                                        .copyWith(fontSize: descriptionFontSize),
                                                    textAlign: TextAlign.start,
                                                    decoration: InputDecoration(
                                                      helperText: subtitleHelperText,
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
                                                      widget.newProject.description = newText;
                                                      descVal.selection =
                                                          TextSelection.fromPosition(TextPosition(
                                                              offset: descVal.text.length));
                                                    });
                                                  },
                                                  cursorColor: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .color,
                                                  keyboardType: TextInputType.multiline,
                                                  controller: descVal,
                                                  autofocus: false,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium!
                                                      .copyWith(fontSize: descriptionFontSize),
                                                  textAlign: TextAlign.start,
                                                  decoration: InputDecoration(
                                                    helperText: descHelperText,
                                                    helperStyle: Theme.of(context)
                                                        .inputDecorationTheme
                                                        .helperStyle!
                                                        .copyWith(fontSize: helperTextSize),
                                                  ),
                                                ),
                                              ),
                                              widget.newProject.image != null &&
                                                      widget.newProject.image!.isNotEmpty
                                                  ? ImageCard(
                                                      img: widget.newProject.image!,
                                                      size: 200,
                                                      onTap: () {
                                                        _bottomDrawer(context);
                                                      },
                                                      onHold: () {
                                                        setState(() {
                                                          widget.newProject.image = Uint8List(0);
                                                        });
                                                      },
                                                    )
                                                  : Container(),
                                  ],
                                )),
                          ),
                        ),
                      ),
                        IntrinsicHeight(
                          child: Container(
                            color: Theme.of(context).colorScheme.background,
                            padding:EdgeInsets.only(
                                top: topMargin, right: leftPadding),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: AnimationConfiguration
                                    .toStaggeredList(
                                  duration: const Duration(
                                      milliseconds: 300),
                                  delay: const Duration(
                                      milliseconds: 200),
                                  childAnimationBuilder: (widget) =>
                                      ScaleAnimation(
                                        scale: 0.5,
                                        child: FadeInAnimation(
                                          child: widget,
                                        ),
                                      ),
                                  children: [
                                    CustomIconButton((){
                                      _pickIcon(context);
                                    }, navIconSize, categoryIcons.iconsList[
                                    widget.newProject.icon ?? 1],Theme.of(context)
                                        .inputDecorationTheme
                                        .helperStyle!
                                        .copyWith(
                                        fontSize: helperTextSize), "Category", Theme.of(context).iconTheme.color),
                                    const VerticalDivider(),
                                    TextButton(
                                      onPressed: () {
                                        _pickDate(context);
                                      },
                                      child:
                                        RichText(
                                          text: TextSpan(
                                            text: DateFormat('dd MMM yy')
                                              .format(
                                              widget.newProject.date),
                                            style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                    fontSize:
                                                    descriptionFontSize),
                                            children:  <TextSpan>[
                                              TextSpan(
                                                text: "\nDeadline date",
                                                style: Theme.of(context)
                                                    .inputDecorationTheme
                                                    .helperStyle!
                                                    .copyWith(
                                                    fontSize: helperTextSize)
                                              )
                                            ]
                                          ),

                                        ),
                                      // Text(
                                      //   DateFormat('dd MMM yy')
                                      //       .format(
                                      //       widget.newProject.date),
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .headlineMedium!
                                      //       .copyWith(
                                      //       fontSize:
                                      //       descriptionFontSize),
                                      // ),
                                    ),
                                    const VerticalDivider(),
                                    TextButton(
                                      onPressed: () {
                                        _pickTime(context);
                                      },
                                      child:
                                      RichText(
                                        text: TextSpan(
                                            text: DateFormat('HH:mm')
                                                .format(
                                                widget.newProject.date),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .copyWith(
                                                fontSize:
                                                descriptionFontSize),
                                            children:  <TextSpan>[
                                              TextSpan(
                                                  text: "\nDeadline time",
                                                style: Theme.of(context)
                                                    .inputDecorationTheme
                                                    .helperStyle!
                                                    .copyWith(
                                                    fontSize: helperTextSize)
                                              )
                                            ]
                                        ),

                                      ),


                                      // Text(
                                      //   DateFormat('HH:mm').format(
                                      //       widget.newProject.date),
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .headlineMedium!
                                      //       .copyWith(
                                      //       fontSize:
                                      //       descriptionFontSize),
                                      // ),
                                    )
                                  ],

                                )),
                          ),
                        ),
                      ]
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
                              //projectProvider.addNote(widget.newProject);
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
                              //projectProvider.deleteNote(widget.newProject);
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
          ),
        ));
  }
}

