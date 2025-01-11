import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {

   // _startDateTimeUpdates();
  }

  final DateFormat mY = DateFormat('dd MMM yyyy');
  final DateFormat wD = DateFormat('EEEE');
  DateTime _date = DateTime.now();

  // Pobierz aktualny czas
  DateTime get date => _date;

  // Rozpocznij aktualizację czasu
  void _startDateTimeUpdates() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _date = DateTime.now(); // Aktualizuj datę na bieżąco
      print("HOME PROVIDER DATE: ${_date}");
      notifyListeners(); // Powiadom listenerów o zmianie
    });
  }
}

