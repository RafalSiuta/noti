
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../models/menu_model/nav_model.dart';
import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/icon_button.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/dialogs/task_date_picker.dart';
import '../../widgets/navigators/creator_nav.dart';
import '../../widgets/raters/priority_rater.dart';
import '../../widgets/tooltip/custom_text_toolbar.dart';
import '../../widgets/calendar/calendar.dart';

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
  var topMargin = SizeInfo.menuTopMargin;//SizeInfo.topMargin;
  //var menuTop = SizeInfo.menuTopMargin;
  var titleFontSize = SizeInfo.taskCreatorTitle;
  var descriptionFontSize = SizeInfo.taskCreatorDescription;
  var helpTextFontSize = SizeInfo.helpTextSize;
  var edgePadding = SizeInfo.leftEdgePadding;
  var raterIconSize = SizeInfo.switchButtonIconSize;
  var leftPadding = SizeInfo.edgePadding;
  var inputHeight = SizeInfo.searchBarHeight;
  var navIconSize = SizeInfo.leadingAndTrailingIconSize;
  var leftEdgePadding = SizeInfo.leftEdgeCreatorPadding;
  var iconListCrossCount = SizeInfo.iconDialogListCrossAxisCount;
  var appBarHeight = SizeInfo.appBarCollapsedHeight;
  var verticalPadding = SizeInfo.verticalTextPadding;


  int maxTitleLength = 30;
  int maxDescriptionLength = 4000;

  var dialogScale = SizeInfo.dialogScaleFactor;

  late AnimationController? _menuSlideInController;
  late Animation<Offset> _menuAnimation;

  // DateTime? selectedDate;// = DateTime.now();
  // TimeOfDay? dayTime;// = TimeOfDay.now();
  bool editTextEnable = false;

  TextEditingController titleVal = TextEditingController();
  TextEditingController subtitleVal = TextEditingController();
 // TextEditingController dateVal = TextEditingController();
  TextEditingController descVal = TextEditingController();

  CustomDialog customDialog = CustomDialog();

  CategoryIconsList categoryIcons = CategoryIconsList();

  FocusNode titleNode = FocusNode();
  FocusNode descriptionNode = FocusNode();

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

  int selectedIndex = 0;

  int priorityRating = 1;


  List<NavModel> titles = [
    NavModel(
      icon: Icons.save,
      title: 'save'
    ),
    NavModel(
      icon: Icons.edit,
        title: 'edit'
    ),
    NavModel(
      icon: Icons.access_time,
        title: 'set time'
    ),
    NavModel(
      icon: Icons.calendar_month,
        title: 'set date'
    ),
    NavModel(
      icon: Icons.delete,
        title: 'delete'
    ),
    NavModel(
      icon: Icons.check,
        title: 'done'
    ),
    NavModel(
      icon: Icons.arrow_back,
        title: 'back'
    ),
  ];

  void currentDate(DateTime date, TimeOfDay dayTime){
    setState(() {
      widget.newTask.date = DateTime(date.year,date.month,date.day,dayTime.hour,dayTime.minute);
     // dateVal.text = DateFormat('dd MMM yy').format(widget.newTask.date);
    });
  }


  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
      FocusScope.of(context).unfocus();

    });
  }
  List<DateTime> scopeDatesList = [];
  List<DateTime> generateDateScopeList(DateTime startDate, DateTime endDate, int daysToScope) {

    DateTime currentDate = startDate;
    if(daysToScope > 0){
      while (currentDate.isBefore(endDate.add(Duration(days: 1)))) {
        // Dodajemy jeden dzień, aby uwzględnić endDate

        scopeDatesList.add(currentDate);
        currentDate = currentDate.add(Duration(days: daysToScope));
      }
    }
    scopeDatesList.forEach((item){
      print("DATES SCOPE: ${item}");
    });
    return scopeDatesList;
  }

  _pickDate(BuildContext context) async {
    DateTime? picked;
    await showDialog<DateTime>(
        context: context,
        builder: (context) {
          return TaskDatePickerDial(
            generateDateScopeList:generateDateScopeList,
            initialDate: widget.newTask.date,
            onDateSelected: (DateTime date, TimeOfDay time) {
              setState(() {
                currentDate(date, time); // Ustaw datę i czas tylko raz wewnątrz setState
                picked = date; // Ustaw wybraną datę
              });
            },
            onMonthChange: (date) {
              // Logika dla zmiany miesiąca, jeśli jest potrzebna
            },
          );
        }
    );

    if (picked != null && picked != widget.newTask.date) {
      setState(() {
        TimeOfDay time = TimeOfDay(hour: widget.newTask.date.hour, minute: widget.newTask.date.minute);
        currentDate(picked!, time); // Aktualizuj tylko raz, gdy faktycznie potrzebujesz
      });
    }
  }


  _pickTime(BuildContext context) async {
    TimeOfDay time = TimeOfDay(hour: widget.newTask.date.hour, minute: widget.newTask.date.minute);
    final TimeOfDay? selectedTime = await showTimePicker(
      initialTime: time,
      context: context,
      useRootNavigator: false,
      initialEntryMode: TimePickerEntryMode.dialOnly,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Transform.scale(
              scale: dialogScale,
              child: child ?? Container()),
        );
      },

    );
    if (selectedTime != null && selectedTime != time) {
      currentDate(widget.newTask.date,selectedTime);

    }
  }
  IconData pickedIcon = Icons.circle;
  String pickedIconText = "";

  _pickIcon(BuildContext context) {

    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (ctx,setDialState){
              //constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2.5),
              return CustomDial(
                  title: 'Task category icon',
                  child: 
                  GridView.count(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    crossAxisSpacing: 4.0,
                    shrinkWrap: true,
                    mainAxisSpacing: 4.0,
                    crossAxisCount: iconListCrossCount,
                    children: List.generate(
                      categoryIcons.iconsList.length,
                          (index) => IconButtonWithText(
                              iconData: categoryIcons.iconsList[index].icon,
                              iconSize: navIconSize,
                              iconName: categoryIcons.iconsList[index].name,
                              value: widget.newTask.icon == categoryIcons.iconsList[index].id! ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  setDialState((){
                                     widget.newTask.icon = categoryIcons.iconsList[index].id!;
                                     pickedIcon = categoryIcons.getPickedIcon(widget.newTask.icon).icon;
                                     pickedIconText = categoryIcons.getPickedIcon(widget.newTask.icon).name;
                                  });
                                });
                              }),
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
    pickedIcon = categoryIcons.getPickedIcon(widget.newTask.icon).icon;
    pickedIconText = categoryIcons.getPickedIcon(widget.newTask.icon).name;
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

    return Scaffold(
        //todo: check nav bar items shrink option
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).cardColor,
        body: Container(
          padding: EdgeInsets.only(top: topMargin, left: leftEdgePadding),
          key: widget.key,
          child: SafeArea(
            child: Consumer<TaskProvider>(
              builder: (context, taskProvider, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            flexibleSpace: Padding(
                              padding: EdgeInsets.only(top: topMargin, right: leftPadding),
                              child: SingleChildScrollView(
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
                                  Text(pickedIconText, textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 8.0, color:Theme.of(context).indicatorColor),)

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
                            ),
                          ),
                          SliverPadding(padding:EdgeInsets.only( top: topMargin ,),
                            sliver: SliverList(
                              delegate:  SliverChildListDelegate([
                                GestureDetector(
                                  onTap: () {
                                    editText();
                                  },
                                  child: TextField(
                                    maxLengthEnforcement:
                                    MaxLengthEnforcement.truncateAfterCompositionEnds,
                                    contextMenuBuilder: (context, editableTextState) {
                                      return CustomTextSelectionToolbar(key:widget.key,editableTextState: editableTextState);
                                    },
                                    cursorWidth: 1,
                                    focusNode: titleNode,
                                    maxLines: null,
                                    maxLength: maxTitleLength,
                                    onSubmitted: (val) {
                                      setState(() {
                                        titleNode.unfocus();
                                        FocusScope.of(context)
                                            .requestFocus(
                                            titleNode);
                                      });
                                    },
                                    keyboardType: TextInputType.text,
                                    enabled: editTextEnable,
                                    onChanged: (newText) {
                                      setState(() {
                                        widget.newTask.title = newText;
                                        cursorPlace(titleVal,newText);
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
                                SizedBox(height: verticalPadding,),
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
                                    contextMenuBuilder: (context, editableTextState) {
                                      return CustomTextSelectionToolbar(key:widget.key,editableTextState: editableTextState);
                                    },
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
                                        cursorPlace(descVal,newText);
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
                              ]),
                            ),
                          )
                        ],

                      )

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

