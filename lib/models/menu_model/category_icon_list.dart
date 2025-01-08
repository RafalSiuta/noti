import 'package:flutter/material.dart';
import 'package:noti/models/menu_model/category_icon_model.dart';

class CategoryIconsList {


  CategoryIconModel getPickedIcon(int id){
   // IconData pickedIcon = Icons.circle;
    CategoryIconModel pickedIcon = CategoryIconModel(
      icon: Icons.circle,
      name: "",
      category: "",
    );
    for(var ico in iconsList){
      if(id == ico.id){
       // pickedIcon = ico.icon;
        pickedIcon = CategoryIconModel(
          id: ico.id,
          icon: ico.icon,
          name: ico.name,
          category: ico.category,
        );
      }
    }
    return pickedIcon;
  }
  //ativities
  //audio
  //brand
  //bussiness
  //text formating
  //communication
  //social
  //ui actions
  //home
  //photo & image
  //security
  //transport
  //travel

  List<CategoryIconModel> iconsList = [
    // Istniejące elementy - bez zmian
    CategoryIconModel(id: 1, icon: Icons.shopping_cart, name: "cart", category: "business & payments"),
    CategoryIconModel(id: 2, icon: Icons.phone, name: "phone", category: "communication"),
    CategoryIconModel(id: 3, icon: Icons.edit, name: "edit", category: "text formatting"),
    CategoryIconModel(id: 4, icon: Icons.people, name: "people", category: "social"),
    CategoryIconModel(id: 5, icon: Icons.search, name: "search", category: "ui actions"),
    CategoryIconModel(id: 6, icon: Icons.computer, name: "computer", category: "business & payments"),
    CategoryIconModel(id: 7, icon: Icons.access_alarm, name: "alarm", category: "activities"),
    CategoryIconModel(id: 8, icon: Icons.favorite, name: "favorite", category: "social"),
    CategoryIconModel(id: 9, icon: Icons.insert_drive_file, name: "file", category: "business & payments"),
    CategoryIconModel(id: 10, icon: Icons.mail, name: "mail", category: "communication"),
    CategoryIconModel(id: 11, icon: Icons.restaurant, name: "restaurant", category: "home"),
    CategoryIconModel(id: 12, icon: Icons.fitness_center, name: "fitness", category: "activities"),
    CategoryIconModel(id: 13, icon: Icons.cake, name: "cake", category: "home"),
    CategoryIconModel(id: 14, icon: Icons.free_breakfast, name: "breakfast", category: "home"),
    CategoryIconModel(id: 15, icon: Icons.comment, name: "comment", category: "communication"),
    CategoryIconModel(id: 16, icon: Icons.colorize, name: "colorize", category: "photo & image"),
    CategoryIconModel(id: 17, icon: Icons.camera_alt, name: "camera", category: "photo & image"),
    CategoryIconModel(id: 18, icon: Icons.cast_for_education, name: "education", category: "activities"),
    CategoryIconModel(id: 19, icon: Icons.work, name: "work", category: "business & payments"),
    CategoryIconModel(id: 20, icon: Icons.weekend, name: "weekend", category: "travel"),
    CategoryIconModel(id: 21, icon: Icons.home, name: "home", category: "home"),
    CategoryIconModel(id: 22, icon: Icons.directions_car, name: "car", category: "transport"),
    CategoryIconModel(id: 23, icon: Icons.directions_bus, name: "bus", category: "transport"),
    CategoryIconModel(id: 24, icon: Icons.thumbs_up_down, name: "thumbs", category: "social"),
    CategoryIconModel(id: 25, icon: Icons.wb_cloudy, name: "cloudy", category: "travel"),
    CategoryIconModel(id: 26, icon: Icons.wb_sunny, name: "sunny", category: "travel"),

    // Dodane elementy

    // activities
    CategoryIconModel(id: 27, icon: Icons.sports_soccer, name: "soccer", category: "activities"),
    CategoryIconModel(id: 28, icon: Icons.pool, name: "pool", category: "activities"),
    CategoryIconModel(id: 29, icon: Icons.bike_scooter, name: "bike", category: "activities"),
    CategoryIconModel(id: 30, icon: Icons.surfing, name: "surfing", category: "activities"),
    CategoryIconModel(id: 31, icon: Icons.kayaking, name: "kayaking", category: "activities"),

    // audio
    CategoryIconModel(id: 32, icon: Icons.audiotrack, name: "audiotrack", category: "audio"),
    CategoryIconModel(id: 33, icon: Icons.volume_up, name: "volume up", category: "audio"),
    CategoryIconModel(id: 34, icon: Icons.headset, name: "headset", category: "audio"),
    CategoryIconModel(id: 35, icon: Icons.mic, name: "microphone", category: "audio"),
    CategoryIconModel(id: 36, icon: Icons.speaker, name: "speaker", category: "audio"),

    // brand
    CategoryIconModel(id: 37, icon: Icons.android, name: "android", category: "brand"),
    CategoryIconModel(id: 38, icon: Icons.apple, name: "apple", category: "brand"),
    //CategoryIconModel(id: 39, icon: Icons.google, name: "google", category: "brand"),
    CategoryIconModel(id: 40, icon: Icons.facebook, name: "facebook", category: "brand"),
    //CategoryIconModel(id: 41, icon: Icons.whatsapp, name: "whatsapp", category: "brand"),

    // business
    CategoryIconModel(id: 42, icon: Icons.business_center, name: "business center", category: "business & payments"),
    CategoryIconModel(id: 43, icon: Icons.monetization_on, name: "money", category: "business & payments"),
    CategoryIconModel(id: 44, icon: Icons.account_balance, name: "account balance", category: "business & payments"),
    CategoryIconModel(id: 45, icon: Icons.credit_card, name: "credit card", category: "business & payments"),
    CategoryIconModel(id: 46, icon: Icons.receipt, name: "receipt", category: "business & payments"),

    // text formatting
    CategoryIconModel(id: 47, icon: Icons.format_bold, name: "bold", category: "text formatting"),
    CategoryIconModel(id: 48, icon: Icons.format_italic, name: "italic", category: "text formatting"),
    CategoryIconModel(id: 49, icon: Icons.format_underlined, name: "underlined", category: "text formatting"),
    CategoryIconModel(id: 50, icon: Icons.format_list_bulleted, name: "list bulleted", category: "text formatting"),
    CategoryIconModel(id: 51, icon: Icons.format_quote, name: "quote", category: "text formatting"),

    // communication
    CategoryIconModel(id: 52, icon: Icons.message, name: "message", category: "communication"),
    CategoryIconModel(id: 53, icon: Icons.chat, name: "chat", category: "communication"),
    CategoryIconModel(id: 54, icon: Icons.call, name: "call", category: "communication"),
    CategoryIconModel(id: 55, icon: Icons.video_call, name: "video call", category: "communication"),
    CategoryIconModel(id: 56, icon: Icons.contact_phone, name: "contact phone", category: "communication"),

    // social
    CategoryIconModel(id: 57, icon: Icons.share, name: "share", category: "social"),
    CategoryIconModel(id: 58, icon: Icons.thumb_up, name: "thumb up", category: "social"),
    CategoryIconModel(id: 59, icon: Icons.group, name: "group", category: "social"),
    CategoryIconModel(id: 60, icon: Icons.public, name: "public", category: "social"),
    CategoryIconModel(id: 61, icon: Icons.notifications, name: "notifications", category: "social"),

    // ui actions
    CategoryIconModel(id: 62, icon: Icons.add, name: "add", category: "ui actions"),
    CategoryIconModel(id: 63, icon: Icons.delete, name: "delete", category: "ui actions"),
    CategoryIconModel(id: 64, icon: Icons.done, name: "done", category: "ui actions"),
    CategoryIconModel(id: 65, icon: Icons.cancel, name: "cancel", category: "ui actions"),
    CategoryIconModel(id: 66, icon: Icons.settings, name: "settings", category: "ui actions"),

    // home
    CategoryIconModel(id: 67, icon: Icons.kitchen, name: "kitchen", category: "home"),
    CategoryIconModel(id: 68, icon: Icons.bed, name: "bed", category: "home"),
    CategoryIconModel(id: 69, icon: Icons.bathroom, name: "bathroom", category: "home"),
    CategoryIconModel(id: 70, icon: Icons.tv, name: "tv", category: "home"),
    CategoryIconModel(id: 71, icon: Icons.garage, name: "garage", category: "home"),

    // photo & image
    CategoryIconModel(id: 72, icon: Icons.photo, name: "photo", category: "photo & image"),
    CategoryIconModel(id: 73, icon: Icons.image, name: "image", category: "photo & image"),
    CategoryIconModel(id: 74, icon: Icons.slideshow, name: "slideshow", category: "photo & image"),
    CategoryIconModel(id: 75, icon: Icons.filter, name: "filter", category: "photo & image"),
    CategoryIconModel(id: 76, icon: Icons.photo_album, name: "photo album", category: "photo & image"),

    // security
    CategoryIconModel(id: 77, icon: Icons.security, name: "security", category: "security"),
    CategoryIconModel(id: 78, icon: Icons.lock, name: "lock", category: "security"),
    CategoryIconModel(id: 79, icon: Icons.fingerprint, name: "fingerprint", category: "security"),
    CategoryIconModel(id: 80, icon: Icons.vpn_key, name: "vpn key", category: "security"),
    CategoryIconModel(id: 81, icon: Icons.verified_user, name: "verified user", category: "security"),

    // transport
    CategoryIconModel(id: 82, icon: Icons.airport_shuttle, name: "shuttle", category: "transport"),
    CategoryIconModel(id: 83, icon: Icons.bike_scooter, name: "scooter", category: "transport"),
    CategoryIconModel(id: 84, icon: Icons.local_shipping, name: "shipping", category: "transport"),
    CategoryIconModel(id: 85, icon: Icons.train, name: "train", category: "transport"),
    CategoryIconModel(id: 86, icon: Icons.flight, name: "flight", category: "transport"),

    // travel
    CategoryIconModel(id: 87, icon: Icons.local_airport, name: "airport", category: "travel"),
    CategoryIconModel(id: 88, icon: Icons.map, name: "map", category: "travel"),
    CategoryIconModel(id: 89, icon: Icons.hotel, name: "hotel", category: "travel"),
    CategoryIconModel(id: 90, icon: Icons.beach_access, name: "beach", category: "travel"),
    CategoryIconModel(id: 91, icon: Icons.hiking, name: "hiking", category: "travel"),
  ];

}
