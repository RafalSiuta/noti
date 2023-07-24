
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/db_models/project.dart';
class ProjectProvider extends ChangeNotifier{


  ProjectProvider(){
    initProject();
  }

  initProject()async{
    await getTaskDbList();
  }

  final List<Project> _projectList = [
    Project(id:1,priority: 3,icon:3, title:"Test 1", isTaskDone: false,description: "testing task list views",date: DateTime.now()),
    Project(id:2,priority: 1,icon:5, title:"Test 2", isTaskDone: false,description: "testing task list views",date: DateTime.now()),
  ];

  UnmodifiableListView<Project> get projectList {
    return UnmodifiableListView(_projectList);
  }

  int get taskListCounter {
    return _projectList.length;
  }

  Future<List<Project>> getTaskDbList() async {

    //_taskList = getCalendarValues(focDay);
    // List<Task> list = [];
    // await _dbTask.getAllTasks().then((value) {
    //   final date = DateTime(focDay.year, focDay.month, focDay.day);
    //   _taskList = value
    //       .where((element) =>
    //           date ==
    //           DateTime(element.date.year, element.date.month, element.date.day))
    //       .toList();
    //   for (var element in value) {
    //     var addDate =
    //         DateTime(element.date.year, element.date.month, element.date.day);
    //     addTaskMarker(element, addDate);
    //   }
    //
    //   notifyListeners();
    //   return value;
    // });
    //
    // notifyListeners();
    return _projectList;
  }
}