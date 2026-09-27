import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../models/permission_model/permission_model.dart';
import '../../utils/prefs/prefs.dart';

class PermissionProvider extends ChangeNotifier {
  PermissionProvider();

  void initPermissions() async {}

  final Prefs _prefs = Prefs();

  final List<PermissionModel> _permissionSettings = [
    PermissionModel(
      title: "Camera access",
      description: "Required to be able to access the camera device.",
      isOn: false,
      permission: Permission.camera,
    ),
    PermissionModel(
      title: "Notifications",
      description: "Allows an app to post notifications",
      isOn: false,
      permission: Permission.notification,
    ),
  ];

  UnmodifiableListView<PermissionModel> get permissionSettingsList {
    return UnmodifiableListView(_permissionSettings);
  }

  int get permissionSettingsListCounter {
    return _permissionSettings.length;
  }

  void permissionHandler(PermissionModel permissionModel) async {
    permissionModel.onChange();

    PermissionStatus status = await checkPermissionStatus(
      permissionModel.permission,
    );

    switch (status) {
      case PermissionStatus.granted:
        permissionModel.isOn = true;
        break;
      case PermissionStatus.denied:
        permissionModel.isOn = false;

        break;
      case PermissionStatus.permanentlyDenied:
        permissionModel.isOn = false;
        openAppSettings();
        break;
      default:
        break;
    }

    await _prefs.storeList('permissionSettings', permissionSettingsList);
  }

  Future<PermissionStatus> checkPermissionStatus(Permission? permission) async {
    if (permission != null) {
      return await permission.status;
    } else {
      return PermissionStatus.denied;
    }
  }

  void updatePermissionSettings() async {
    final restored = await _prefs.restorePermissionsList(
      'permissionSettings',
      permissionSettingsList,
    );

    for (final current in _permissionSettings) {
      for (final stored in restored) {
        if (stored.permission == current.permission &&
            stored.title == current.title) {
          current.isOn = stored.isOn;
          break;
        }
      }
    }

    await _prefs.storeList('permissionSettings', permissionSettingsList);

    notifyListeners();
  }

  Future<bool> checkAllPermissions() async {
    for (var item in _permissionSettings) {
      if (!item.isOn!) {
        return false;
      }
    }

    return true;
  }
}
