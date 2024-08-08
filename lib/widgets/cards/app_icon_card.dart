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
    var titleSize = SizeInfo.headerSubtitleSize;
    var launcherStyle = GoogleFonts.greatVibes(
        textStyle: TextStyle(
            color: Colors.grey.shade700, fontSize: 60, letterSpacing: 2));
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
              margin: const EdgeInsets.all(32),
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(cardSize / 2)),
              ),
              child: SizedBox(
                height: cardSize,
                width: cardSize,
                child: Image.asset(
                  'assets/images/noti.png',
                  width: cardSize,
                  height: cardSize,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31),
              child: Center(
                child: DefaultTextStyle(
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: titleSize,
                  )),
                  child: Transform.rotate(
                    angle: -0.35,
                    child: Text(title, style: launcherStyle

                        // isLauncher
                        //     ? launcherStyle
                        //     : Theme.of(context)
                        //         .textTheme
                        //         .headline2!
                        //         .copyWith(letterSpacing: 2, fontSize: titleSize),
                        ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
