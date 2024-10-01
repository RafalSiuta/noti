import 'package:flutter/material.dart';
import 'package:noti/models/menu_model/category_icon_model.dart';

class CategoryIconsList {


  IconData pickedIcon = Icons.circle;

  IconData getPickedIcon(int id){
    IconData pickedIcon = Icons.circle;
    for(var ico in iconsList){
      if(id == ico.id){
        pickedIcon = ico.icon;
      }
    }
    return pickedIcon;
  }
  List<CategoryIconModel> iconsList = [
    CategoryIconModel(id:1,icon:Icons.shopping_cart,name:"cart" ,),
    CategoryIconModel(id:2,icon:Icons.phone,name:"phone" ,),
    CategoryIconModel(id:3,icon: Icons.edit, name: "edit", ),
    CategoryIconModel(id:4,icon: Icons.people, name: "people", ),
    CategoryIconModel(id:5,icon: Icons.search, name: "search", ),
    CategoryIconModel(id:6,icon: Icons.computer, name: "computer", ),
    CategoryIconModel(id:7,icon: Icons.access_alarm, name: "alarm", ),
    CategoryIconModel(id:8,icon: Icons.favorite, name: "favorite", ),
    CategoryIconModel(id:9,icon: Icons.insert_drive_file, name: "file", ),
    CategoryIconModel(id:10,icon: Icons.mail, name: "mail", ),
    CategoryIconModel(id:11,icon: Icons.restaurant, name: "restaurant", ),
    CategoryIconModel(id:12,icon: Icons.fitness_center, name: "fitness", ),
    CategoryIconModel(id:13,icon: Icons.cake, name: "cake", ),
    CategoryIconModel(id:14,icon: Icons.free_breakfast, name: "breakfast", ),
    CategoryIconModel(id:15,icon: Icons.comment, name: "comment", ),
    CategoryIconModel(id:16,icon: Icons.colorize, name: "colorize", ),
    CategoryIconModel(id:17,icon: Icons.camera_alt, name: "camera", ),
    CategoryIconModel(id:18,icon: Icons.cast_for_education, name: "education", ),
    CategoryIconModel(id:19,icon: Icons.work, name: "work", ),
    CategoryIconModel(id:20,icon: Icons.weekend, name: "weekend", ),
    CategoryIconModel(id:21,icon: Icons.home, name: "home", ),
    CategoryIconModel(id:22,icon: Icons.directions_car, name: "car", ),
    CategoryIconModel(id:23,icon: Icons.directions_bus, name: "bus", ),
    CategoryIconModel(id:24,icon: Icons.thumbs_up_down, name: "thumbs", ),
    CategoryIconModel(id:25,icon: Icons.wb_cloudy, name: "cloudy", ),
    CategoryIconModel(id:26,icon: Icons.wb_sunny, name: "sunny", ),
    // Icons.shopping_cart,
    // Icons.local_phone,
    // Icons.edit,
    // Icons.people,
    // Icons.search,
    // Icons.computer,
    // Icons.access_alarm,
    // Icons.favorite,
    // Icons.insert_drive_file,
    // Icons.mail,
    // Icons.shopping_cart,
    // Icons.restaurant,
    // Icons.fitness_center,
    // Icons.cake,
    // Icons.free_breakfast,
    // Icons.comment,
    // Icons.colorize,
    // Icons.camera_alt,
    // Icons.cast_for_education,
    // Icons.work,
    // Icons.weekend,
    // Icons.home,
    // Icons.directions_car,
    // Icons.directions_bus,
    // Icons.search,
    // Icons.thumbs_up_down,
    // Icons.wb_cloudy,
    // Icons.wb_sunny,
  ];
}
