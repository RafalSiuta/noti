class SettingsModel {
  String? title;
  String? description;
  bool? isOn;

  SettingsModel(
      {required this.title, required this.description, this.isOn = false});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'title': title,
      'description': description,
    };
    if (isOn != null) {
      if (isOn == true) {
        map['is_on'] = 1;
      } else {
        map['is_on'] = 0;
      }
    } else {
      map['is_on'] = 1;
    }
    return map;
  }

  SettingsModel.fromMap(dynamic map) {
    title = map['title'] as String?;
    description = map['description'] as String?;
    isOn = map['is_on'] == 1;
  }

  void onChange() {
    isOn = !isOn!;
  }
}
