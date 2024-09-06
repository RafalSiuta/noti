import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../models/permission_model/permission_model.dart';
import '../utils/prefs/prefs.dart';

class PermissionProvider extends ChangeNotifier{


  PermissionProvider(){
    initPermissions();
  }

  void initPermissions() async {
     updatePermissionSettings();
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
        title: "Camera access",
        description: "Required to be able to access the camera device.",
        isOn: false,
        permission: Permission.camera
    ),
    PermissionModel(
        title: "Notifications",
        description: "Allows an app to post notifications",
        isOn: false,
        permission: Permission.reminders
    ),
    PermissionModel(
        title: "Wake lock",
        description: "Allows using PowerManager WakeLocks to keep processor from sleeping or screen from dimming.",
        isOn: false,
        permission: Permission.photos
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

    // Aktualizacja uprawnień w systemie
    if (permissionModel.isOn == true) {
      await permissionModel.permission?.request();
    }
    //aktualizuj elementy listy
    await _prefs.storeList('permissionSettings',permissionSettingsList);
    for(var el in permissionSettingsList){
      print("PERMISSION FOR ${el.title} set on -> ${el.isOn}");
    }

    notifyListeners();
  }

  void updatePermissionSettings() async {
    _permissionSettings = await _prefs.restorePermissionsList('permissionSettings',permissionSettingsList);
    for (var item in _permissionSettings) {
      PermissionStatus status = await item.permission!.status;
      item.isOn = status.isGranted;
    }
    // for(var item in _permissionSettings){
    //   PermissionStatus? status = await item.permission?.request();
    //   if(item.isOn == true){
    //     status?.isGranted;
    //   }else{
    //     status?.isDenied;
    //   }
    // }
    notifyListeners();
  }
  Future<bool> checkAllPermissions() async {
    _permissionSettings = await _prefs.restorePermissionsList(
      'permissionSettings',
      permissionSettingsList,
    );

    for (var item in _permissionSettings) {
      if (!item.isOn!) {
        // Jeśli znajdzie się jakiekolwiek 'false', natychmiast zwracamy false
        return false;
      }
    }

    // Jeśli żadne uprawnienie nie było 'false', zwracamy true
    return true;
  }
  // Future<bool> checkAllPermissions()async {
  //    bool isAllPermissionsGranted = false;
  //   _permissionSettings = await _prefs.restorePermissionsList('permissionSettings',permissionSettingsList).then((itemsList){
  //     for(var item in itemsList){
  //       if(item.isOn == true){
  //         isAllPermissionsGranted = true;
  //       }else{
  //         isAllPermissionsGranted = false;
  //       }
  //     }
  //     return itemsList;
  //   });
  //   notifyListeners();
  //   return isAllPermissionsGranted;
  // }
}

// void onPermissionSettingsChange(SettingsModel sets) async {
//   sets.onChange();
//
//   switch (sets.title){
//     case "File storage":
//       PermissionStatus status = await Permission.storage.request();
//       if (sets.isOn == true) {
//         status.isGranted;
//         print("Storage permission granted");
//
//       } else {
//         status.isDenied;
//       }
//       break;
//     case "Camera access":
//       PermissionStatus status = await Permission.camera.request();
//       if (status.isGranted) {
//         print("Camera permission granted");
//         sets.isOn = true;
//       } else {
//         sets.isOn = false;
//       }
//       break;
//     case "Notifications":
//       PermissionStatus status = await Permission.notification.request();
//       if (status.isGranted) {
//         print("Notifications permission granted");
//         sets.isOn = true;
//       } else {
//         sets.isOn = false;
//       }
//
//       break;
//     case "Wake lock":
//       PermissionStatus status = await Permission.notification.request();
//       if (status.isGranted) {
//         print("Wake lock permission granted");
//         sets.isOn = true;
//       } else {
//         sets.isOn = false;
//       }
//
//       break;
//     case "Vibrate":
//       PermissionStatus status = await Permission.sensorsAlways.request();
//       if (status.isGranted) {
//         print("Wake lock permission granted");
//         sets.isOn = true;
//       } else {
//         sets.isOn = false;
//       }
//
//       break;
//
//   // await _prefs.storeList('permissionSettings',permissionSettingsList);
//   }
//
//   notifyListeners();
// }