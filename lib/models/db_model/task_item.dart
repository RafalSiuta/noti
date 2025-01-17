import 'dart:typed_data';
import 'package:hive/hive.dart';
import '../../utils/id_generator/id_generator.dart';
part 'task_item.g.dart';

@HiveType(typeId: 1)
class TaskItem extends HiveObject {
  TaskItem({
    String? id,
    required this.title,
    required this.text,
    required this.isDone,
    required this.image
  }): id = id ?? makeId();

  @HiveField(0)
  String? id;

  @HiveField(1)
  String text;

  @HiveField(2)
  bool isDone;

  @HiveField(3)
  String title;

  @HiveField(4)
  Uint8List? image;

  void toggleTaskItem() {
    isDone = !isDone;
  }
}