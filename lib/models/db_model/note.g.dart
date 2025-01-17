// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteAdapter extends TypeAdapter<Note> {
  @override
  final int typeId = 1;

  @override
  Note read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Note(
      id: fields[0] as String?,
      image: fields[2] as Uint8List?,
      fk: fields[7] as int?,
      keep: fields[3] as bool,
      icon: fields[1] as int,
      title: fields[4] as String,
      subtitle: fields[5] as String,
      description: fields[6] as String,
      date: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Note obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.keep)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.subtitle)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.fk)
      ..writeByte(8)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
