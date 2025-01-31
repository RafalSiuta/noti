import 'package:flutter/material.dart';

class Art2 extends CustomPainter {

  final List<Color> colors;

  const Art2({required this.colors});
@override
void paint(Canvas canvas, Size size) {

  final gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: colors,
  );

  final paint = Paint()
    ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
    ..style = PaintingStyle.fill;

Path path_0 = Path();
path_0.moveTo(size.width*0.2637681,size.height*0.2555505);
path_0.lineTo(size.width*0.2801932,size.height*0.2556126);
path_0.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_0.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_0.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_0.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_0.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_0.lineTo(size.width*0.3478261,size.height*0.2193643);
path_0.lineTo(size.width*0.3545894,size.height*0.2189112);
path_0.lineTo(size.width*0.3545894,size.height*0.2166457);
path_0.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_0.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_0.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_0.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_0.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_0.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_0.lineTo(size.width*0.3545894,size.height*0.2134119);
path_0.lineTo(size.width*0.3497585,size.height*0.2134119);
path_0.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_0.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_0.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_0.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_0.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_0.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_0.lineTo(size.width*0.3429952,size.height*0.2134119);
path_0.lineTo(size.width*0.3420290,size.height*0.2165836);
path_0.lineTo(size.width*0.3362319,size.height*0.2165836);
path_0.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_0.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_0.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_0.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_0.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_0.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0009371981;
paint_0_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
path_1.moveTo(size.width*0.2637681,size.height*0.2555505);
path_1.lineTo(size.width*0.2801932,size.height*0.2556126);
path_1.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_1.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_1.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_1.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_1.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_1.lineTo(size.width*0.3478261,size.height*0.2193643);
path_1.lineTo(size.width*0.3545894,size.height*0.2189112);
path_1.lineTo(size.width*0.3545894,size.height*0.2166457);
path_1.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_1.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_1.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_1.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_1.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_1.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_1.lineTo(size.width*0.3545894,size.height*0.2134119);
path_1.lineTo(size.width*0.3497585,size.height*0.2134119);
path_1.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_1.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_1.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_1.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_1.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_1.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_1.lineTo(size.width*0.3429952,size.height*0.2134119);
path_1.lineTo(size.width*0.3420290,size.height*0.2165836);
path_1.lineTo(size.width*0.3362319,size.height*0.2165836);
path_1.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_1.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_1.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_1.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_1.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_1.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0009371981;
paint_1_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_1,paint_1_stroke);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
path_2.moveTo(size.width*0.2637681,size.height*0.2555505);
path_2.lineTo(size.width*0.2801932,size.height*0.2556126);
path_2.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_2.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_2.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_2.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_2.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_2.lineTo(size.width*0.3478261,size.height*0.2193643);
path_2.lineTo(size.width*0.3545894,size.height*0.2189112);
path_2.lineTo(size.width*0.3545894,size.height*0.2166457);
path_2.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_2.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_2.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_2.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_2.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_2.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_2.lineTo(size.width*0.3545894,size.height*0.2134119);
path_2.lineTo(size.width*0.3497585,size.height*0.2134119);
path_2.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_2.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_2.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_2.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_2.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_2.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_2.lineTo(size.width*0.3429952,size.height*0.2134119);
path_2.lineTo(size.width*0.3420290,size.height*0.2165836);
path_2.lineTo(size.width*0.3362319,size.height*0.2165836);
path_2.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_2.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_2.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_2.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_2.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_2.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001574879;
paint_2_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_2,paint_2_stroke);

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
path_3.moveTo(size.width*0.2637681,size.height*0.2555505);
path_3.lineTo(size.width*0.2801932,size.height*0.2556126);
path_3.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_3.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_3.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_3.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_3.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_3.lineTo(size.width*0.3478261,size.height*0.2193643);
path_3.lineTo(size.width*0.3545894,size.height*0.2189112);
path_3.lineTo(size.width*0.3545894,size.height*0.2166457);
path_3.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_3.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_3.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_3.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_3.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_3.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_3.lineTo(size.width*0.3545894,size.height*0.2134119);
path_3.lineTo(size.width*0.3497585,size.height*0.2134119);
path_3.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_3.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_3.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_3.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_3.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_3.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_3.lineTo(size.width*0.3429952,size.height*0.2134119);
path_3.lineTo(size.width*0.3420290,size.height*0.2165836);
path_3.lineTo(size.width*0.3362319,size.height*0.2165836);
path_3.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_3.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_3.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_3.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_3.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_3.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_3_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001574879;
paint_3_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_3,paint_3_stroke);

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_3,paint_3_fill);

