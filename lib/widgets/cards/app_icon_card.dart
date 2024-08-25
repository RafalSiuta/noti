import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../utils/dimensions/size_info.dart';

class AppIconCard extends StatelessWidget {
  const AppIconCard({
    Key? key,
    this.cardSize = 200.0,
    this.title = 'Noti',
    this.isLauncher = false,
  }) : super(key: key);

  final double cardSize;
  final String title;
  final bool isLauncher;

  @override
  Widget build(BuildContext context) {
    var linearGradient  = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, 0.5, 1],
        colors: [
        Color(0xFF00C3FF),
        Color(0xFF1B6BFF),
        Color(0xFF2525FF)
      // Theme.of(context).primaryColor,
      // Theme.of(context).primaryColorLight,
      // Theme.of(context).primaryColorDark,
    ]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 65.0));
    var titleSize = SizeInfo.headerSubtitleSize;
    var launcherStyle =
    // Theme.of(context).textTheme.headlineLarge!.copyWith(
    //   fontSize: 35,
    //   //color: Colors.transparent,
    //   fontWeight: FontWeight.w900,
    //   letterSpacing: 2,
    //   foreground: Paint()..shader = linearGradient
    // );
    GoogleFonts.molle(
        fontSize: 45,
        shadows: [
          Shadow(
            color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
            offset: Offset(2 , 2),
            blurRadius: 2,
          ),
        ],
        fontWeight: FontWeight.w900,
        letterSpacing: 2,
        foreground: Paint()..shader = linearGradient
    );
    var borderRadius = 23.0;

     return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 250),
          childAnimationBuilder: (widget) => ScaleAnimation(
            scale: 0.5,
            child: FadeInAnimation(child: widget),
          ),
          children: [
            Card(
              margin: const EdgeInsets.all(15),
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
              child: SizedBox(
                height: cardSize,
                width: cardSize,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  child: Image.asset(
                    'assets/images/playstore.png',
                    width: cardSize,
                    height: cardSize,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: DefaultTextStyle(
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: titleSize,
                  )),
                  child: Text(title, style: launcherStyle
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
