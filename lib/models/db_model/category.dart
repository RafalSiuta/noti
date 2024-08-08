class NoteCategory {
  int? id;
  String? name;

  NoteCategory({this.id, this.name});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'category_name': name,
    };
    if (id != null) {
      map['category_id'] = id;
    }
    if (name != null) {
      map['category_name'] = name;
    }
    return map;
  }

  NoteCategory.fromMap(dynamic map) {
    id = map['category_id'] as int?;
    name = map['category_name'] as String?;
  }
}
