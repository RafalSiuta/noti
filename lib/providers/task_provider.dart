
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:noti/providers/settings_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:table_calendar/table_calendar.dart';

import '../database/database_helper.dart';
import '../database/task_db.dart';
import '../models/db_model/task.dart';
import '../utils/notifications/notifications_helper.dart';
import '../utils/prefs/prefs.dart';

class TaskProvider extends ChangeNotifier {

  final DatabaseHelper _dbHelper = DatabaseHelper.databaseHelper;
  //tmp sql database to gt old user tasks
  final TaskDB _dbTempTask = TaskDB();

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

  int taskMonthsToDelete = 5;
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
    await reloadDatabase();
    getSettingsValuesForTask().whenComplete(() => getTaskDbList());
    notifyListeners();
  }

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
    }

    // Sortowanie zadań w każdym dniu
    tasks.forEach((key, value) {
      value.sort((a, b) => a.date.compareTo(b.date));
    });

    _taskList = getCalendarValues(focDay);
    notifyListeners();
  }

  // Funkcja, która sprawdza istnienie bazy danych i migruje dane do Hive
  Future<void> reloadDatabase() async {
    // Sprawdzamy, czy baza danych SQLite istnieje
    final dbPath = await getDatabasesPath();
    String path = '$dbPath/note_database.db';
    bool dbExists = await databaseFactory.databaseExists(path);

    if (!dbExists) {
      print('No SQLite database found. Skipping migration.');
      return;
    }

    // Pobieranie wszystkich zadań ze starej bazy danych SQLite
    try {
      List<Task> tasks = await _dbTempTask.getAllTasks();
      for (Task task in tasks) {
        // Dodawanie zadania do bazy Hive
        await _dbHelper.addTask(task);
      }

      // Po pomyślnej migracji, usunięcie danych z SQLite
      await _dbTempTask.deleteAllTasks();
      print('Migration completed successfully.');
    } catch (e) {
      print('Error during migration: $e');
    }

    notifyListeners();
  }
  Future<List<Task>> loadTaskListFromSettings(int month, bool toDelete) async {
    //startingDayOfWeek = settings.calendarStartingDay();
    taskMonthsToDelete = month;
    isTaskToDelete = toDelete;
    _prefs.storeBool("isTaskToDelete", isTaskToDelete);
    _prefs.storeInt("taskMonthsToDelete", taskMonthsToDelete);
    final currentMonth = DateTime(DateTime.now().year,
        (DateTime.now().month + 1) - taskMonthsToDelete, 1);

    if (isTaskToDelete == true) {
      await getAllTasksToDelete(currentMonth).whenComplete(() {
        final date = DateTime(focDay.year, focDay.month, focDay.day);
        _taskList = _dbHelper.getAllTasks();
      });
    }
    notifyListeners();
    return _taskList;
  }

  void addTask(Task task) async {
    if (task.isInBox) {
      await _dbHelper.updateTask(task);
      refreshNotification(task);
    } else {
      await _dbHelper.addTask(task);
      //TESTING FUNCTION: todo: remove before launch app:
     //await NotificationsHelper().scheduleNotification(task, DateTime.now().add(Duration(minutes: 1)));
      refreshNotification(task);
    }
    // Po dodaniu lub aktualizacji zadania, odśwież listę zadań i markerów
    await refreshTasks();
    notifyListeners();
  }

  void updateTasks(Task task) async {
    task.toggleTask();
    await _dbHelper.updateTask(task);


    _taskList = getCalendarValues(focDay);
    notifyListeners();
  }
  void deleteTask(Task task) async {
    await _dbHelper.deleteTask(task);

    // Usuwanie zadania z mapy `tasks`
    final taskDate = DateTime(task.date.year, task.date.month, task.date.day);
    if (tasks[taskDate] != null) {
      tasks[taskDate]!.remove(task); // Usuwanie zadania z listy zadań tego dnia
      if (tasks[taskDate]!.isEmpty) {
        tasks.remove(taskDate); // Jeśli lista zadań dla tego dnia jest pusta, usuwamy wpis
      }
    }

    // Odświeżamy listę zadań dla wybranego dnia, aby UI było zaktualizowane
    _taskList = getCalendarValues(focDay);

    // Anulowanie powiadomienia
    NotificationsHelper().cancelNotification(task.id.hashCode);

    notifyListeners();
  }


  void refreshNotification(Task task) {


    if (settings.isNotification) {
      // Sprawdzamy, czy zadanie jest ukończone
      if (task.isTaskDone) {
        print("NOTIFICATION WAS CANCELED");
        NotificationsHelper().cancelNotification(task.id.hashCode);
      } else {
        // Dodajemy powiadomienie, jeśli zadanie jest zaplanowane na przyszłość i nie jest ukończone
        // if (task.date.isAfter(DateTime.now())) {
        //   NotificationsHelper().scheduleNotification(task, task.date);
        // }
        // Pobieramy aktualny czas
        DateTime now = DateTime.now();

        // Ustalmy granicę czasu (np. najbliższa godzina)
        DateTime oneHourLater = now.add(Duration(hours: 1));

        // Sprawdzamy, czy zadanie jest zaplanowane na przyszłość i czy ma się odbyć w najbliższym czasie
        if (task.date.isAfter(now) && task.date.isBefore(oneHourLater)) {
          NotificationsHelper().scheduleNotification(task, task.date);
        }
      }
    } else {
      // Powiadomienia są wyłączone, anulujemy istniejące powiadomienia
      print("NOTIFICATION WAS CANCELED");
      NotificationsHelper().cancelNotification(task.id.hashCode);
    }

    notifyListeners();
  }


  Future<List<Task>> getAllTasksToDelete(DateTime date) async {
    // await _dbHelper.getAllTasks().where((element) {
    //   _taskList = value
    //       .where((element) =>
    //           DateTime(element.date.year, element.date.month, 1).isBefore(date))
    //       .toList();
    //   for (var task in taskList) {
    //     deleteTask(task);
    //   }
    //   notifyListeners();
    //   return value;
    // });

    notifyListeners();
    return _taskList;
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

  // void getAllTasks() {
  //   _taskList = _dbHelper.getAllTasks();
  //   notifyListeners();
  // }
}
