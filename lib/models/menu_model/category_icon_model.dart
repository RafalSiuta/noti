import 'package:flutter/material.dart';

class CategoryIconModel {
  IconData icon;
  String name;
  String category;
  bool isPicked;

  CategoryIconModel({this.icon = Icons.circle, this.name= "" , this.isPicked = false,this.category = ""});

  void onPick(){
    isPicked = !isPicked;
  }
}