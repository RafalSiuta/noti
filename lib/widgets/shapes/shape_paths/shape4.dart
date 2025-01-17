
import 'package:flutter/widgets.dart';

class Shape4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //quill
    Path path = Path();
    path.moveTo(size.width * 0.3101478, size.height * 0.6736727);
    path.cubicTo(
        size.width * 0.3101478,
        size.height * 0.6736727,
        size.width * 0.3068445,
        size.height * 0.7365842,
        size.width * 0.4208369,
        size.height * 0.7303547);
    path.cubicTo(
        size.width * 0.4208369,
        size.height * 0.7303547,
        size.width * 0.4494523,
        size.height * 0.7881525,
        size.width * 0.4809930,
        size.height * 0.8083766);
    path.cubicTo(
        size.width * 0.4809930,
        size.height * 0.8083766,
        size.width * 0.5068087,
        size.height * 0.8193737,
        size.width * 0.5220742,
        size.height * 0.8203860);
    path.cubicTo(
        size.width * 0.5220742,
        size.height * 0.8203860,
        size.width * 0.4590717,
        size.height * 0.7715356,
        size.width * 0.4467550,
        size.height * 0.7283514);
    path.cubicTo(
        size.width * 0.4467550,
        size.height * 0.7283514,
        size.width * 0.5324498,
        size.height * 0.7129561,
        size.width * 0.5635285,
        size.height * 0.6299065);
    path.cubicTo(
        size.width * 0.5635285,
        size.height * 0.6299065,
        size.width * 0.5277249,
        size.height * 0.6552809,
        size.width * 0.4774472,
        size.height * 0.6618669);
    path.cubicTo(
        size.width * 0.4774472,
        size.height * 0.6618669,
        size.width * 0.5325809,
        size.height * 0.6420644,
        size.width * 0.5590749,
        size.height * 0.6116917);
    path.cubicTo(
        size.width * 0.5590749,
        size.height * 0.6116917,
        size.width * 0.5579431,
        size.height * 0.4774845,
        size.width * 0.6371657,
        size.height * 0.3753496);
    path.cubicTo(
        size.width * 0.6371657,
        size.height * 0.3753496,
        size.width * 0.5900972,
        size.height * 0.4153468,
        size.width * 0.5237965,
        size.height * 0.4472608);
    path.cubicTo(
        size.width * 0.5237965,
        size.height * 0.4472608,
        size.width * 0.5975022,
        size.height * 0.3898662,
        size.width * 0.6258202,
        size.height * 0.3686421);
    path.cubicTo(
        size.width * 0.6800448,
        size.height * 0.3280011,
        size.width * 0.6991408,
        size.height * 0.3124144,
        size.width * 0.7214664,
        size.height * 0.2478705);
    path.cubicTo(
        size.width * 0.7221312,
        size.height * 0.2459478,
        size.width * 0.5966475,
        size.height * 0.2875637,
        size.width * 0.5993762,
        size.height * 0.2860050);
    path.cubicTo(
        size.width * 0.6020934,
        size.height * 0.2844536,
        size.width * 0.6871996,
        size.height * 0.2499299,
        size.width * 0.6881305,
        size.height * 0.2478705);
    path.cubicTo(
        size.width * 0.7222118,
        size.height * 0.1724288,
        size.width * 0.7890582,
        size.height * 0.1829273,
        size.width * 0.7997441,
        size.height * 0.1079122);
    path.cubicTo(
        size.width * 0.6968759,
        size.height * 0.1875784,
        size.width * 0.5293365,
        size.height * 0.1095741,
        size.width * 0.4935771,
        size.height * 0.3198119);
    path.cubicTo(
        size.width * 0.4935771,
        size.height * 0.3198119,
        size.width * 0.4738087,
        size.height * 0.2608036,
        size.width * 0.4964331,
        size.height * 0.2194860);
    path.cubicTo(
        size.width * 0.3419450,
        size.height * 0.2877647,
        size.width * 0.2424363,
        size.height * 0.4408860,
        size.width * 0.3016935,
        size.height * 0.5910939);
    path.lineTo(size.width * 0.2827326, size.height * 0.5775489);
    path.cubicTo(
        size.width * 0.2827326,
        size.height * 0.5775489,
        size.width * 0.3007678,
        size.height * 0.6323586,
        size.width * 0.3515016,
        size.height * 0.6507946);
    path.cubicTo(
        size.width * 0.3515016,
        size.height * 0.6507946,
        size.width * 0.3348612,
        size.height * 0.6567665,
        size.width * 0.3015106,
        size.height * 0.6383489);
    path.cubicTo(
        size.width * 0.3015106,
        size.height * 0.6383489,
        size.width * 0.3165579,
        size.height * 0.6721960,
        size.width * 0.3597338,
        size.height * 0.6844640);
    path.cubicTo(
        size.width * 0.3597338,
        size.height * 0.6844640,
        size.width * 0.3469456,
        size.height * 0.6913910,
        size.width * 0.3101478,
        size.height * 0.6736745);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