Path path_4 = Path();
path_4.moveTo(size.width*0.2637681,size.height*0.2555505);
path_4.lineTo(size.width*0.2801932,size.height*0.2556126);
path_4.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_4.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_4.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_4.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_4.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_4.lineTo(size.width*0.3478261,size.height*0.2193643);
path_4.lineTo(size.width*0.3545894,size.height*0.2189112);
path_4.lineTo(size.width*0.3545894,size.height*0.2166457);
path_4.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_4.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_4.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_4.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_4.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_4.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_4.lineTo(size.width*0.3545894,size.height*0.2134119);
path_4.lineTo(size.width*0.3497585,size.height*0.2134119);
path_4.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_4.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_4.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_4.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_4.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_4.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_4.lineTo(size.width*0.3429952,size.height*0.2134119);
path_4.lineTo(size.width*0.3420290,size.height*0.2165836);
path_4.lineTo(size.width*0.3362319,size.height*0.2165836);
path_4.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_4.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_4.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_4.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_4.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_4.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_4_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001439614;
paint_4_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_4,paint_4_stroke);

Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
paint_4_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_4,paint_4_fill);

Path path_5 = Path();
path_5.moveTo(size.width*0.2637681,size.height*0.2555505);
path_5.lineTo(size.width*0.2801932,size.height*0.2556126);
path_5.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_5.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_5.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_5.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_5.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_5.lineTo(size.width*0.3478261,size.height*0.2193643);
path_5.lineTo(size.width*0.3545894,size.height*0.2189112);
path_5.lineTo(size.width*0.3545894,size.height*0.2166457);
path_5.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_5.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_5.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_5.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_5.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_5.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_5.lineTo(size.width*0.3545894,size.height*0.2134119);
path_5.lineTo(size.width*0.3497585,size.height*0.2134119);
path_5.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_5.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_5.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_5.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_5.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_5.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_5.lineTo(size.width*0.3429952,size.height*0.2134119);
path_5.lineTo(size.width*0.3420290,size.height*0.2165836);
path_5.lineTo(size.width*0.3362319,size.height*0.2165836);
path_5.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_5.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_5.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_5.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_5.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_5.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_5_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001439614;
paint_5_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_5,paint_5_stroke);

Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
paint_5_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_5,paint_5_fill);

Path path_6 = Path();
path_6.moveTo(size.width*0.2637681,size.height*0.2555505);
path_6.lineTo(size.width*0.2801932,size.height*0.2556126);
path_6.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_6.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_6.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_6.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_6.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_6.lineTo(size.width*0.3478261,size.height*0.2193643);
path_6.lineTo(size.width*0.3545894,size.height*0.2189112);
path_6.lineTo(size.width*0.3545894,size.height*0.2166457);
path_6.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_6.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_6.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_6.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_6.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_6.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_6.lineTo(size.width*0.3545894,size.height*0.2134119);
path_6.lineTo(size.width*0.3497585,size.height*0.2134119);
path_6.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_6.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_6.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_6.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_6.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_6.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_6.lineTo(size.width*0.3429952,size.height*0.2134119);
path_6.lineTo(size.width*0.3420290,size.height*0.2165836);
path_6.lineTo(size.width*0.3362319,size.height*0.2165836);
path_6.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_6.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_6.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_6.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_6.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_6.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_6_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.002164251;
paint_6_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_6,paint_6_stroke);

Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
paint_6_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_6,paint_6_fill);

Path path_7 = Path();
path_7.moveTo(size.width*0.2637681,size.height*0.2555505);
path_7.lineTo(size.width*0.2801932,size.height*0.2556126);
path_7.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_7.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_7.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_7.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_7.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_7.lineTo(size.width*0.3478261,size.height*0.2193643);
path_7.lineTo(size.width*0.3545894,size.height*0.2189112);
path_7.lineTo(size.width*0.3545894,size.height*0.2166457);
path_7.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_7.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_7.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_7.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_7.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_7.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_7.lineTo(size.width*0.3545894,size.height*0.2134119);
path_7.lineTo(size.width*0.3497585,size.height*0.2134119);
path_7.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_7.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_7.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_7.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_7.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_7.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_7.lineTo(size.width*0.3429952,size.height*0.2134119);
path_7.lineTo(size.width*0.3420290,size.height*0.2165836);
path_7.lineTo(size.width*0.3362319,size.height*0.2165836);
path_7.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_7.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_7.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_7.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_7.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_7.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_7_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.002164251;
paint_7_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_7,paint_7_stroke);

Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
paint_7_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_7,paint_7_fill);

