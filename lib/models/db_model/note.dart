import 'dart:typed_data';

class Note {
  int? id;
  int? icon;
  Uint8List? image;
  bool? keep;
  String? title;
  String? subtitle;
  String? description;
  int? fk;
  late DateTime date;

  Note(
      {this.id,
      this.image,
      this.fk,
      required this.keep,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.date});

  Map<String, Object?> toMap() {
    var map = <String, dynamic>{
      'note_icon': icon,
      'note_image': image,
      'FK_note': fk,
      'note_title': title,
      'note_subtitle': subtitle,
      'note_description': description,
      'note_date': date.toIso8601String(),
    };
    if (id != null) {
      map['note_id'] = id;
    }
    if (fk != null) {
      map['FK_note'] = fk;
    } else {
      map['FK_note'] = 0;
    }
    if (image != null) {
      map['note_image'] = image;
    } else {
      map['note_image'] = Uint8List(0);
    }
    if (keep != null) {
      if (keep == true) {
        map['keep_in_mind'] = 1;
      } else {
        map['keep_in_mind'] = 0;
      }
    } else {
      map['keep_in_mind'] = 1;
    }

    return map;
  }

  Note.fromMap(dynamic map) {
    id = map['note_id'] as int?;
    image = map['note_image'] as Uint8List;
    fk = map['FK_note'] as int?;
    icon = map['note_icon'] as int?;
    keep = map['keep_in_mind'] == 1;
    title = map['note_title'] as String?;
    subtitle = map['note_subtitle'] as String?;
    description = map['note_description'] as String?;
    date = DateTime.parse(map['note_date']);
  }
}
