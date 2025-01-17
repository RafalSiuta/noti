class TrashModel {
  String? title;
  String? description;
  bool? isOn;
  double? sliderValue;

  TrashModel(
      {required this.title,
      required this.description,
      this.isOn = false,
      this.sliderValue});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'title': title,
      'description': description,
      'slider_value': sliderValue
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

  TrashModel.fromMap(dynamic map) {
    title = map['title'] as String?;
    description = map['description'] as String?;
    sliderValue = map['slider_value'] as double?;
    isOn = map['is_on'] == 1;
  }

  void onChange() {
    isOn = !isOn!;
  }
}
