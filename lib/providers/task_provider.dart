import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/foundation.dart';

import '../database/task_db.dart';
import '../models/db_model/task.dart';
import '../utils/prefs/prefs.dart';

class TaskProvider extends ChangeNotifier {
  final TaskDB _dbTask = TaskDB();
  int selectedIndex = 0;
  DateTime focDay =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime selDay =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOff;
  Map<DateTime, List<Task>> tasks = {};
  List<Task> _taskList = [];
  CalendarFormat format = CalendarFormat.month;
  late final PageController pageController;

  int taskMonthsToDelete = 5;
  bool isTaskToDelete = false;
  final Prefs _prefs = Prefs();

  TaskProvider() {
    initTask();
  }

  initTask() async {
    selDay = focDay;
    loadCalendarFormat();
    getSettingsValuesForTask().whenComplete(() => getTaskDbList());
    notifyListeners();
  }

  //todo: update list on the go: test this solution from stolik app:
  // void removeSelectedHistoryCard(int index) {
  //   _historyList = List.from(_historyList)..removeAt(index);
  //
  //   notifyListeners();
  // }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskListCounter {
    return _taskList.length;
  }

  onMonthChange(DateTime day) {
    focDay = DateTime(day.year, day.month, 1);
    print("$focDay next month");
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
    _taskList = getCalendarValues(focDay);
    notifyListeners();
  }

  void addTask(Task task, bool isNotification) async {
    task = Task(
        id: task.id,
        title: task.title,
        priority: task.priority,
        icon: task.icon,
        description: task.description,
        date: task.date,
        isTaskDone: task.isTaskDone);
    if (task.id != null) {
      updateTasks(task, isNotification);
    } else {
      await _dbTask.insertTask(task).then((value) {
        _dbTask.getAllTasks().then((value) {
          addTaskMarker(value.last, value.last.date);
          _taskList = getCalendarValues(focDay);
          if (isNotification) {
            addNotification(task);
          }
          notifyListeners();
        });
      });
    }
    notifyListeners();
  }

  void updateTasks(Task task, bool isNotification) async {
    task.toggleTask();
    await _dbTask
        .updateTask(task)
        .then((value) => _dbTask.getAllTasks().then((value) {
              _taskList = getCalendarValues(focDay);
              if (isNotification) {
                if (task.isTaskDone == true) {
                  cancelNotification(task);
                } else {
                  addNotification(task);
                }
              }
            }));
    notifyListeners();
  }

  void deleteTaskMarker(Task task, DateTime deleteDate) {
    deleteDate = DateTime(deleteDate.year, deleteDate.month, deleteDate.day);

    if (tasks[deleteDate] != null) {
      tasks[deleteDate]!.remove(task);
    } else {
      tasks[deleteDate]!.clear();
    }
    notifyListeners();
  }

  void deleteTask(Task task) async {
    await _dbTask.deleteTask(task.id!);
    deleteTaskMarker(task, task.date);
    cancelNotification(task);
    notifyListeners();
  }

  ///retrive prefs
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

  ///load taske when deleting is on
  Future<List<Task>> loadTaskListFromSettings(int month, bool toDelete) async {
    taskMonthsToDelete = month;
    isTaskToDelete = toDelete;
    _prefs.storeBool("isTaskToDelete", isTaskToDelete);
    _prefs.storeInt("taskMonthsToDelete", taskMonthsToDelete);
    final currentMonth = DateTime(DateTime.now().year,
        (DateTime.now().month + 1) - taskMonthsToDelete, 1);
    if (isTaskToDelete == true) {
      await getAllTasksToDelete(currentMonth).whenComplete(() {
        _dbTask.getAllTasks().then((value) {
          final date = DateTime(focDay.year, focDay.month, focDay.day);
          _taskList = value
              .where((element) =>
                  date ==
                  DateTime(
                      element.date.year, element.date.month, element.date.day))
              .toList();

          for (var t in value) {
            var addDate = DateTime(t.date.year, t.date.month, t.date.day);
            if (tasks[addDate] == null) {
              tasks[addDate]!.add(t);
            }
          }
          _taskList = getCalendarValues(focDay);
          notifyListeners();
          return _taskList;
        });
      });
    }
    notifyListeners();
    return _taskList;
  }

  ///load tasks with marker
  Future<List<Task>> getTaskDbList() async {
    // List<Task> list = [];
    await _dbTask.getAllTasks().then((value) {
      final date = DateTime(focDay.year, focDay.month, focDay.day);
      _taskList = value
          .where((element) =>
              date ==
              DateTime(element.date.year, element.date.month, element.date.day))
          .toList();
      for (var element in value) {
        var addDate =
            DateTime(element.date.year, element.date.month, element.date.day);
        addTaskMarker(element, addDate);
      }

      notifyListeners();
      return value;
    });

    notifyListeners();
    return _taskList;
  }

  ///load tasks whidhout marker
  Future<List<Task>> getAllTasksToDelete(DateTime date) async {
    await _dbTask.getAllTasks().then((value) {
      _taskList = value
          .where((element) =>
              DateTime(element.date.year, element.date.month, 1).isBefore(date))
          .toList();
      for (var task in taskList) {
        deleteTask(task);
      }
      notifyListeners();
      return value;
    });
    notifyListeners();
    return _taskList;
  }

  addNotification(Task task) {
    if (task.date.isAfter(DateTime.now()) && task.isTaskDone == false) {
      //NotificationHelper().addSchedule(task, task.date);
    }
    notifyListeners();
  }

  //todo delete it on production
  quickNotifi() {
    //NotificationHelper().showNotification();
    notifyListeners();
  }

  cancelNotification(Task task) {
    if (task.isTaskDone == true) {
     // notifications.cancel(task.id!);
    }
    notifyListeners();
  }

  deleteAllTaskData() async {
    _dbTask.deleteAllTasks();
    notifyListeners();
  }
}
