import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class AppIconCard extends StatelessWidget {
  const AppIconCard({
    super.key,
    this.cardSize = 200.0,
    this.title = 'Noti',
  });

  final double cardSize;
  final String title;

  @override
  Widget build(BuildContext context) {

    var borderRadius = 15.0;

     return
       Card(
         margin: const EdgeInsets.all(15),
         color: Colors.transparent,
         shadowColor: Colors.transparent,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
         ),
         child: SizedBox(
           width: cardSize,
           child: ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
             child: Image.asset(
               'assets/images/splash.png',
               width: cardSize,
               fit: BoxFit.fill,
             ),
           ),
         ),
       );
  }
}
