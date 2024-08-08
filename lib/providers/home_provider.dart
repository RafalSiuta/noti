import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomeProvider extends ChangeNotifier {
  final mY = DateFormat('dd MMM yy');
  final wD = DateFormat('EEEE');
  final date = DateTime.now();
}