Path path_8 = Path();
path_8.moveTo(size.width*0.2637681,size.height*0.2555505);
path_8.lineTo(size.width*0.2801932,size.height*0.2556126);
path_8.cubicTo(size.width*0.2482029,size.height*0.2811672,size.width*0.3664995,size.height*0.2916824,size.width*0.3323671,size.height*0.2510816);
path_8.cubicTo(size.width*0.3323671,size.height*0.2510816,size.width*0.3354242,size.height*0.2498101,size.width*0.3362319,size.height*0.2510816);
path_8.cubicTo(size.width*0.3416560,size.height*0.2596226,size.width*0.3666164,size.height*0.2733480,size.width*0.4038647,size.height*0.2673933);
path_8.cubicTo(size.width*0.4038647,size.height*0.2673933,size.width*0.4504860,size.height*0.2620077,size.width*0.4734300,size.height*0.2393009);
path_8.cubicTo(size.width*0.4849913,size.height*0.2295392,size.width*0.4673990,size.height*0.2023217,size.width*0.3478261,size.height*0.2220829);
path_8.lineTo(size.width*0.3478261,size.height*0.2193643);
path_8.lineTo(size.width*0.3545894,size.height*0.2189112);
path_8.lineTo(size.width*0.3545894,size.height*0.2166457);
path_8.cubicTo(size.width*0.4636754,size.height*0.1940217,size.width*0.4437285,size.height*0.2081282,size.width*0.4393478,size.height*0.2107975);
path_8.cubicTo(size.width*0.4392203,size.height*0.2108740,size.width*0.4391971,size.height*0.2109783,size.width*0.4392879,size.height*0.2110657);
path_8.cubicTo(size.width*0.4393787,size.height*0.2111531,size.width*0.4395681,size.height*0.2112084,size.width*0.4397749,size.height*0.2112084);
path_8.cubicTo(size.width*0.4398048,size.height*0.2112084,size.width*0.4398338,size.height*0.2112084,size.width*0.4398638,size.height*0.2112080);
path_8.cubicTo(size.width*0.4403150,size.height*0.2112080,size.width*0.4407362,size.height*0.2111001,size.width*0.4409807,size.height*0.2109221);
path_8.cubicTo(size.width*0.4676792,size.height*0.1915324,size.width*0.3545894,size.height*0.2157395,size.width*0.3545894,size.height*0.2157395);
path_8.lineTo(size.width*0.3545894,size.height*0.2134119);
path_8.lineTo(size.width*0.3497585,size.height*0.2134119);
path_8.cubicTo(size.width*0.3497585,size.height*0.2134119,size.width*0.4013778,size.height*0.1603770,size.width*0.3600319,size.height*0.1728976);
path_8.cubicTo(size.width*0.3596512,size.height*0.1730122,size.width*0.3594213,size.height*0.1732098,size.width*0.3594213,size.height*0.1734214);
path_8.cubicTo(size.width*0.3594203,size.height*0.1734354,size.width*0.3594203,size.height*0.1734490,size.width*0.3594203,size.height*0.1734631);
path_8.cubicTo(size.width*0.3594203,size.height*0.1735600,size.width*0.3595391,size.height*0.1736488,size.width*0.3597256,size.height*0.1736914);
path_8.cubicTo(size.width*0.3599121,size.height*0.1737340,size.width*0.3601333,size.height*0.1737232,size.width*0.3602966,size.height*0.1736633);
path_8.cubicTo(size.width*0.3659894,size.height*0.1716090,size.width*0.3960686,size.height*0.1622546,size.width*0.3478261,size.height*0.2134119);
path_8.lineTo(size.width*0.3429952,size.height*0.2134119);
path_8.lineTo(size.width*0.3420290,size.height*0.2165836);
path_8.lineTo(size.width*0.3362319,size.height*0.2165836);
path_8.cubicTo(size.width*0.3783700,size.height*0.1605084,size.width*0.3203324,size.height*0.1522583,size.width*0.2995169,size.height*0.1576801);
path_8.cubicTo(size.width*0.2510986,size.height*0.1684400,size.width*0.2396135,size.height*0.1903036,size.width*0.2396135,size.height*0.1903036);
path_8.cubicTo(size.width*0.2269169,size.height*0.2077716,size.width*0.2561845,size.height*0.2194771,size.width*0.2743961,size.height*0.2220208);
path_8.cubicTo(size.width*0.2771072,size.height*0.2223996,size.width*0.2743961,size.height*0.2238333,size.width*0.2743961,size.height*0.2238333);
path_8.cubicTo(size.width*0.1878203,size.height*0.2078265,size.width*0.2102435,size.height*0.2633031,size.width*0.2647343,size.height*0.2483009);
path_8.lineTo(size.width*0.2637681,size.height*0.2555505);

