import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum IdRecordType {
  note('noti_note'),
  task('noti_task'),
  taskItem('noti_task_item');

  const IdRecordType(this.prefix);

  final String prefix;
}

class IdGenerator {
  IdGenerator._();

  static final IdGenerator instance = IdGenerator._();

  static const String installationIdKey = 'notiInstallationId';
  static const String idMigrationV2DoneKey = 'notiIdMigrationV2Done';
  static const String noteKeepMigrationV2DoneKey =
      'notiNoteKeepMigrationV2Done';

  final Uuid _uuid = const Uuid();
  String? _installationId;

  String? get installationId => _installationId;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final storedInstallationId = prefs.getString(installationIdKey);

    if (storedInstallationId != null && storedInstallationId.isNotEmpty) {
      _installationId = storedInstallationId;
      return;
    }

    final installationId = _uuid.v4();
    await prefs.setString(installationIdKey, installationId);
    _installationId = installationId;
  }

  // String makeId(IdRecordType type) {
  //   final installationId = _installationId ?? _uuid.v4();
  //   final createdAtMicros = DateTime.now().toUtc().microsecondsSinceEpoch;
  //   final recordId = _uuid.v4();
  //
  //   return '${type.prefix}_${installationId}_${createdAtMicros}_$recordId';
  // }

  bool isLegacyId(String? id) {
    if (id == null || id.isEmpty) return true;
    if (id.startsWith('noti_mobile_')) return false;

    return !id.startsWith('${IdRecordType.note.prefix}_') &&
        !id.startsWith('${IdRecordType.task.prefix}_') &&
        !id.startsWith('${IdRecordType.taskItem.prefix}_');
  }
}

// String makeNoteId() => IdGenerator.instance.makeId(IdRecordType.note);
//
// String makeTaskId() => IdGenerator.instance.makeId(IdRecordType.task);
//
// String makeTaskItemId() => IdGenerator.instance.makeId(IdRecordType.taskItem);

bool isLegacyId(String? id) => IdGenerator.instance.isLegacyId(id);

String makeId() {
  const String prefix = 'noti_mobile_12345678-1234-5678-1234-56781234567';
  return '$prefix${uuid.v4()}';
}
