
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../models/menu_model/nav_model.dart';
import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/icon_button.dart';
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

  // DateTime? selectedDate;// = DateTime.now();
  // TimeOfDay? dayTime;// = TimeOfDay.now();
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


  int _selectedIcon = 0;

  // selectOptions(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  //   switch (selectedIndex) {
  //   }
  // }

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

  void currentDate(DateTime date, TimeOfDay dayTime){
    setState(() {
      widget.newTask.date = DateTime(date.year,date.month,date.day,dayTime.hour,dayTime.minute);
      dateVal.text = DateFormat('dd MMM yy').format(widget.newTask.date);
    });
  }


  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
      FocusScope.of(context).unfocus();

    });
  }

  _pickDate(BuildContext context) async {

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.newTask.date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2070),
      locale: const Locale('pl'), useRootNavigator:false
    );
    if (picked != null && picked != widget.newTask.date) {
      setState(() {
        TimeOfDay time = TimeOfDay(hour: widget.newTask.date.hour, minute: widget.newTask.date.minute);
        currentDate(picked, time);

      });
    }
  }

  _pickTime(BuildContext context) async {
    TimeOfDay time = TimeOfDay(hour: widget.newTask.date.hour, minute: widget.newTask.date.minute);
    final TimeOfDay? selectedTime = await showTimePicker(
      initialTime: time,
      context: context,
      useRootNavigator: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child ?? Container(),
        );
      },

    );
    if (selectedTime != null && selectedTime != time) {
      currentDate(widget.newTask.date,selectedTime);

    }
  }
  IconData pickedIcon = Icons.circle;


  _pickIcon(BuildContext context) {
    var switchBtnIconSize = SizeInfo.dialogIconSize;
    showDialog(
        context: context,
        builder: (context) {
          return
            StatefulBuilder(builder: (ctx,setDialState){
              return CustomDial(
                  title: 'Task category icon',
                  child: Container(
                    constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2.5),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      crossAxisSpacing: 2.0,
                      shrinkWrap: true,
                      mainAxisSpacing: 2.0,
                      crossAxisCount: 5,
                      children: List.generate(
                        categoryIcons.iconsList.length,
                            (index) => IconButtonWithText(
                                iconData: categoryIcons.iconsList[index].icon,
                                iconSize: switchBtnIconSize,
                                iconName: categoryIcons.iconsList[index].name,
                                value: widget.newTask.icon == categoryIcons.iconsList[index].id! ? true : false,
                                onChanged: (val) {
                                  setState(() {
                                    setDialState((){
                                      //_selectedIcon  = index;
                                       widget.newTask.icon = categoryIcons.iconsList[index].id!;
                                       pickedIcon = categoryIcons.getPickedIcon(widget.newTask.icon);
                                    });
                                  });
                                }),
                      ),
                    ),
                  ));
            });

        });
  }

  checkIsTaskDone() {
    setState(() {
      widget.newTask.isTaskDone
          ? descVal.text = "Task Finished. Well done!"
          : descVal.text = widget.newTask.description;
    });
  }

  @override
  void initState() {
    pickedIcon = categoryIcons.getPickedIcon(widget.newTask.icon);
    TimeOfDay time = TimeOfDay(hour: widget.newTask.date.hour, minute: widget.newTask.date.minute);
    currentDate(widget.newTask.date,time);

    _menuSlideInController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));

    _menuAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _menuSlideInController!, curve: Curves.ease));


    editTextEnable = widget.editEnable;
    titleVal.text = widget.newTask.title[0].toUpperCase() +
        widget.newTask.title.substring(1, widget.newTask.title.length);
    checkIsTaskDone();
    //descVal.text = widget.newTask.description!;

    priorityRating = widget.newTask.priority;

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
    int maxTitleLength = 30;
    int maxDescriptionLength = 4000;
    return Scaffold(
        //todo: check nav bar items shrink option
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        body: Container(
          padding: EdgeInsets.only(left: edgePadding),
          key: widget.key,
          child: SafeArea(
            child: Consumer<TaskProvider>(
              builder: (context, taskProvider, child) {
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
                                                    pickedIcon,
                                                    // categoryIcons.iconsList[
                                                    // widget.newTask.icon].icon,
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
                                                        .format(widget.newTask.date),
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
                                                    //"${dayTime}",
                                                    DateFormat('HH:mm').format(widget.newTask.date),
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
                                              .textTheme
                                              .labelMedium!
                                              .color,
                                          controller: titleVal,
                                          autofocus: true,
                                          style: widget
                                              .newTask.isTaskDone ?
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
                                            .labelMedium!
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
                                taskProvider.addTask(widget.newTask);
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
                                taskProvider.updateTasks(widget.newTask);
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