Paint paint_8_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0005990338;
paint_8_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_8,paint_8_stroke);

Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
paint_8_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_8,paint_8_fill);

Path path_9 = Path();
path_9.moveTo(size.width*0.2148928,size.height*0.04594064);
path_9.cubicTo(size.width*0.2168464,size.height*0.04660761,size.width*0.2144928,size.height*0.04848210,size.width*0.2144928,size.height*0.04848210);
path_9.cubicTo(size.width*0.1879275,size.height*0.05019302,size.width*0.1874396,size.height*0.06116901,size.width*0.1874396,size.height*0.06116901);
path_9.cubicTo(size.width*0.1837739,size.height*0.05808881,size.width*0.1855072,size.height*0.05618487,size.width*0.1855072,size.height*0.05618487);
path_9.cubicTo(size.width*0.1447720,size.height*0.05891210,size.width*0.1368676,size.height*0.03955868,size.width*0.1739130,size.height*0.04213865);
path_9.cubicTo(size.width*0.1696290,size.height*0.04133348,size.width*0.1655546,size.height*0.04104259,size.width*0.1603865,size.height*0.03806072);
path_9.cubicTo(size.width*0.1393092,size.height*0.02667920,size.width*0.1655575,size.height*0.01372043,size.width*0.1834010,size.height*0.01314001);
path_9.cubicTo(size.width*0.1997411,size.height*0.01260852,size.width*0.1942029,size.height*0.01631174,size.width*0.1942029,size.height*0.01631174);
path_9.cubicTo(size.width*0.2401990,size.height*0.002001359,size.width*0.2281082,size.height*0.04284957,size.width*0.2115942,size.height*0.04576348);
path_9.cubicTo(size.width*0.2131362,size.height*0.04565020,size.width*0.2141372,size.height*0.04572043,size.width*0.2147614,size.height*0.04589941);
path_9.cubicTo(size.width*0.2563382,size.height*0.03980879,size.width*0.2475362,size.height*0.03551065,size.width*0.2449913,size.height*0.03461305);
path_9.cubicTo(size.width*0.2448812,size.height*0.03457635,size.width*0.2448203,size.height*0.03451473,size.width*0.2448338,size.height*0.03445129);
path_9.cubicTo(size.width*0.2448464,size.height*0.03438831,size.width*0.2449304,size.height*0.03433303,size.width*0.2450541,size.height*0.03430720);
path_9.cubicTo(size.width*0.2450744,size.height*0.03430267,size.width*0.2450947,size.height*0.03429860,size.width*0.2451159,size.height*0.03429633);
path_9.cubicTo(size.width*0.2453005,size.height*0.03425736,size.width*0.2455179,size.height*0.03427367,size.width*0.2456676,size.height*0.03433756);
path_9.cubicTo(size.width*0.2590676,size.height*0.04000589,size.width*0.2243961,size.height*0.04476937,size.width*0.2148928,size.height*0.04594064);
path_9.close();
path_9.moveTo(size.width*0.2135266,size.height*0.04572225);
path_9.cubicTo(size.width*0.2135266,size.height*0.04572225,size.width*0.2562812,size.height*0.03297734,size.width*0.2370773,size.height*0.02920254);
path_9.cubicTo(size.width*0.2368899,size.height*0.02916493,size.width*0.2366744,size.height*0.02918351,size.width*0.2365275,size.height*0.02924875);
path_9.cubicTo(size.width*0.2365034,size.height*0.02925646,size.width*0.2364812,size.height*0.02926597,size.width*0.2364599,size.height*0.02927594);
path_9.cubicTo(size.width*0.2363633,size.height*0.02931899,size.width*0.2363227,size.height*0.02938287,size.width*0.2363527,size.height*0.02944404);
path_9.cubicTo(size.width*0.2363826,size.height*0.02950476,size.width*0.2364792,size.height*0.02955415,size.width*0.2366058,size.height*0.02957318);
path_9.cubicTo(size.width*0.2395681,size.height*0.03006162,size.width*0.2507179,size.height*0.03297100,size.width*0.2135266,size.height*0.04572225);
path_9.close();

