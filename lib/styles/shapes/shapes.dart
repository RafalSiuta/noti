import 'package:flutter/material.dart';
import 'package:noti/styles/shapes/paints/art1.dart';
import 'package:noti/styles/shapes/paints/art2.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        double opacity =
            settingsProvider.isShapeTransparent == true ? 1.0 : 0.3;
        return Align(
          alignment: Alignment.topLeft,
          child:
          // CustomPaint(
          //   size: Size(screenWidth,screenHeight),
          //   painter: Art2(
          //       colors: [
          //         Theme.of(context).primaryColor,//.withOpacity(opacity),
          //         Theme.of(context)
          //             .primaryColorLight,
          //         // .withOpacity(opacity),
          //         Theme.of(context).primaryColorDark//.withOpacity(opacity),
          //       ]
          //   ),
          // ),
          AspectRatio(
            aspectRatio: screenWidth/screenHeight,
            child:

            ClipPath(
              clipper: settingsProvider.getShape(),
              child: AnimatedContainer(
                duration: const Duration(microseconds: 500),
                decoration: BoxDecoration(
                    // borderRadius: const BorderRadius.all(
                    //   Radius.circular(0.0),
                    // ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      stops: const [0.0, 0.5, 1.0],
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(opacity),
                        Theme.of(context)
                            .primaryColorLight
                            .withOpacity(opacity),
                        Theme.of(context).primaryColorDark.withOpacity(opacity),
                      ],
                    )),
              ),
            ),
          ),
        );
      },
    );
  }
}

// class ShapeBackgroundClip extends CustomClipper<Path> {
//   ShapeBackgroundClip({this.shapeIndex = 0});
//
//   final int shapeIndex;
//   @override
//   Path getClip(Size size) {
//     Path path3 = Path();
//     path3.moveTo(size.width * 0.2419341, size.height * 0.7880683);
//     path3.cubicTo(
//         size.width * 0.2419341,
//         size.height * 0.7880683,
//         size.width * 0.2373903,
//         size.height * 0.8746094,
//         size.width * 0.3941971,
//         size.height * 0.8660403);
//     path3.cubicTo(
//         size.width * 0.3941971,
//         size.height * 0.8660403,
//         size.width * 0.4335611,
//         size.height * 0.9455464,
//         size.width * 0.4769475,
//         size.height * 0.9733669);
//     path3.cubicTo(
//         size.width * 0.4769475,
//         size.height * 0.9733669,
//         size.width * 0.5124600,
//         size.height * 0.9884942,
//         size.width * 0.5334587,
//         size.height * 0.9898867);
//     path3.cubicTo(
//         size.width * 0.5334587,
//         size.height * 0.9898867,
//         size.width * 0.4467933,
//         size.height * 0.9226881,
//         size.width * 0.4298503,
//         size.height * 0.8632845);
//     path3.cubicTo(
//         size.width * 0.4298503,
//         size.height * 0.8632845,
//         size.width * 0.5477319,
//         size.height * 0.8421065,
//         size.width * 0.5904830,
//         size.height * 0.7278637);
//     path3.cubicTo(
//         size.width * 0.5904830,
//         size.height * 0.7278637,
//         size.width * 0.5412322,
//         size.height * 0.7627687,
//         size.width * 0.4720704,
//         size.height * 0.7718288);
//     path3.cubicTo(
//         size.width * 0.4720704,
//         size.height * 0.7718288,
//         size.width * 0.5479123,
//         size.height * 0.7445881,
//         size.width * 0.5843564,
//         size.height * 0.7028079);
//     path3.cubicTo(
//         size.width * 0.5843564,
//         size.height * 0.7028079,
//         size.width * 0.5548522,
//         size.height * 0.5415273,
//         size.width * 0.6771593,
//         size.height * 0.4055273);
//     path3.cubicTo(
//         size.width * 0.6771593,
//         size.height * 0.4055273,
//         size.width * 0.5797620,
//         size.height * 0.4329468,
//         size.width * 0.4832271,
//         size.height * 0.5203133);
//     path3.cubicTo(
//         size.width * 0.4832271,
//         size.height * 0.5203133,
//         size.width * 0.5764702,
//         size.height * 0.4044104,
//         size.width * 0.6761715,
//         size.height * 0.3684698);
//     path3.cubicTo(
//         size.width * 0.7095861,
//         size.height * 0.1357953,
//         size.width * 0.9003129,
//         size.height * 0.1956953,
//         size.width * 0.9154203,
//         size.height * 0.009811151);
//     path3.cubicTo(
//         size.width * 0.7739149,
//         size.height * 0.1193996,
//         size.width * 0.5434485,
//         size.height * 0.01209748,
//         size.width * 0.4942585,
//         size.height * 0.3012996);
//     path3.cubicTo(
//         size.width * 0.4942585,
//         size.height * 0.3012996,
//         size.width * 0.4670646,
//         size.height * 0.2201281,
//         size.width * 0.4981875,
//         size.height * 0.1632914);
//     path3.cubicTo(
//         size.width * 0.2856743,
//         size.height * 0.2572155,
//         size.width * 0.1487908,
//         size.height * 0.4678482,
//         size.width * 0.2303039,
//         size.height * 0.6744712);
//     path3.lineTo(size.width * 0.2042214, size.height * 0.6558388);
//     path3.cubicTo(
//         size.width * 0.2042214,
//         size.height * 0.6558388,
//         size.width * 0.2290307,
//         size.height * 0.7312345,
//         size.width * 0.2988196,
//         size.height * 0.7565950);
//     path3.cubicTo(
//         size.width * 0.2988196,
//         size.height * 0.7565950,
//         size.width * 0.2759290,
//         size.height * 0.7648101,
//         size.width * 0.2300525,
//         size.height * 0.7394748);
//     path3.cubicTo(
//         size.width * 0.2300525,
//         size.height * 0.7394748,
//         size.width * 0.2507524,
//         size.height * 0.7860345,
//         size.width * 0.3101440,
//         size.height * 0.8029104);
//     path3.cubicTo(
//         size.width * 0.3101440,
//         size.height * 0.8029104,
//         size.width * 0.2925528,
//         size.height * 0.8124392,
//         size.width * 0.2419341,
//         size.height * 0.7880683);
//     path3.close();
//
//     return path3;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
