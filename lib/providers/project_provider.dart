
import 'dart:collection';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import '../model/db_models/project.dart';
class ProjectProvider extends ChangeNotifier{


  ProjectProvider(){
    initProject();
  }

  initProject()async{
    await getTaskDbList();
  }
  //variables
  double progressValue = 0.0;

  final List<Project> _projectList = [
    Project(id:1,priority: 3,icon:3, title:"Test 1",subtitle: "Subtitle example text explain Lorem Ipsum has been the industry's standard dummy text", isTaskDone: false,description: "testing task list views",progress: 0.34,image: Uint8List(0), date: DateTime.now()),
    Project(id:2,priority: 1,icon:5, title:"Test 2", subtitle: "Subtitle example text explain Lorem Ipsum has been the industry's standard dummy text", isTaskDone: false,description: "testing task list views",progress: 0.71, image: Uint8List(0),date: DateTime.now()),
    Project(id:3,priority: 2,icon:9, title:"Test 3",subtitle: "Subtitle example text explainLorem Ipsum has been the industry's standard dummy text ", isTaskDone: false,description: "testing task list views",progress: 0.29, image: Uint8List(0) ,date: DateTime.now()),
  ];

  UnmodifiableListView<Project> get projectList {
    return UnmodifiableListView(_projectList);
  }

  int get taskListCounter {
    return _projectList.length;
  }

  //todo: add project

  //todo: update project
  //task is done when progress == 1 (100%)

  //todo: delete project


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