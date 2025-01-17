import 'package:flutter/material.dart';

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
