import 'package:flutter/widgets.dart';

class Shape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //circles
    Path path = Path();
    path.moveTo(size.width * 0.1207722, size.height * 0.1798561);
    path.cubicTo(
        size.width * 0.1732917,
        size.height * 0.1798561,
        size.width * 0.2159309,
        size.height * 0.2038291,
        size.width * 0.2159309,
        size.height * 0.2333572);
    path.cubicTo(
        size.width * 0.2159309,
        size.height * 0.2628853,
        size.width * 0.1732917,
        size.height * 0.2868586,
        size.width * 0.1207722,
        size.height * 0.2868586);
    path.cubicTo(
        size.width * 0.06825272,
        size.height * 0.2868586,
        size.width * 0.02561292,
        size.height * 0.2628853,
        size.width * 0.02561292,
        size.height * 0.2333572);
    path.cubicTo(
        size.width * 0.02561292,
        size.height * 0.2038291,
        size.width * 0.06825272,
        size.height * 0.1798561,
        size.width * 0.1207722,
        size.height * 0.1798561);
    path.close();
    path.moveTo(size.width * 0.3278951, size.height * 0.1079137);
    path.cubicTo(
        size.width * 0.3724818,
        size.height * 0.1079137,
        size.width * 0.4086801,
        size.height * 0.1282655,
        size.width * 0.4086801,
        size.height * 0.1533335);
    path.cubicTo(
        size.width * 0.4086801,
        size.height * 0.1784011,
        size.width * 0.3724818,
        size.height * 0.1987529,
        size.width * 0.3278951,
        size.height * 0.1987529);
    path.cubicTo(
        size.width * 0.2833084,
        size.height * 0.1987529,
        size.width * 0.2471100,
        size.height * 0.1784011,
        size.width * 0.2471100,
        size.height * 0.1533335);
    path.cubicTo(
        size.width * 0.2471100,
        size.height * 0.1282655,
        size.width * 0.2833084,
        size.height * 0.1079137,
        size.width * 0.3278951,
        size.height * 0.1079137);
    path.close();
    path.moveTo(0, size.height * -0.1438849);
    path.cubicTo(
        size.width * 0.1412450,
        size.height * -0.1438849,
        size.width * 0.2559181,
        size.height * -0.07941223,
        size.width * 0.2559181,
        0);
    path.cubicTo(
        size.width * 0.2559181,
        size.height * 0.07941223,
        size.width * 0.1412450,
        size.height * 0.1438849,
        0,
        size.height * 0.1438849);
    path.cubicTo(
        size.width * -0.1412450,
        size.height * 0.1438849,
        size.width * -0.2559181,
        size.height * 0.07941223,
        size.width * -0.2559181,
        0);
    path.cubicTo(
        size.width * -0.2559181,
        size.height * -0.07941223,
        size.width * -0.1412450,
        size.height * -0.1438849,
        0,
        size.height * -0.1438849);
    path.close();
    path.moveTo(size.width * 0.3649667, size.height * 0.01348921);
    path.cubicTo(
        size.width * 0.3886456,
        size.height * 0.01348921,
        size.width * 0.4078695,
        size.height * 0.02429748,
        size.width * 0.4078695,
        size.height * 0.03761043);
    path.cubicTo(
        size.width * 0.4078695,
        size.height * 0.05092338,
        size.width * 0.3886456,
        size.height * 0.06173165,
        size.width * 0.3649667,
        size.height * 0.06173165);
    path.cubicTo(
        size.width * 0.3412879,
        size.height * 0.06173165,
        size.width * 0.3220640,
        size.height * 0.05092338,
        size.width * 0.3220640,
        size.height * 0.03761043);
    path.cubicTo(
        size.width * 0.3220640,
        size.height * 0.02429748,
        size.width * 0.3412879,
        size.height * 0.01348921,
        size.width * 0.3649667,
        size.height * 0.01348921);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
