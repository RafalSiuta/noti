class Task {
  int? id;
  int? priority;
  int? icon;
  bool? isTaskDone;
  String? title;
  String? description;
  late DateTime date;

  Task(
      {this.id,
      required this.priority,
      required this.icon,
      required this.title,
      required this.isTaskDone,
      required this.description,
      required this.date});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'task_priority': priority,
      'task_icon': icon,
      'task_title': title,
      'task_description': description,
      'task_date': date.toIso8601String()
    };
    if (id != null) {
      map['task_id'] = id;
    }
    if (isTaskDone != null) {
      if (isTaskDone == true) {
        map['is_task_done'] = 1;
      } else {
        map['is_task_done'] = 0;
      }
    } else {
      map['is_task_done'] = 0;
    }
    return map;
  }

  Task.fromMap(dynamic map) {
    id = map['task_id'] as int?;
    priority = map['task_priority'] as int?;
    icon = map['task_icon'] as int?;
    title = map['task_title'] as String?;
    description = map['task_description'] as String?;
    date = DateTime.parse(map['task_date']);
    isTaskDone = map['is_task_done'] == 1;
  }

  void toggleTask() {
    isTaskDone = !isTaskDone!;
  }
}
