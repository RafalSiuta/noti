import 'package:flutter/material.dart';

import 'category_icon_model.dart';

class CategoryIconsList {


  CategoryIconModel getPickedIcon(int id){
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

  List<CategoryIconModel> iconsList =
  [
    CategoryIconModel(id: 1, icon: Icons.shopping_cart, name: "icons_text.cart", category: "business & payments"),
    CategoryIconModel(id: 2, icon: Icons.phone, name: "icons_text.phone", category: "communication"),
    CategoryIconModel(id: 3, icon: Icons.edit, name: "icons_text.edit", category: "text formatting"),
    CategoryIconModel(id: 4, icon: Icons.people, name: "icons_text.people", category: "social"),
    CategoryIconModel(id: 5, icon: Icons.search, name: "icons_text.search", category: "ui actions"),
    CategoryIconModel(id: 6, icon: Icons.computer, name: "icons_text.computer", category: "business & payments"),
    CategoryIconModel(id: 7, icon: Icons.access_alarm, name: "icons_text.alarm", category: "activities"),
    CategoryIconModel(id: 8, icon: Icons.favorite, name: "icons_text.favorite", category: "social"),
    CategoryIconModel(id: 9, icon: Icons.insert_drive_file, name: "icons_text.file", category: "business & payments"),
    CategoryIconModel(id: 10, icon: Icons.mail, name: "icons_text.mail", category: "communication"),
    CategoryIconModel(id: 11, icon: Icons.restaurant, name: "icons_text.restaurant", category: "home"),
    CategoryIconModel(id: 12, icon: Icons.fitness_center, name: "icons_text.fitness", category: "activities"),
    CategoryIconModel(id: 13, icon: Icons.cake, name: "icons_text.cake", category: "home"),
    CategoryIconModel(id: 14, icon: Icons.free_breakfast, name: "icons_text.breakfast", category: "home"),
    CategoryIconModel(id: 15, icon: Icons.comment, name: "icons_text.comment", category: "communication"),
    CategoryIconModel(id: 16, icon: Icons.colorize, name: "icons_text.colorize", category: "photo & image"),
    CategoryIconModel(id: 17, icon: Icons.camera_alt, name: "icons_text.camera", category: "photo & image"),
    CategoryIconModel(id: 18, icon: Icons.cast_for_education, name: "icons_text.education", category: "activities"),
    CategoryIconModel(id: 19, icon: Icons.work, name: "icons_text.work", category: "business & payments"),
    CategoryIconModel(id: 20, icon: Icons.weekend, name: "icons_text.weekend", category: "travel"),
    CategoryIconModel(id: 21, icon: Icons.home, name: "icons_text.home", category: "home"),
    CategoryIconModel(id: 22, icon: Icons.directions_car, name: "icons_text.car", category: "transport"),
    CategoryIconModel(id: 23, icon: Icons.directions_bus, name: "icons_text.bus", category: "transport"),
    CategoryIconModel(id: 24, icon: Icons.thumbs_up_down, name: "icons_text.thumbs", category: "social"),
    CategoryIconModel(id: 25, icon: Icons.wb_cloudy, name: "icons_text.cloudy", category: "travel"),
    CategoryIconModel(id: 26, icon: Icons.wb_sunny, name: "icons_text.sunny", category: "travel"),

    // activities
    CategoryIconModel(id: 27, icon: Icons.sports_soccer, name: "icons_text.soccer", category: "activities"),
    CategoryIconModel(id: 28, icon: Icons.pool, name: "icons_text.pool", category: "activities"),
    CategoryIconModel(id: 29, icon: Icons.bike_scooter, name: "icons_text.bike", category: "activities"),
    CategoryIconModel(id: 30, icon: Icons.surfing, name: "icons_text.surfing", category: "activities"),
    CategoryIconModel(id: 31, icon: Icons.kayaking, name: "icons_text.kayaking", category: "activities"),

    // audio
    CategoryIconModel(id: 32, icon: Icons.audiotrack, name: "icons_text.audiotrack", category: "audio"),
    CategoryIconModel(id: 33, icon: Icons.volume_up, name: "icons_text.volume_up", category: "audio"),
    CategoryIconModel(id: 34, icon: Icons.headset, name: "icons_text.headset", category: "audio"),
    CategoryIconModel(id: 35, icon: Icons.mic, name: "icons_text.microphone", category: "audio"),
    CategoryIconModel(id: 36, icon: Icons.speaker, name: "icons_text.speaker", category: "audio"),

    // brand
    CategoryIconModel(id: 37, icon: Icons.android, name: "icons_text.android", category: "brand"),
    CategoryIconModel(id: 38, icon: Icons.apple, name: "icons_text.apple", category: "brand"),
    CategoryIconModel(id: 39, icon: Icons.g_mobiledata, name: "icons_text.google", category: "brand"),
    CategoryIconModel(id: 40, icon: Icons.facebook, name: "icons_text.facebook", category: "brand"),
    // CategoryIconModel(id: 41, icon: Icons., name: "icons_text.whatsapp", category: "brand"),

    // business
    CategoryIconModel(id: 42, icon: Icons.business_center, name: "icons_text.business_center", category: "business & payments"),
    CategoryIconModel(id: 43, icon: Icons.monetization_on, name: "icons_text.money", category: "business & payments"),
    CategoryIconModel(id: 44, icon: Icons.account_balance, name: "icons_text.account_balance", category: "business & payments"),
    CategoryIconModel(id: 45, icon: Icons.credit_card, name: "icons_text.credit_card", category: "business & payments"),
    CategoryIconModel(id: 46, icon: Icons.receipt, name: "icons_text.receipt", category: "business & payments"),

    // text formatting
    CategoryIconModel(id: 47, icon: Icons.format_bold, name: "icons_text.bold", category: "text formatting"),
    CategoryIconModel(id: 48, icon: Icons.format_italic, name: "icons_text.italic", category: "text formatting"),
    CategoryIconModel(id: 49, icon: Icons.format_underlined, name: "icons_text.underlined", category: "text formatting"),
    CategoryIconModel(id: 50, icon: Icons.format_list_bulleted, name: "icons_text.list_bulleted", category: "text formatting"),
    CategoryIconModel(id: 51, icon: Icons.format_quote, name: "icons_text.quote", category: "text formatting"),

    // communication
    CategoryIconModel(id: 52, icon: Icons.message, name: "icons_text.message", category: "communication"),
    CategoryIconModel(id: 53, icon: Icons.chat, name: "icons_text.chat", category: "communication"),
    CategoryIconModel(id: 54, icon: Icons.call, name: "icons_text.call", category: "communication"),
    CategoryIconModel(id: 55, icon: Icons.video_call, name: "icons_text.video_call", category: "communication"),
    CategoryIconModel(id: 56, icon: Icons.contact_phone, name: "icons_text.contact_phone", category: "communication"),

    // social
    CategoryIconModel(id: 57, icon: Icons.share, name: "icons_text.share", category: "social"),
    CategoryIconModel(id: 58, icon: Icons.thumb_up, name: "icons_text.thumb_up", category: "social"),
    CategoryIconModel(id: 59, icon: Icons.group, name: "icons_text.group", category: "social"),
    CategoryIconModel(id: 60, icon: Icons.public, name: "icons_text.public", category: "social"),
    CategoryIconModel(id: 61, icon: Icons.notifications, name: "icons_text.notifications", category: "social"),

    // ui actions
    CategoryIconModel(id: 62, icon: Icons.add, name: "icons_text.add", category: "ui actions"),
    CategoryIconModel(id: 63, icon: Icons.delete, name: "icons_text.delete", category: "ui actions"),
    CategoryIconModel(id: 64, icon: Icons.done, name: "icons_text.done", category: "ui actions"),
    CategoryIconModel(id: 65, icon: Icons.cancel, name: "icons_text.cancel", category: "ui actions"),
    CategoryIconModel(id: 66, icon: Icons.settings, name: "icons_text.settings", category: "ui actions"),

    // home
    CategoryIconModel(id: 67, icon: Icons.kitchen, name: "icons_text.kitchen", category: "home"),
    CategoryIconModel(id: 68, icon: Icons.bed, name: "icons_text.bed", category: "home"),
    CategoryIconModel(id: 69, icon: Icons.bathroom, name: "icons_text.bathroom", category: "home"),
    CategoryIconModel(id: 70, icon: Icons.tv, name: "icons_text.tv", category: "home"),
    CategoryIconModel(id: 71, icon: Icons.garage, name: "icons_text.garage", category: "home"),

    // photo & image
    CategoryIconModel(id: 72, icon: Icons.photo, name: "icons_text.photo", category: "photo & image"),
    CategoryIconModel(id: 73, icon: Icons.image, name: "icons_text.image", category: "photo & image"),
    CategoryIconModel(id: 74, icon: Icons.slideshow, name: "icons_text.slideshow", category: "photo & image"),
    CategoryIconModel(id: 75, icon: Icons.filter, name: "icons_text.filter", category: "photo & image"),
    CategoryIconModel(id: 76, icon: Icons.photo_album, name: "icons_text.photo_album", category: "photo & image"),

    // security
    CategoryIconModel(id: 77, icon: Icons.security, name: "icons_text.security", category: "security"),
    CategoryIconModel(id: 78, icon: Icons.lock, name: "icons_text.lock", category: "security"),
    CategoryIconModel(id: 79, icon: Icons.fingerprint, name: "icons_text.fingerprint", category: "security"),
    CategoryIconModel(id: 80, icon: Icons.vpn_key, name: "icons_text.vpn_key", category: "security"),
    CategoryIconModel(id: 81, icon: Icons.verified_user, name: "icons_text.verified_user", category: "security"),

    // transport
    CategoryIconModel(id: 82, icon: Icons.airport_shuttle, name: "icons_text.shuttle", category: "transport"),
    CategoryIconModel(id: 83, icon: Icons.bike_scooter, name: "icons_text.scooter", category: "transport"),
    CategoryIconModel(id: 84, icon: Icons.local_shipping, name: "icons_text.shipping", category: "transport"),
    CategoryIconModel(id: 85, icon: Icons.train, name: "icons_text.train", category: "transport"),
    CategoryIconModel(id: 86, icon: Icons.flight, name: "icons_text.flight", category: "transport"),

    // travel
    CategoryIconModel(id: 87, icon: Icons.local_airport, name: "icons_text.airport", category: "travel"),
    CategoryIconModel(id: 88, icon: Icons.map, name: "icons_text.map", category: "travel"),
    CategoryIconModel(id: 89, icon: Icons.hotel, name: "icons_text.hotel", category: "travel"),
    CategoryIconModel(id: 90, icon: Icons.beach_access, name: "icons_text.beach", category: "travel"),
    CategoryIconModel(id: 91, icon: Icons.hiking, name: "icons_text.hiking", category: "travel"),

    // ideas
    CategoryIconModel(id: 92, icon: Icons.lightbulb, name: "icons_text.lightbulb", category: "ideas"),
  ];

// [
  //   CategoryIconModel(id: 1, icon: Icons.shopping_cart, name: "cart", category: "business & payments"),
  //   CategoryIconModel(id: 2, icon: Icons.phone, name: "phone", category: "communication"),
  //   CategoryIconModel(id: 3, icon: Icons.edit, name: "edit", category: "text formatting"),
  //   CategoryIconModel(id: 4, icon: Icons.people, name: "people", category: "social"),
  //   CategoryIconModel(id: 5, icon: Icons.search, name: "search", category: "ui actions"),
  //   CategoryIconModel(id: 6, icon: Icons.computer, name: "computer", category: "business & payments"),
  //   CategoryIconModel(id: 7, icon: Icons.access_alarm, name: "alarm", category: "activities"),
  //   CategoryIconModel(id: 8, icon: Icons.favorite, name: "favorite", category: "social"),
  //   CategoryIconModel(id: 9, icon: Icons.insert_drive_file, name: "file", category: "business & payments"),
  //   CategoryIconModel(id: 10, icon: Icons.mail, name: "mail", category: "communication"),
  //   CategoryIconModel(id: 11, icon: Icons.restaurant, name: "restaurant", category: "home"),
  //   CategoryIconModel(id: 12, icon: Icons.fitness_center, name: "fitness", category: "activities"),
  //   CategoryIconModel(id: 13, icon: Icons.cake, name: "cake", category: "home"),
  //   CategoryIconModel(id: 14, icon: Icons.free_breakfast, name: "breakfast", category: "home"),
  //   CategoryIconModel(id: 15, icon: Icons.comment, name: "comment", category: "communication"),
  //   CategoryIconModel(id: 16, icon: Icons.colorize, name: "colorize", category: "photo & image"),
  //   CategoryIconModel(id: 17, icon: Icons.camera_alt, name: "camera", category: "photo & image"),
  //   CategoryIconModel(id: 18, icon: Icons.cast_for_education, name: "education", category: "activities"),
  //   CategoryIconModel(id: 19, icon: Icons.work, name: "work", category: "business & payments"),
  //   CategoryIconModel(id: 20, icon: Icons.weekend, name: "weekend", category: "travel"),
  //   CategoryIconModel(id: 21, icon: Icons.home, name: "home", category: "home"),
  //   CategoryIconModel(id: 22, icon: Icons.directions_car, name: "car", category: "transport"),
  //   CategoryIconModel(id: 23, icon: Icons.directions_bus, name: "bus", category: "transport"),
  //   CategoryIconModel(id: 24, icon: Icons.thumbs_up_down, name: "thumbs", category: "social"),
  //   CategoryIconModel(id: 25, icon: Icons.wb_cloudy, name: "cloudy", category: "travel"),
  //   CategoryIconModel(id: 26, icon: Icons.wb_sunny, name: "sunny", category: "travel"),
  //
  //   // Dodane elementy
  //
  //   // activities
  //   CategoryIconModel(id: 27, icon: Icons.sports_soccer, name: "soccer", category: "activities"),
  //   CategoryIconModel(id: 28, icon: Icons.pool, name: "pool", category: "activities"),
  //   CategoryIconModel(id: 29, icon: Icons.bike_scooter, name: "bike", category: "activities"),
  //   CategoryIconModel(id: 30, icon: Icons.surfing, name: "surfing", category: "activities"),
  //   CategoryIconModel(id: 31, icon: Icons.kayaking, name: "kayaking", category: "activities"),
  //
  //   // audio
  //   CategoryIconModel(id: 32, icon: Icons.audiotrack, name: "audiotrack", category: "audio"),
  //   CategoryIconModel(id: 33, icon: Icons.volume_up, name: "volume up", category: "audio"),
  //   CategoryIconModel(id: 34, icon: Icons.headset, name: "headset", category: "audio"),
  //   CategoryIconModel(id: 35, icon: Icons.mic, name: "microphone", category: "audio"),
  //   CategoryIconModel(id: 36, icon: Icons.speaker, name: "speaker", category: "audio"),
  //
  //   // brand
  //   CategoryIconModel(id: 37, icon: Icons.android, name: "android", category: "brand"),
  //   CategoryIconModel(id: 38, icon: Icons.apple, name: "apple", category: "brand"),
  //   CategoryIconModel(id: 39, icon: Icons.g_mobiledata, name: "google", category: "brand"),
  //   CategoryIconModel(id: 40, icon: Icons.facebook, name: "facebook", category: "brand"),
  //   //CategoryIconModel(id: 41, icon: Icons., name: "whatsapp", category: "brand"),
  //
  //   // business
  //   CategoryIconModel(id: 42, icon: Icons.business_center, name: "business center", category: "business & payments"),
  //   CategoryIconModel(id: 43, icon: Icons.monetization_on, name: "money", category: "business & payments"),
  //   CategoryIconModel(id: 44, icon: Icons.account_balance, name: "account balance", category: "business & payments"),
  //   CategoryIconModel(id: 45, icon: Icons.credit_card, name: "credit card", category: "business & payments"),
  //   CategoryIconModel(id: 46, icon: Icons.receipt, name: "receipt", category: "business & payments"),
  //
  //   // text formatting
  //   CategoryIconModel(id: 47, icon: Icons.format_bold, name: "bold", category: "text formatting"),
  //   CategoryIconModel(id: 48, icon: Icons.format_italic, name: "italic", category: "text formatting"),
  //   CategoryIconModel(id: 49, icon: Icons.format_underlined, name: "underlined", category: "text formatting"),
  //   CategoryIconModel(id: 50, icon: Icons.format_list_bulleted, name: "list bulleted", category: "text formatting"),
  //   CategoryIconModel(id: 51, icon: Icons.format_quote, name: "quote", category: "text formatting"),
  //
  //   // communication
  //   CategoryIconModel(id: 52, icon: Icons.message, name: "message", category: "communication"),
  //   CategoryIconModel(id: 53, icon: Icons.chat, name: "chat", category: "communication"),
  //   CategoryIconModel(id: 54, icon: Icons.call, name: "call", category: "communication"),
  //   CategoryIconModel(id: 55, icon: Icons.video_call, name: "video call", category: "communication"),
  //   CategoryIconModel(id: 56, icon: Icons.contact_phone, name: "contact phone", category: "communication"),
  //
  //   // social
  //   CategoryIconModel(id: 57, icon: Icons.share, name: "share", category: "social"),
  //   CategoryIconModel(id: 58, icon: Icons.thumb_up, name: "thumb up", category: "social"),
  //   CategoryIconModel(id: 59, icon: Icons.group, name: "group", category: "social"),
  //   CategoryIconModel(id: 60, icon: Icons.public, name: "public", category: "social"),
  //   CategoryIconModel(id: 61, icon: Icons.notifications, name: "notifications", category: "social"),
  //
  //   // ui actions
  //   CategoryIconModel(id: 62, icon: Icons.add, name: "add", category: "ui actions"),
  //   CategoryIconModel(id: 63, icon: Icons.delete, name: "delete", category: "ui actions"),
  //   CategoryIconModel(id: 64, icon: Icons.done, name: "done", category: "ui actions"),
  //   CategoryIconModel(id: 65, icon: Icons.cancel, name: "cancel", category: "ui actions"),
  //   CategoryIconModel(id: 66, icon: Icons.settings, name: "settings", category: "ui actions"),
  //
  //   // home
  //   CategoryIconModel(id: 67, icon: Icons.kitchen, name: "kitchen", category: "home"),
  //   CategoryIconModel(id: 68, icon: Icons.bed, name: "bed", category: "home"),
  //   CategoryIconModel(id: 69, icon: Icons.bathroom, name: "bathroom", category: "home"),
  //   CategoryIconModel(id: 70, icon: Icons.tv, name: "tv", category: "home"),
  //   CategoryIconModel(id: 71, icon: Icons.garage, name: "garage", category: "home"),
  //
  //   // photo & image
  //   CategoryIconModel(id: 72, icon: Icons.photo, name: "photo", category: "photo & image"),
  //   CategoryIconModel(id: 73, icon: Icons.image, name: "image", category: "photo & image"),
  //   CategoryIconModel(id: 74, icon: Icons.slideshow, name: "slideshow", category: "photo & image"),
  //   CategoryIconModel(id: 75, icon: Icons.filter, name: "filter", category: "photo & image"),
  //   CategoryIconModel(id: 76, icon: Icons.photo_album, name: "photo album", category: "photo & image"),
  //
  //   // security
  //   CategoryIconModel(id: 77, icon: Icons.security, name: "security", category: "security"),
  //   CategoryIconModel(id: 78, icon: Icons.lock, name: "lock", category: "security"),
  //   CategoryIconModel(id: 79, icon: Icons.fingerprint, name: "fingerprint", category: "security"),
  //   CategoryIconModel(id: 80, icon: Icons.vpn_key, name: "vpn key", category: "security"),
  //   CategoryIconModel(id: 81, icon: Icons.verified_user, name: "verified user", category: "security"),
  //
  //   // transport
  //   CategoryIconModel(id: 82, icon: Icons.airport_shuttle, name: "shuttle", category: "transport"),
  //   CategoryIconModel(id: 83, icon: Icons.bike_scooter, name: "scooter", category: "transport"),
  //   CategoryIconModel(id: 84, icon: Icons.local_shipping, name: "shipping", category: "transport"),
  //   CategoryIconModel(id: 85, icon: Icons.train, name: "train", category: "transport"),
  //   CategoryIconModel(id: 86, icon: Icons.flight, name: "flight", category: "transport"),
  //
  //   // travel
  //   CategoryIconModel(id: 87, icon: Icons.local_airport, name: "airport", category: "travel"),
  //   CategoryIconModel(id: 88, icon: Icons.map, name: "map", category: "travel"),
  //   CategoryIconModel(id: 89, icon: Icons.hotel, name: "hotel", category: "travel"),
  //   CategoryIconModel(id: 90, icon: Icons.beach_access, name: "beach", category: "travel"),
  //   CategoryIconModel(id: 91, icon: Icons.hiking, name: "hiking", category: "travel"),
  //
  //   //ideas
  //   CategoryIconModel(id: 92, icon: Icons.lightbulb, name: "lightbulb", category: "ideas"),
  // ];

}