Paint paint_9_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0005797101;
paint_9_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_9,paint_9_stroke);

Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
paint_9_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_9,paint_9_fill);

Path path_10 = Path();
path_10.moveTo(size.width*0.2148928,size.height*0.04594064);
path_10.cubicTo(size.width*0.2168464,size.height*0.04660761,size.width*0.2144928,size.height*0.04848210,size.width*0.2144928,size.height*0.04848210);
path_10.cubicTo(size.width*0.1879275,size.height*0.05019302,size.width*0.1874396,size.height*0.06116901,size.width*0.1874396,size.height*0.06116901);
path_10.cubicTo(size.width*0.1837739,size.height*0.05808881,size.width*0.1855072,size.height*0.05618487,size.width*0.1855072,size.height*0.05618487);
path_10.cubicTo(size.width*0.1447720,size.height*0.05891210,size.width*0.1368676,size.height*0.03955868,size.width*0.1739130,size.height*0.04213865);
path_10.cubicTo(size.width*0.1696290,size.height*0.04133348,size.width*0.1655546,size.height*0.04104259,size.width*0.1603865,size.height*0.03806072);
path_10.cubicTo(size.width*0.1393092,size.height*0.02667920,size.width*0.1655575,size.height*0.01372043,size.width*0.1834010,size.height*0.01314001);
path_10.cubicTo(size.width*0.1997411,size.height*0.01260852,size.width*0.1942029,size.height*0.01631174,size.width*0.1942029,size.height*0.01631174);
path_10.cubicTo(size.width*0.2401990,size.height*0.002001359,size.width*0.2281082,size.height*0.04284957,size.width*0.2115942,size.height*0.04576348);
path_10.cubicTo(size.width*0.2131362,size.height*0.04565020,size.width*0.2141372,size.height*0.04572043,size.width*0.2147614,size.height*0.04589941);
path_10.cubicTo(size.width*0.2563382,size.height*0.03980879,size.width*0.2475362,size.height*0.03551065,size.width*0.2449913,size.height*0.03461305);
path_10.cubicTo(size.width*0.2448812,size.height*0.03457635,size.width*0.2448203,size.height*0.03451473,size.width*0.2448338,size.height*0.03445129);
path_10.cubicTo(size.width*0.2448464,size.height*0.03438831,size.width*0.2449304,size.height*0.03433303,size.width*0.2450541,size.height*0.03430720);
path_10.cubicTo(size.width*0.2450744,size.height*0.03430267,size.width*0.2450947,size.height*0.03429860,size.width*0.2451159,size.height*0.03429633);
path_10.cubicTo(size.width*0.2453005,size.height*0.03425736,size.width*0.2455179,size.height*0.03427367,size.width*0.2456676,size.height*0.03433756);
path_10.cubicTo(size.width*0.2590676,size.height*0.04000589,size.width*0.2243961,size.height*0.04476937,size.width*0.2148928,size.height*0.04594064);
path_10.close();
path_10.moveTo(size.width*0.2135266,size.height*0.04572225);
path_10.cubicTo(size.width*0.2135266,size.height*0.04572225,size.width*0.2562812,size.height*0.03297734,size.width*0.2370773,size.height*0.02920254);
path_10.cubicTo(size.width*0.2368899,size.height*0.02916493,size.width*0.2366744,size.height*0.02918351,size.width*0.2365275,size.height*0.02924875);
path_10.cubicTo(size.width*0.2365034,size.height*0.02925646,size.width*0.2364812,size.height*0.02926597,size.width*0.2364599,size.height*0.02927594);
path_10.cubicTo(size.width*0.2363633,size.height*0.02931899,size.width*0.2363227,size.height*0.02938287,size.width*0.2363527,size.height*0.02944404);
path_10.cubicTo(size.width*0.2363826,size.height*0.02950476,size.width*0.2364792,size.height*0.02955415,size.width*0.2366058,size.height*0.02957318);
path_10.cubicTo(size.width*0.2395681,size.height*0.03006162,size.width*0.2507179,size.height*0.03297100,size.width*0.2135266,size.height*0.04572225);
path_10.close();

