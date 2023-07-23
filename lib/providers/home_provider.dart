import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../model/header_model/header_model.dart';

class HomeProvider extends ChangeNotifier {
  // final mY = DateFormat('dd MMM yy');
  // final wD = DateFormat('EEEE');
  // final date = DateTime.now();

  HeaderModel currentDate = HeaderModel();

  String? date;
  String? weekday;

  HomeProvider(){
    date = currentDate.fullDate.format(currentDate.date);
    weekday = currentDate.weekDay.format(currentDate.date);
  }
}
