import 'package:hive/hive.dart';
import 'dart:typed_data';

import '../../utils/id_generator/id_generator.dart';

part 'note.g.dart';

@HiveType(typeId: 1)
class Note extends HiveObject {
  @HiveField(0)
  String? id;

  @HiveField(1)
  int icon;

  @HiveField(2)
  Uint8List? image;

  @HiveField(3)
  bool keep;

  @HiveField(4)
  String title;

  @HiveField(5)
  String subtitle;

  @HiveField(6)
  String description;

  @HiveField(7)
  int? fk;

  @HiveField(8)
  DateTime date;

  Note({
    String? id,
    this.image,
    this.fk,
    required this.keep,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.date,
  }): id = id ?? makeId();
}
