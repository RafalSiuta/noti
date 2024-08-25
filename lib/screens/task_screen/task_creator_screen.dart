
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../models/menu_model/nav_model.dart';
import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/navigators/creator_nav.dart';
import '../../widgets/raters/priority_rater.dart';

class TaskCreator extends StatefulWidget {
  final Task newTask;
  final bool editEnable;
  const TaskCreator({super.key, required this.newTask, this.editEnable = true});
  @override
  // ignore: library_private_types_in_public_api
  _TaskCreatorState createState() => _TaskCreatorState();
}

class _TaskCreatorState extends State<TaskCreator>
    with TickerProviderStateMixin {
  late AnimationController? _menuSlideInController;
  late Animation<Offset> _menuAnimation;

  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.now();
  bool editTextEnable = false;

  TextEditingController titleVal = TextEditingController();
  TextEditingController subtitleVal = TextEditingController();
  TextEditingController dateVal = TextEditingController();
  TextEditingController descVal = TextEditingController();

  CustomDialog customDialog = CustomDialog();

  CategoryIconsList categoryIcons = CategoryIconsList();

  FocusNode titleNode = FocusNode();
  FocusNode descriptionNode = FocusNode();

  int selectedIndex = 0;

  int priorityRating = 1;

  selectOptions(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (selectedIndex) {
    }
  }

  List<NavModel> titles = [
    NavModel(
      icon: Icons.save,
    ),
    NavModel(
      icon: Icons.edit,
    ),
    NavModel(
      icon: Icons.access_time,
    ),
    NavModel(
      icon: Icons.calendar_month,
    ),
    NavModel(
      icon: Icons.delete,
    ),
    NavModel(
      icon: Icons.check,
    ),
    NavModel(
      icon: Icons.arrow_back,
    ),
  ];

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
      FocusScope.of(context).unfocus();
    });
  }

  _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      locale: const Locale('pl'), useRootNavigator:false
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.newTask.date = DateTime(selectedDate.year, selectedDate.month,
            selectedDate.day, dayTime.hour, dayTime.minute); //picked;
      });
    }
  }

  _pickTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      initialTime: dayTime,
      context: context,
      useRootNavigator: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child ?? Container(),
        );
      },

    );
    if (selectedTime != null && selectedTime != dayTime) {
      setState(() {
        dayTime = selectedTime;
        widget.newTask.date = DateTime(selectedDate.year, selectedDate.month,
            selectedDate.day, dayTime.hour, dayTime.minute);
      });
    }
  }

  _pickIcon(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomDial(
              title: 'Task category icon',
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
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.newTask.icon = index;
                              });
                            },
                            icon: Icon(
                              categoryIcons.iconsList[index],
                              color: categoryIcons.iconsList.length == index
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).unselectedWidgetColor,
                              size: 13,
                            ),
                          )
                  ),
                ),
              ));
        });
  }

  checkIsTaskDone() {
    setState(() {
      widget.newTask.isTaskDone!
          ? descVal.text = "Task Finished. Well done!"
          : descVal.text = widget.newTask.description!;
    });
  }

  @override
  void initState() {
    dayTime = TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
    _menuSlideInController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));

    _menuAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _menuSlideInController!, curve: Curves.ease));

    selectedDate = widget.newTask.date;
    editTextEnable = widget.editEnable;
    titleVal.text = widget.newTask.title![0].toUpperCase() +
        widget.newTask.title!.substring(1, widget.newTask.title!.length);
    checkIsTaskDone();
    //descVal.text = widget.newTask.description!;
    dateVal.text = DateFormat('dd MMM yy').format(widget.newTask.date);
    priorityRating = widget.newTask.priority!;

    super.initState();

    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => _menuSlideInController!.forward());
  }

  @override
  void dispose() {
    titleNode.dispose();
    descriptionNode.dispose();
    _menuSlideInController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var topMargin = SizeInfo.topMargin;
    var titleFontSize = SizeInfo.taskCreatorTitle;
    var descriptionFontSize = SizeInfo.taskCreatorDescription;
    var helpTextFontSize = SizeInfo.helpTextSize;
    var edgePadding = SizeInfo.leftEdgePadding;
    var raterIconSize = SizeInfo.switchButtonIconSize;
    var leftPadding = SizeInfo.edgePadding;
    var inputHeight = SizeInfo.searchBarHeight;
    var navIconSize = SizeInfo.leadingAndTrailingIconSize;
    int maxTitleLength = 15;
    int maxDescriptionLength = 4000;
    return Scaffold(
        //todo: check nav bar items shrink option
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        body: Container(
          padding: EdgeInsets.only(left: edgePadding),
          key: widget.key,
          child: SafeArea(
            child: Consumer2<TaskProvider, SettingsProvider>(
              builder: (context, taskProvider, settingsProvider, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
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
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: IntrinsicHeight(
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
                                                IconButton(
                                                  alignment: Alignment.centerLeft,
                                                  padding: const EdgeInsets.only(
                                                      right: 5.0),
                                                  icon: Icon(
                                                    categoryIcons.iconsList[
                                                    widget.newTask.icon ?? 1],
                                                    size: navIconSize,
                                                  ),
                                                  onPressed: () {
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
                                                        .format(
                                                        widget.newTask.date),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium!
                                                        .copyWith(
                                                        fontSize:
                                                        descriptionFontSize),
                                                  ),
                                                ),
                                                const VerticalDivider(),
                                                TextButton(
                                                  onPressed: () {
                                                    _pickTime(context);
                                                  },
                                                  //widget.newTask.date
                                                  child: Text(
                                                    DateFormat('HH:mm').format(
                                                        widget.newTask.date),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium!
                                                        .copyWith(
                                                        fontSize:
                                                        descriptionFontSize),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: topMargin,
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
                                          cursorWidth: 1,
                                          focusNode: titleNode,
                                          maxLines: 1,
                                          maxLength: maxTitleLength,
                                          onSubmitted: (val) {
                                            setState(() {
                                              titleNode.unfocus();
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      descriptionNode);
                                            });
                                          },
                                          keyboardType: TextInputType.text,
                                          enabled: editTextEnable,
                                          onChanged: (newText) {
                                            setState(() {
                                              widget.newTask.title = newText;
                                              titleVal.selection =
                                                  TextSelection.fromPosition(
                                                      TextPosition(
                                                          offset: titleVal
                                                              .text.length));
                                            });
                                          },
                                          cursorColor: Theme.of(context)
                                              .indicatorColor,
                                          controller: titleVal,
                                          autofocus: true,
                                          style: widget
                                              .newTask.isTaskDone! ?
                                          Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                              fontSize: titleFontSize):
                                          Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontSize: titleFontSize,
                                                  decoration:TextDecoration.none),
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            helperText: 'Enter title',
                                            helperStyle: Theme.of(context)
                                                .inputDecorationTheme
                                                .helperStyle!
                                                .copyWith(
                                                    fontSize: helpTextFontSize),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Rater(
                                      size: raterIconSize,
                                      helperTextSize: helpTextFontSize,
                                      starCount: 3,
                                      rating: priorityRating,
                                      onRatingChanged: (rating) => setState(() {
                                        priorityRating = rating.toInt();
                                        widget.newTask.priority =
                                            rating.toInt();
                                      }),
                                    ),
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
                                        enabled: editTextEnable,
                                        onSubmitted: (val) {
                                          descriptionNode.unfocus();
                                        },
                                        onChanged: (newText) {
                                          setState(() {
                                            widget.newTask.description =
                                                newText;
                                            descVal.selection =
                                                TextSelection.fromPosition(
                                                    TextPosition(
                                                        offset: descVal
                                                            .text.length));
                                          });
                                        },
                                        cursorColor: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .color,
                                        keyboardType: TextInputType.multiline,
                                        controller: descVal,
                                        autofocus: true,
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontSize: descriptionFontSize),
                                        decoration: InputDecoration(
                                          helperText: 'Enter description',
                                          helperStyle: Theme.of(context)
                                              .inputDecorationTheme
                                              .helperStyle!
                                              .copyWith(
                                                  fontSize: helpTextFontSize),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _menuAnimation,
                      child: CreatorNav(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        navDotIndicatorSize: navIconSize,
                        itemCount: titles.length,
                        titles: titles,
                        selectedItem: selectedIndex,
                        onTap: (int index) {
                          setState(() {
                            selectedIndex = index;
                            switch (selectedIndex) {
                              case 0:
                                taskProvider.addTask(widget.newTask,
                                    settingsProvider.isNotification);
                                Navigator.pop(context, true);
                                break;
                              case 1:
                                editText();
                                break;
                              case 2:
                                _pickTime(context);
                                break;
                              case 3:
                                _pickDate(context);
                                break;
                              case 4:
                                taskProvider.deleteTask(widget.newTask);
                                Navigator.pop(context, true);
                                break;
                              case 5:
                                taskProvider.updateTasks(widget.newTask,
                                    settingsProvider.isNotification);
                                checkIsTaskDone();
                                break;
                              case 6:
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
              },
            ),
          ),
        ));
  }
}
