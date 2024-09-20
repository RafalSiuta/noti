import 'package:flutter/material.dart';

class CategoryIconModel {
  IconData icon;
  String name;
  String category;
  //bool isPicked;

  CategoryIconModel({this.icon = Icons.circle, this.name= "" ,this.category = ""});

  // void onPick(){
  //   isPicked = !isPicked;
  // }
}