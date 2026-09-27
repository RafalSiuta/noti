import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    _initialize();
  }

  void _initialize() {}

  final DateFormat mY = DateFormat('dd MMM yyyy');
  final DateFormat wD = DateFormat('EEEE');
  DateTime _date = DateTime.now();

  DateTime get date => _date;
}