Paint paint_10_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0005797101;
paint_10_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_10,paint_10_stroke);

Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
paint_10_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_10,paint_10_fill);

Path path_11 = Path();
path_11.moveTo(size.width*0.2148928,size.height*0.04594064);
path_11.cubicTo(size.width*0.2168464,size.height*0.04660761,size.width*0.2144928,size.height*0.04848210,size.width*0.2144928,size.height*0.04848210);
path_11.cubicTo(size.width*0.1879275,size.height*0.05019302,size.width*0.1874396,size.height*0.06116901,size.width*0.1874396,size.height*0.06116901);
path_11.cubicTo(size.width*0.1837739,size.height*0.05808881,size.width*0.1855072,size.height*0.05618487,size.width*0.1855072,size.height*0.05618487);
path_11.cubicTo(size.width*0.1447720,size.height*0.05891210,size.width*0.1368676,size.height*0.03955868,size.width*0.1739130,size.height*0.04213865);
path_11.cubicTo(size.width*0.1696290,size.height*0.04133348,size.width*0.1655546,size.height*0.04104259,size.width*0.1603865,size.height*0.03806072);
path_11.cubicTo(size.width*0.1393092,size.height*0.02667920,size.width*0.1655575,size.height*0.01372043,size.width*0.1834010,size.height*0.01314001);
path_11.cubicTo(size.width*0.1997411,size.height*0.01260852,size.width*0.1942029,size.height*0.01631174,size.width*0.1942029,size.height*0.01631174);
path_11.cubicTo(size.width*0.2401990,size.height*0.002001359,size.width*0.2281082,size.height*0.04284957,size.width*0.2115942,size.height*0.04576348);
path_11.cubicTo(size.width*0.2131362,size.height*0.04565020,size.width*0.2141372,size.height*0.04572043,size.width*0.2147614,size.height*0.04589941);
path_11.cubicTo(size.width*0.2563382,size.height*0.03980879,size.width*0.2475362,size.height*0.03551065,size.width*0.2449913,size.height*0.03461305);
path_11.cubicTo(size.width*0.2448812,size.height*0.03457635,size.width*0.2448203,size.height*0.03451473,size.width*0.2448338,size.height*0.03445129);
path_11.cubicTo(size.width*0.2448464,size.height*0.03438831,size.width*0.2449304,size.height*0.03433303,size.width*0.2450541,size.height*0.03430720);
path_11.cubicTo(size.width*0.2450744,size.height*0.03430267,size.width*0.2450947,size.height*0.03429860,size.width*0.2451159,size.height*0.03429633);
path_11.cubicTo(size.width*0.2453005,size.height*0.03425736,size.width*0.2455179,size.height*0.03427367,size.width*0.2456676,size.height*0.03433756);
path_11.cubicTo(size.width*0.2590676,size.height*0.04000589,size.width*0.2243961,size.height*0.04476937,size.width*0.2148928,size.height*0.04594064);
path_11.close();
path_11.moveTo(size.width*0.2135266,size.height*0.04572225);
path_11.cubicTo(size.width*0.2135266,size.height*0.04572225,size.width*0.2562812,size.height*0.03297734,size.width*0.2370773,size.height*0.02920254);
path_11.cubicTo(size.width*0.2368899,size.height*0.02916493,size.width*0.2366744,size.height*0.02918351,size.width*0.2365275,size.height*0.02924875);
path_11.cubicTo(size.width*0.2365034,size.height*0.02925646,size.width*0.2364812,size.height*0.02926597,size.width*0.2364599,size.height*0.02927594);
path_11.cubicTo(size.width*0.2363633,size.height*0.02931899,size.width*0.2363227,size.height*0.02938287,size.width*0.2363527,size.height*0.02944404);
path_11.cubicTo(size.width*0.2363826,size.height*0.02950476,size.width*0.2364792,size.height*0.02955415,size.width*0.2366058,size.height*0.02957318);
path_11.cubicTo(size.width*0.2395681,size.height*0.03006162,size.width*0.2507179,size.height*0.03297100,size.width*0.2135266,size.height*0.04572225);
path_11.close();

