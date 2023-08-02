import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:noti_2/providers/settings_provider.dart';

import '../../model/theme_model/shapes_list.dart';
import '../../utils/prefs/prefs.dart';
import '../../widgets/shapes/shape_paths/shape1.dart';

// class ShapeChanger extends SettingsProvider {
//
//   ShapeChanger(super.themeData);
//
//   final Prefs prefs = Prefs();
//
//   //bool isThemeChangeMonthly = false;
//
//   // bool isShapeTransparent = false;
//   //
//   // CustomClipper<Path> shapes = Shape1();
//   // ShapesList shapesList = ShapesList();
//   //
//   // int currentShape = 0;
//   //
//   // getShape() {
//   //   return shapes;
//   // }
//   //
//   // Future<CustomClipper<Path>> loadShape() async {
//   //   try {
//   //    // await updateCalendarSettings();
//   //     if (isThemeChangeMonthly == true) {
//   //       setCustomShape(currentShape);
//   //     } else {
//   //       currentShape = await prefs
//   //           .restoreInt("shape", 0)
//   //           .then((shape) => setCustomShape(shape));
//   //     }
//   //   } catch (e) {
//   //     currentShape = 0;
//   //   }
//   //
//   //   return shapes;
//   // }
//   //
//   // setTransparency() {
//   //   if (currentShape == 0 || currentShape == 7) {
//   //     isShapeTransparent = true;
//   //   } else {
//   //     isShapeTransparent = false;
//   //   }
//   //   notifyListeners();
//   //   return isShapeTransparent;
//   // }
//   //
//   // setCustomShape(int shape) async {
//   //   currentShape = shape;
//   //   shapes = shapesList.shapesList[currentShape];
//   //   setTransparency();
//   //   await prefs.storeInt("shape", currentShape);
//   //   notifyListeners();
//   // }
//   //
//   // CarouselController carouselController = CarouselController();
//   //
//   // goToPrevious() {
//   //   carouselController.previousPage(
//   //       duration: const Duration(milliseconds: 300), curve: Curves.ease);
//   //
//   //   prefs.storeInt('shape', currentShape);
//   //   notifyListeners();
//   // }
//   //
//   // goToNext() {
//   //   carouselController.nextPage(
//   //       duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
//   //   prefs.storeInt('shape', currentShape);
//   //   notifyListeners();
//   // }
//   //
//   // onActivityChange(int index) {
//   //   currentShape = index;
//   //   setCustomShape(currentShape);
//   //   notifyListeners();
//   // }
//
// }