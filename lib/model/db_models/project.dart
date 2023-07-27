import 'dart:typed_data';

class Project {
  int? id;
  int? priority;
  int? icon;
  bool? isTaskDone;
  String? title;
  String? subtitle;
  String? description;
  double? progress;
  Uint8List? image;
  late DateTime date;

  Project(
      {this.id,
        required this.priority,
        required this.icon,
        required this.title,
        required this.subtitle,
        required this.isTaskDone,
        required this.description,
        required this.progress,
        required this.image,
        required this.date});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'progress_priority': priority,
      'progress_icon': icon,
      'progress_title': title,
      'progress_subtitle': subtitle,
      'progress_description': description,
      'progress_value': progress,
      'progress_image': image,
      'progress_date': date.toIso8601String()
    };
    if (id != null) {
      map['progress_id'] = id;
    }
    if (isTaskDone != null) {
      if (isTaskDone == true) {
        map['is_progress_done'] = 1;
      } else {
        map['is_progress_done'] = 0;
      }
    } else {
      map['is_progress_done'] = 1;
    }
    if (image != null) {
      map['note_image'] = image;
    } else {
      map['note_image'] = Uint8List(0);
    }
    return map;
  }

  Project.fromMap(dynamic map) {
    id = map['progress_id'] as int?;
    priority = map['progress_priority'] as int?;
    icon = map['progress_icon'] as int?;
    title = map['progress_title'] as String?;
    subtitle = map['progress_subtitle'] as String?;
    description = map['progress_description'] as String?;
    progress = map['progress_value'] as double;
    image = map['progress_image'] as Uint8List;
    date = DateTime.parse(map['progress_date']);
    isTaskDone = map['is_progress_done'] == 1;
  }

  void toggleTask() {
    isTaskDone = !isTaskDone!;
  }
}