Paint paint_11_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0004444444;
paint_11_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_11,paint_11_stroke);

Paint paint_11_fill = Paint()..style=PaintingStyle.fill;
paint_11_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_11,paint_11_fill);

Path path_12 = Path();
path_12.moveTo(size.width*0.2148928,size.height*0.04594064);
path_12.cubicTo(size.width*0.2168464,size.height*0.04660761,size.width*0.2144928,size.height*0.04848210,size.width*0.2144928,size.height*0.04848210);
path_12.cubicTo(size.width*0.1879275,size.height*0.05019302,size.width*0.1874396,size.height*0.06116901,size.width*0.1874396,size.height*0.06116901);
path_12.cubicTo(size.width*0.1837739,size.height*0.05808881,size.width*0.1855072,size.height*0.05618487,size.width*0.1855072,size.height*0.05618487);
path_12.cubicTo(size.width*0.1447720,size.height*0.05891210,size.width*0.1368676,size.height*0.03955868,size.width*0.1739130,size.height*0.04213865);
path_12.cubicTo(size.width*0.1696290,size.height*0.04133348,size.width*0.1655546,size.height*0.04104259,size.width*0.1603865,size.height*0.03806072);
path_12.cubicTo(size.width*0.1393092,size.height*0.02667920,size.width*0.1655575,size.height*0.01372043,size.width*0.1834010,size.height*0.01314001);
path_12.cubicTo(size.width*0.1997411,size.height*0.01260852,size.width*0.1942029,size.height*0.01631174,size.width*0.1942029,size.height*0.01631174);
path_12.cubicTo(size.width*0.2401990,size.height*0.002001359,size.width*0.2281082,size.height*0.04284957,size.width*0.2115942,size.height*0.04576348);
path_12.cubicTo(size.width*0.2131362,size.height*0.04565020,size.width*0.2141372,size.height*0.04572043,size.width*0.2147614,size.height*0.04589941);
path_12.cubicTo(size.width*0.2563382,size.height*0.03980879,size.width*0.2475362,size.height*0.03551065,size.width*0.2449913,size.height*0.03461305);
path_12.cubicTo(size.width*0.2448812,size.height*0.03457635,size.width*0.2448203,size.height*0.03451473,size.width*0.2448338,size.height*0.03445129);
path_12.cubicTo(size.width*0.2448464,size.height*0.03438831,size.width*0.2449304,size.height*0.03433303,size.width*0.2450541,size.height*0.03430720);
path_12.cubicTo(size.width*0.2450744,size.height*0.03430267,size.width*0.2450947,size.height*0.03429860,size.width*0.2451159,size.height*0.03429633);
path_12.cubicTo(size.width*0.2453005,size.height*0.03425736,size.width*0.2455179,size.height*0.03427367,size.width*0.2456676,size.height*0.03433756);
path_12.cubicTo(size.width*0.2590676,size.height*0.04000589,size.width*0.2243961,size.height*0.04476937,size.width*0.2148928,size.height*0.04594064);
path_12.close();
path_12.moveTo(size.width*0.2135266,size.height*0.04572225);
path_12.cubicTo(size.width*0.2135266,size.height*0.04572225,size.width*0.2562812,size.height*0.03297734,size.width*0.2370773,size.height*0.02920254);
path_12.cubicTo(size.width*0.2368899,size.height*0.02916493,size.width*0.2366744,size.height*0.02918351,size.width*0.2365275,size.height*0.02924875);
path_12.cubicTo(size.width*0.2365034,size.height*0.02925646,size.width*0.2364812,size.height*0.02926597,size.width*0.2364599,size.height*0.02927594);
path_12.cubicTo(size.width*0.2363633,size.height*0.02931899,size.width*0.2363227,size.height*0.02938287,size.width*0.2363527,size.height*0.02944404);
path_12.cubicTo(size.width*0.2363826,size.height*0.02950476,size.width*0.2364792,size.height*0.02955415,size.width*0.2366058,size.height*0.02957318);
path_12.cubicTo(size.width*0.2395681,size.height*0.03006162,size.width*0.2507179,size.height*0.03297100,size.width*0.2135266,size.height*0.04572225);
path_12.close();

Paint paint_12_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0009468599;
paint_12_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_12,paint_12_stroke);

Paint paint_12_fill = Paint()..style=PaintingStyle.fill;
paint_12_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_12,paint_12_fill);

