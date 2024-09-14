import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../models/permission_model/permission_model.dart';
import '../models/settings_model/settings_model/settings_model.dart';
import '../utils/prefs/prefs.dart';

class PermissionProvider extends ChangeNotifier{


  PermissionProvider(){
    initPermissions();
  }

  void initPermissions() async {
    // updatePermissionSettings();
  }

  final Prefs _prefs = Prefs();

   List<PermissionModel> _permissionSettings = [
    PermissionModel(
        title: "File storage",
        description: "Allows an application to write and read from external storage.",
        isOn: false,
        permission: Permission.storage
    ),
     PermissionModel(
         title: "Media location",
         description: "Required to be able to access photo albums.",
         isOn: false,
         permission: Permission.storage
         ),
    PermissionModel(
        title: "Camera access",
        description: "Required to be able to access the camera device.",
        isOn: false,
        permission: Permission.camera
    ),
    PermissionModel(
        title: "Notifications",
        description: "Allows an app to post notifications",
        isOn: false,
        permission: Permission.notification
        ),
    PermissionModel(
        title: "Wake lock",
        description: "Allows using PowerManager WakeLocks to keep processor from sleeping or screen from dimming.",
        isOn: false,
        permission: Permission.accessMediaLocation
    ),
    PermissionModel(
        title: "Media library",
        description: "Allows access to device's media library.",
        isOn: false,
        permission: Permission.mediaLibrary
        ),
  ];

  UnmodifiableListView<PermissionModel> get permissionSettingsList {
    return UnmodifiableListView(_permissionSettings);
  }

  int get permissionSettingsListCounter {
    return _permissionSettings.length;
  }

  void permissionHandler(PermissionModel permissionModel)async {

    permissionModel.onChange();

    PermissionStatus status = await checkPermissionStatus(permissionModel.permission);

    switch (status) {
      case PermissionStatus.granted:
        print("Permission granted.");
        permissionModel.isOn = true;
        break;
      case PermissionStatus.denied:
        print("Permission denied.");
        permissionModel.isOn = false;
       // openAppSettings();
        break;
      case PermissionStatus.permanentlyDenied:
        print("Permission permanently denied.");
        permissionModel.isOn = false;
        openAppSettings();
        break;
      default:
      // Obsługa innych statusów
        print("Permission status: $status");
        break;
    }
    //aktualizuj elementy listy
    await _prefs.storeList('permissionSettings',permissionSettingsList);
    for(var el in permissionSettingsList){
      print("\n###########  PERMISSION FOR ${el.title} set on -> ${el.isOn} ###############\n");
    }

   //notifyListeners();
  }

  Future<PermissionStatus> checkPermissionStatus(Permission? permission) async {
    if (permission != null) {
      return await permission.status;
    } else {
      return PermissionStatus.denied;
    }
  }

  void updatePermissionSettings() async {
    _permissionSettings = await _prefs.restorePermissionsList('permissionSettings',permissionSettingsList);

    notifyListeners();
  }
  Future<bool> checkAllPermissions() async {
    // _permissionSettings = await _prefs.restorePermissionsList(
    //   'permissionSettings',
    //   permissionSettingsList,
    // );

    for (var item in _permissionSettings) {
      if (!item.isOn!) {
        // Jeśli znajdzie się jakiekolwiek 'false', natychmiast zwracamy false
        return false;
      }
    }

    // Jeśli żadne uprawnienie nie było 'false', zwracamy true
    return true;
  }
}
