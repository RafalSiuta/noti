import 'dart:async';
import 'dart:collection';
import 'package:noti/providers/settings_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import '../database/database_helper.dart';
import '../models/db_model/task.dart';
import '../utils/notifications/notifications_helper.dart';
import '../utils/prefs/prefs.dart';

class TaskProvider extends ChangeNotifier {

  final DatabaseHelper _dbHelper = DatabaseHelper.databaseHelper;


  int selectedIndex = 0;
  DateTime focDay =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,DateTime.now().hour,DateTime.now().minute);
  DateTime selDay =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,DateTime.now().hour,DateTime.now().minute);
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOff;
  Map<DateTime, List<Task>> tasks = {};
  List<Task> _taskList = [];
  CalendarFormat format = CalendarFormat.month;
  late final PageController pageController;

  int taskMonthsToDelete = 0;
  bool isTaskToDelete = false;

  final Prefs _prefs = Prefs();

  SettingsProvider settings;

  TaskProvider(this.settings) {
    initTask();
  }

  Future<void> initTask() async {
    _taskList = _dbHelper.getAllTasks();
    selDay = focDay;
    loadCalendarFormat();
    getSettingsValuesForTask().whenComplete(() => getTaskDbList());
    notifyListeners();
  }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskListCounter {
    return _taskList.length;
  }

  void onMonthChange(DateTime day) {
    focDay = DateTime(day.year, day.month, 1);
    notifyListeners();
  }

  void changeDateFormat(CalendarFormat calendarFormat) {
    format = calendarFormat;
    _prefs.storeInt("calendarFormat", format.index);
    notifyListeners();
  }

  void loadCalendarFormat() async {
    int formatIndex = await _prefs.restoreInt('calendarFormat', 0);
    format = CalendarFormat.values[formatIndex];
    notifyListeners();
  }

  void onCurrentSelected(selectedDay, focusedDay) async {
    if (!isSameDay(selDay, selectedDay)) {
      selDay = selectedDay;
      focDay = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,DateTime.now().hour,DateTime.now().minute);
      _rangeStart = null;
      _rangeEnd = null;
      rangeSelectionMode = RangeSelectionMode.toggledOff;
    }
    _taskList = getCalendarValues(selDay);
    notifyListeners();
  }

  void onDaySelected(selectedDay, focusedDay) async {
    if (!isSameDay(selDay, selectedDay)) {
      selDay = selectedDay;
      focDay = focusedDay;
      _rangeStart = null;
      _rangeEnd = null;
      rangeSelectionMode = RangeSelectionMode.toggledOff;
    }
    _taskList = getCalendarValues(selDay);
    notifyListeners();
  }

  List<Task> getCalendarValues(DateTime date) {
    date = DateTime(date.year, date.month, date.day);
    return tasks[date] ?? [];
  }

  void addTaskMarker(Task task, DateTime addDate) {
    addDate = DateTime(addDate.year, addDate.month, addDate.day);
    if (tasks[addDate] != null) {
      tasks[addDate]!.add(task);
    } else {
      tasks[addDate] = [task];
    }

    tasks[addDate]!.sort((a, b) => a.date.compareTo(b.date));

    _taskList = getCalendarValues(focDay);

    notifyListeners();
  }

  Future<void> refreshTasks() async {
    _taskList = _dbHelper.getAllTasks();
    tasks.clear();

    for (var task in _taskList) {
      final taskDate = DateTime(task.date.year, task.date.month, task.date.day);
      if (tasks[taskDate] != null) {
        tasks[taskDate]!.add(task);
      } else {
        tasks[taskDate] = [task];
      }
      refreshNotification(task);
    }

    tasks.forEach((key, value) {
      value.sort((a, b) => a.date.compareTo(b.date));
    });

    _taskList = getCalendarValues(focDay);
    notifyListeners();
  }

  Future<List<Task>> loadTaskListFromSettings(int month, bool toDelete) async {

    taskMonthsToDelete = month;
    isTaskToDelete = toDelete;
    _prefs.storeBool("isTaskToDelete", isTaskToDelete);
    _prefs.storeInt("taskMonthsToDelete", taskMonthsToDelete);
    final currentMonth = DateTime(DateTime.now().year,
        (DateTime.now().month + 1) - taskMonthsToDelete, 1);

    if (isTaskToDelete == true) {
      await getAllTasksToDelete(currentMonth).whenComplete(() {

        _taskList = _dbHelper.getAllTasks();
      });
    }
    notifyListeners();
    return _taskList;
  }

  void addTask(Task task) async {
    if (task.isInBox) {
      await _dbHelper.updateTask(task);
    } else {
      await _dbHelper.addTask(task);

    }

    await refreshTasks();
    notifyListeners();
  }

  void addMultipleTasks(Task task, List<DateTime> dates) async {

    for(int i = 0;i < dates.length; i++){
      Task newTask = Task(
          id: task.id,
          icon: task.icon,
          priority: task.priority,
          title: task.title,
          description: task.description,
          isTaskDone: task.isTaskDone,
          items: task.items,
          image: task.image,
          date: dates[i]
      );
      if (newTask.isInBox) {
        await _dbHelper.updateTask(newTask);
      } else {
        await _dbHelper.addTask(newTask);
      }
      await refreshTasks();
    }

    notifyListeners();
  }

  void updateTasks(Task task) async {
    task.toggleTask();
    await _dbHelper.updateTask(task);


    _taskList = getCalendarValues(focDay);
    await refreshTasks();
    notifyListeners();
  }

  void deleteTask(Task task) async {
    await _dbHelper.deleteTask(task);


    final taskDate = DateTime(task.date.year, task.date.month, task.date.day);
    if (tasks[taskDate] != null) {
      tasks[taskDate]!.remove(task);
      if (tasks[taskDate]!.isEmpty) {
        tasks.remove(taskDate);
      }
    }

    _taskList = getCalendarValues(focDay);

    NotificationsHelper().cancelNotification(task.id.hashCode);
    await refreshTasks();

    notifyListeners();
  }

  void refreshNotification(Task task) {
    print("NOTIFICATIONS DATES ${task.date}");

    if (settings.isNotification) {
      if (task.isTaskDone) {

        NotificationsHelper().cancelNotification(task.id.hashCode);
      } else {

        final now = DateTime.now();

        if (task.date.year == now.year &&
            task.date.month == now.month &&
            task.date.day == now.day &&
            task.date.isAfter(DateTime(now.year, now.month, now.day, now.hour, now.minute))) {

          NotificationsHelper().scheduleNotification(task, task.date);
        } else if (task.date.isBefore(now)) {

          NotificationsHelper().cancelNotification(task.id.hashCode);
        }
      }
    } else {

      NotificationsHelper().cancelNotification(task.id.hashCode);
    }

    notifyListeners();
  }

  Future<List<Task>> getTaskDbList() async {

    _taskList = _dbHelper.getAllTasks();

    for(Task element in _taskList){

      var addDate =
      DateTime(element.date.year, element.date.month, element.date.day);
      addTaskMarker(element, addDate);

    }

    notifyListeners();
    return _taskList;
  }

  Future<void> getSettingsValuesForTask() async {
    await _prefs
        .restoreBool("isTaskToDelete", isTaskToDelete)
        .then((value) => isTaskToDelete = value)
        .whenComplete(() {
      _prefs
          .restoreInt("taskMonthsToDelete", taskMonthsToDelete)
          .then((value) => taskMonthsToDelete = value)
          .whenComplete(() {
        loadTaskListFromSettings(taskMonthsToDelete, isTaskToDelete);
      });
    });
  }

  Future<List<Task>> getAllTasksToDelete(DateTime date) async {

    List<Task> tempList = _dbHelper.getAllTasks();
    for (var taskItem in tempList) {
      if(DateTime(taskItem.date.year, taskItem.date.month, 1).isBefore(date)){
        deleteTask(taskItem);
      }
    }

    notifyListeners();
    return tempList;
  }

  Future<List<Task>> deleteAllTasks() async{
    List<Task> list = _dbHelper.getAllTasks();
    for (var taskItem in list){
      deleteTask(taskItem);
    }
    notifyListeners();
    return list;
  }

  Future<List<Task>> getAllTasks() async{
    List<Task> list = _dbHelper.getAllTasks();
    notifyListeners();
    return list;
  }

}