Path path_13 = Path();
path_13.moveTo(size.width*0.2148928,size.height*0.04594064);
path_13.cubicTo(size.width*0.2168464,size.height*0.04660761,size.width*0.2144928,size.height*0.04848210,size.width*0.2144928,size.height*0.04848210);
path_13.cubicTo(size.width*0.1879275,size.height*0.05019302,size.width*0.1874396,size.height*0.06116901,size.width*0.1874396,size.height*0.06116901);
path_13.cubicTo(size.width*0.1837739,size.height*0.05808881,size.width*0.1855072,size.height*0.05618487,size.width*0.1855072,size.height*0.05618487);
path_13.cubicTo(size.width*0.1447720,size.height*0.05891210,size.width*0.1368676,size.height*0.03955868,size.width*0.1739130,size.height*0.04213865);
path_13.cubicTo(size.width*0.1696290,size.height*0.04133348,size.width*0.1655546,size.height*0.04104259,size.width*0.1603865,size.height*0.03806072);
path_13.cubicTo(size.width*0.1393092,size.height*0.02667920,size.width*0.1655575,size.height*0.01372043,size.width*0.1834010,size.height*0.01314001);
path_13.cubicTo(size.width*0.1997411,size.height*0.01260852,size.width*0.1942029,size.height*0.01631174,size.width*0.1942029,size.height*0.01631174);
path_13.cubicTo(size.width*0.2401990,size.height*0.002001359,size.width*0.2281082,size.height*0.04284957,size.width*0.2115942,size.height*0.04576348);
path_13.cubicTo(size.width*0.2131362,size.height*0.04565020,size.width*0.2141372,size.height*0.04572043,size.width*0.2147614,size.height*0.04589941);
path_13.cubicTo(size.width*0.2563382,size.height*0.03980879,size.width*0.2475362,size.height*0.03551065,size.width*0.2449913,size.height*0.03461305);
path_13.cubicTo(size.width*0.2448812,size.height*0.03457635,size.width*0.2448203,size.height*0.03451473,size.width*0.2448338,size.height*0.03445129);
path_13.cubicTo(size.width*0.2448464,size.height*0.03438831,size.width*0.2449304,size.height*0.03433303,size.width*0.2450541,size.height*0.03430720);
path_13.cubicTo(size.width*0.2450744,size.height*0.03430267,size.width*0.2450947,size.height*0.03429860,size.width*0.2451159,size.height*0.03429633);
path_13.cubicTo(size.width*0.2453005,size.height*0.03425736,size.width*0.2455179,size.height*0.03427367,size.width*0.2456676,size.height*0.03433756);
path_13.cubicTo(size.width*0.2590676,size.height*0.04000589,size.width*0.2243961,size.height*0.04476937,size.width*0.2148928,size.height*0.04594064);
path_13.close();
path_13.moveTo(size.width*0.2135266,size.height*0.04572225);
path_13.cubicTo(size.width*0.2135266,size.height*0.04572225,size.width*0.2562812,size.height*0.03297734,size.width*0.2370773,size.height*0.02920254);
path_13.cubicTo(size.width*0.2368899,size.height*0.02916493,size.width*0.2366744,size.height*0.02918351,size.width*0.2365275,size.height*0.02924875);
path_13.cubicTo(size.width*0.2365034,size.height*0.02925646,size.width*0.2364812,size.height*0.02926597,size.width*0.2364599,size.height*0.02927594);
path_13.cubicTo(size.width*0.2363633,size.height*0.02931899,size.width*0.2363227,size.height*0.02938287,size.width*0.2363527,size.height*0.02944404);
path_13.cubicTo(size.width*0.2363826,size.height*0.02950476,size.width*0.2364792,size.height*0.02955415,size.width*0.2366058,size.height*0.02957318);
path_13.cubicTo(size.width*0.2395681,size.height*0.03006162,size.width*0.2507179,size.height*0.03297100,size.width*0.2135266,size.height*0.04572225);
path_13.close();

Paint paint_13_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.0009468599;
paint_13_stroke.color=Colors.black.withValues(alpha: 1.0);
canvas.drawPath(path_13,paint_13_stroke);

Paint paint_13_fill = Paint()..style=PaintingStyle.fill;
paint_13_fill.color = Color(0xff000000).withValues(alpha: 1.0);
canvas.drawPath(path_13,paint_13_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}


