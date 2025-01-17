
import 'package:permission_handler/permission_handler.dart';
class PermissionModel {
  String? title;
  String? description;
  bool? isOn;
  Permission? permission;

  PermissionModel({
    required this.title,
    required this.description,
    this.permission,
    this.isOn = false,
  });

  Map<String, Object?> toMap() {
    return {
      'title': title,
      'description': description,
      'is_on': isOn == true ? 1 : 0,
      'permission': permission?.toString(),
    };
  }

  PermissionModel.fromMap(Map<String, dynamic> map) {
    title = map['title'] as String?;
    description = map['description'] as String?;
    isOn = map['is_on'] == 1;
    permission = _permissionFromString(map['permission'] as String?);
  }

  void onChange() {
    isOn = !isOn!;
  }

  Permission? _permissionFromString(String? permissionString) {
    if (permissionString == null) return null;

    switch (permissionString) {
      case 'Permission.storage':
        return Permission.storage;
      case 'Permission.camera':
        return Permission.camera;
      case 'Permission.accessMediaLocation':
        return Permission.accessMediaLocation;
      case 'Permission.notification':
        return Permission.notification;
      case 'Permission.photos':
        return Permission.photos;
      case 'Permission.mediaLibrary':
        return Permission.mediaLibrary;
      default:
        return null;
    }
  }
}