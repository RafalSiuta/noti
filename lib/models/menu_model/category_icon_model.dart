import 'package:flutter/material.dart';

class CategoryIconModel {

  int? id;
  IconData icon;
  String name;
  String category;
  //bool isPicked;

  CategoryIconModel({this.id,this.icon = Icons.circle, this.name= "" ,this.category = ""});

  // void onPick(){
  //   isPicked = !isPicked;
  // }
}