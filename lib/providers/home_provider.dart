import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
//import 'package:package_info_plus/package_info_plus.dart';

class HomeProvider extends ChangeNotifier {


  // HomeProvider(){
  //   initHomeProvider();
  // }
  // void initHomeProvider() async {
  //   PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //
  //   String appName = packageInfo.appName;
  //   String packageName = packageInfo.packageName;
  //   String version = packageInfo.version;
  //   String buildNumber = packageInfo.buildNumber;
  //
  //   print("APP NAME ${appName}\nPackage NAME ${packageName}\nVersion:  ${version}\nBUILD NUMBER ${buildNumber}\n");
  //   notifyListeners();
  // }

  final mY = DateFormat('dd MMM yy');
  final wD = DateFormat('EEEE');
  final date = DateTime.now();


}
