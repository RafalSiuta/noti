import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/permission_model/permission_model.dart';
import '../../models/settings_model/settings_model/settings_model.dart';
import '../../models/settings_model/trash_settings_model/trash_model.dart';

class Prefs extends ChangeNotifier {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void deleteKey(String key)async{
    final sp = await SharedPreferences.getInstance();
    await sp.remove(key);
  }

  Future<void> storeInt(String key, int value) async {
    final prefs = await _prefs;
    await prefs.setInt(key, value);
    notifyListeners();
  }

  Future<int> restoreInt(String key, int input) async {
    final prefs = await _prefs;
    final inputValue = prefs.getInt(key) ?? 0;
    input = inputValue;
    notifyListeners();
    return input;
  }

  Future<void> storeString(String key, String value) async {
    final prefs = await _prefs;
    await prefs.setString(key, value);
    notifyListeners();
  }

  Future<String> restoreString(String key, String input) async {
    final prefs = await _prefs;
    final inputValue = prefs.getString(key) ?? "";
    input = inputValue;
    notifyListeners();
    return input;
  }

  Future<void> storeDouble(String key, double value) async {
    final prefs = await _prefs;
    await prefs.setDouble(key, value);
    notifyListeners();
  }

  Future<double> restoreDouble(String key, double input) async {
    final prefs = await _prefs;
    final inputValue = prefs.getDouble(key) ?? 0;
    input = inputValue;
    notifyListeners();
    return input;
  }

  Future<void> storeBool(String key, bool value) async {
    final prefs = await _prefs;
    await prefs.setBool(key, value);
    notifyListeners();
  }

  Future<bool> restoreBool(String key, bool input) async {
    final prefs = await _prefs;
    final inputValue = prefs.getBool(key);// ?? null;
    if(inputValue != null){
      input = inputValue;
    }else{
      return input;
    }
    notifyListeners();
    return input;
  }

  Future storeList(String key, List list) async {
    List<String> itemsList = list.map((f) => json.encode(f.toMap())).toList();

    final prefs = await _prefs;

    await prefs.setStringList(key, itemsList);
    notifyListeners();
  }

  /// Zapisz TYLKO stany (lista booli) jako JSON-String:
  Future<void> storeStatesLite(String key, List<SettingsModel> items) async {
    final prefs = await SharedPreferences.getInstance();
    final states = items.map((e) => e.isOn ?? false).toList();
    await prefs.setString(key, jsonEncode(states));
    notifyListeners();
  }

  /// Odczytaj TYLKO stany. Jeśli brak – zwróć domyślne.
  // Future<List<bool>> restoreStatesLite(String key, List<SettingsModel> defaults) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final raw = prefs.getString(key);
  //   if (raw != null) {
  //     try {
  //       final List decoded = jsonDecode(raw) as List;
  //       return decoded.map((e) {
  //         if (e is bool) return e;
  //         if (e is num)  return e != 0;
  //         if (e is String) return (e == '1' || e.toLowerCase() == 'true');
  //         return false;
  //       }).toList();
  //     } catch (_) {/* w razie błędu spadnij do domyślnych */}
  //   }
  //   return defaults.map((e) => e.isOn ?? false).toList();
  // }
  Future<List<bool>> restoreStatesLite(
      String key,
      List<SettingsModel> defaults,
      ) async {
    final prefs = await SharedPreferences.getInstance();

    // 1) Pobierz surowy obiekt bez rzutowania
    final obj = prefs.get(key);

    // A) Legacy: List<String> z pełnymi obiektami => zrób migrację
    if (obj is List<String>) {
      try {
        final decoded = obj
            .map((s) => jsonDecode(s) as Map<String, dynamic>)
            .toList();

        final states = decoded.map((m) {
          final v = m['is_on'];
          if (v is bool) return v;
          if (v is num) return v != 0;
          if (v is String) return (v == '1' || v.toLowerCase() == 'true');
          return false;
        }).toList();

        // Nadpisz wartością w NOWYM formacie (String z JSON)
        await prefs.remove(key); // (opcjonalnie, ale bezpiecznie przy zmianie typu)
        await prefs.setString(key, jsonEncode(states));
        return states;
      } catch (_) {
        // jeśli się nie udało – lecimy dalej do domyślnych
      }
    }

    // B) Nowy format: String z JSON listą booli
    if (obj is String) {
      try {
        final List<dynamic> decoded = jsonDecode(obj) as List<dynamic>;
        return decoded.map((e) {
          if (e is bool) return e;
          if (e is num) return e != 0;
          if (e is String) return (e == '1' || e.toLowerCase() == 'true');
          return false;
        }).toList();
      } catch (_) {
        // zły JSON -> domyślne
      }
    }

    // C) Nic sensownego pod kluczem → domyślne z kodu
    return defaults.map((e) => e.isOn ?? false).toList();
  }



  //todo make it universal - fromMap method here:
  Future<List<SettingsModel>> restoreList(
      String key, List<SettingsModel> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getStringList(key);

    try {
      if (result != null) {
        list = result.map((i) {
          return SettingsModel.fromMap(jsonDecode(i));
        }).toList();
      }
    } catch (e) {}

    notifyListeners();
    return list;
  }
  Future<List<PermissionModel>> restorePermissionsList(
      String key, List<PermissionModel> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getStringList(key);

    try {
      if (result != null) {
        list = result.map((i) {
          return PermissionModel.fromMap(jsonDecode(i));
        }).toList();
      }
    } catch (e) {}

    notifyListeners();
    return list;
  }

  //dynamic restore lists:
  Future<List<T>> restoreObjectList<T>(
      String key,
      List<T> list,
      T Function(Map<String, dynamic>) fromMapFunction
      ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getStringList(key);

    try {
      if (result != null) {
        list = result.map((i) {
          return fromMapFunction(jsonDecode(i) as Map<String, dynamic>);
        }).toList();
      }
    } catch (e) {

    }

    notifyListeners();
    return list;
  }



  Future<List<TrashModel>> restoreTrashList(
      String key, List<TrashModel> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getStringList(key);

    try {
      if (result != null) {
        list = result.map((i) {
          return TrashModel.fromMap(jsonDecode(i));
        }).toList();
      }
    } catch (e) {}

    notifyListeners();
    return list;
  }
}
