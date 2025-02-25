import 'dart:typed_data';
import 'package:hive/hive.dart';
import 'package:noti/models/db_model/task_item.dart';
import '../../utils/id_generator/id_generator.dart';
part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  String? id;

  @HiveField(1)
  int priority;

  @HiveField(2)
  int icon;

  @HiveField(3)
  bool isTaskDone;

  @HiveField(4)
  String title;

  @HiveField(5)
  String description;

  @HiveField(6)
  DateTime date;

  @HiveField(7)
  List<TaskItem>? items;

  @HiveField(8)
  Uint8List? image;

  @HiveField(9)
  bool? isNotification;

  Task({
    String? id,
    required this.priority,
    required this.icon,
    required this.title,
    required this.isTaskDone,
    required this.description,
    required this.date,
    this.items,
    this.image,
    this.isNotification = false
  }): id = id ?? makeId();

  void toggleTask() {
    isTaskDone = !isTaskDone;
  }
}
