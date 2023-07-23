import 'dart:ui';
import 'package:flutter/widgets.dart';

class Shape9 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //snowflakes:
    Path path = Path();
    path.moveTo(size.width * 0.1413120, size.height * 0.9995950);
    path.cubicTo(
        size.width * 0.1414156,
        size.height * 0.9994825,
        size.width * 0.1416204,
        size.height * 0.9994108,
        size.width * 0.1418453,
        size.height * 0.9994080);
    path.cubicTo(
        size.width * 0.1420707,
        size.height * 0.9994053,
        size.width * 0.1422809,
        size.height * 0.9994715,
        size.width * 0.1423933,
        size.height * 0.9995813);
    path.cubicTo(
        size.width * 0.1431084,
        size.height * 1.000278,
        size.width * 0.1443511,
        size.height * 1.001489,
        size.width * 0.1451964,
        size.height * 1.002312);
    path.cubicTo(
        size.width * 0.1456893,
        size.height * 1.002793,
        size.width * 0.1467813,
        size.height * 1.002957,
        size.width * 0.1476356,
        size.height * 1.002680);
    path.cubicTo(
        size.width * 0.1476747,
        size.height * 1.002667,
        size.width * 0.1477138,
        size.height * 1.002655,
        size.width * 0.1477533,
        size.height * 1.002642);
    path.cubicTo(
        size.width * 0.1486071,
        size.height * 1.002364,
        size.width * 0.1489000,
        size.height * 1.001750,
        size.width * 0.1484067,
        size.height * 1.001270);
    path.cubicTo(
        size.width * 0.1475702,
        size.height * 1.000455,
        size.width * 0.1463440,
        size.height * 0.9992600,
        size.width * 0.1456258,
        size.height * 0.9985600);
    path.cubicTo(
        size.width * 0.1455111,
        size.height * 0.9984485,
        size.width * 0.1455160,
        size.height * 0.9983108,
        size.width * 0.1456378,
        size.height * 0.9982018);
    path.cubicTo(
        size.width * 0.1457596,
        size.height * 0.9980927,
        size.width * 0.1459787,
        size.height * 0.9980307,
        size.width * 0.1462067,
        size.height * 0.9980408);
    path.cubicTo(
        size.width * 0.1478529,
        size.height * 0.9981118,
        size.width * 0.1508524,
        size.height * 0.9982415,
        size.width * 0.1526111,
        size.height * 0.9983175);
    path.cubicTo(
        size.width * 0.1527538,
        size.height * 0.9983235,
        size.width * 0.1528844,
        size.height * 0.9982730,
        size.width * 0.1529258,
        size.height * 0.9981960);
    path.cubicTo(
        size.width * 0.1529667,
        size.height * 0.9981190,
        size.width * 0.1529071,
        size.height * 0.9980363,
        size.width * 0.1527822,
        size.height * 0.9979973);
    path.cubicTo(
        size.width * 0.1499458,
        size.height * 0.9971118,
        size.width * 0.1430107,
        size.height * 0.9949460,
        size.width * 0.1413240,
        size.height * 0.9944195);
    path.cubicTo(
        size.width * 0.1410796,
        size.height * 0.9943430,
        size.width * 0.1408778,
        size.height * 0.9942298,
        size.width * 0.1407418,
        size.height * 0.9940925);
    path.cubicTo(
        size.width * 0.1396933,
        size.height * 0.9930353,
        size.width * 0.1349742,
        size.height * 0.9882755,
        size.width * 0.1330676,
        size.height * 0.9863525);
    path.cubicTo(
        size.width * 0.1329258,
        size.height * 0.9862095,
        size.width * 0.1329462,
        size.height * 0.9860328,
        size.width * 0.1331204,
        size.height * 0.9859015);
    path.cubicTo(
        size.width * 0.1332942,
        size.height * 0.9857700,
        size.width * 0.1335893,
        size.height * 0.9857083,
        size.width * 0.1338738,
        size.height * 0.9857438);
    path.cubicTo(
        size.width * 0.1375693,
        size.height * 0.9862050,
        size.width * 0.1467178,
        size.height * 0.9873468,
        size.width * 0.1515698,
        size.height * 0.9879525);
    path.cubicTo(
        size.width * 0.1517724,
        size.height * 0.9879778,
        size.width * 0.1519764,
        size.height * 0.9879145,
        size.width * 0.1520467,
        size.height * 0.9878048);
    path.cubicTo(
        size.width * 0.1521169,
        size.height * 0.9876950,
        size.width * 0.1520316,
        size.height * 0.9875730,
        size.width * 0.1518471,
        size.height * 0.9875200);
    path.cubicTo(
        size.width * 0.1457667,
        size.height * 0.9857683,
        size.width * 0.1317978,
        size.height * 0.9817440,
        size.width * 0.1279324,
        size.height * 0.9806308);
    path.cubicTo(
        size.width * 0.1272747,
        size.height * 0.9804413,
        size.width * 0.1267284,
        size.height * 0.9801490,
        size.width * 0.1263591,
        size.height * 0.9797890);
    path.cubicTo(
        size.width * 0.1247156,
        size.height * 0.9781878,
        size.width * 0.1199307,
        size.height * 0.9735260,
        size.width * 0.1179116,
        size.height * 0.9715588);
    path.cubicTo(
        size.width * 0.1174053,
        size.height * 0.9710658,
        size.width * 0.1162853,
        size.height * 0.9708970,
        size.width * 0.1154089,
        size.height * 0.9711815);
    path.cubicTo(
        size.width * 0.1153964,
        size.height * 0.9711855,
        size.width * 0.1153840,
        size.height * 0.9711898,
        size.width * 0.1153716,
        size.height * 0.9711938);
    path.cubicTo(
        size.width * 0.1144956,
        size.height * 0.9714783,
        size.width * 0.1141951,
        size.height * 0.9721085,
        size.width * 0.1147009,
        size.height * 0.9726013);
    path.cubicTo(
        size.width * 0.1167142,
        size.height * 0.9745628,
        size.width * 0.1214764,
        size.height * 0.9792028,
        size.width * 0.1231338,
        size.height * 0.9808173);
    path.cubicTo(
        size.width * 0.1235124,
        size.height * 0.9811863,
        size.width * 0.1236884,
        size.height * 0.9816098,
        size.width * 0.1236400,
        size.height * 0.9820350);
    path.cubicTo(
        size.width * 0.1233556,
        size.height * 0.9845155,
        size.width * 0.1223342,
        size.height * 0.9934208,
        size.width * 0.1218929,
        size.height * 0.9972720);
    path.cubicTo(
        size.width * 0.1218796,
        size.height * 0.9973885,
        size.width * 0.1220218,
        size.height * 0.9974923,
        size.width * 0.1222253,
        size.height * 0.9975145);
    path.cubicTo(
        size.width * 0.1224284,
        size.height * 0.9975368,
        size.width * 0.1226298,
        size.height * 0.9974708,
        size.width * 0.1226951,
        size.height * 0.9973600);
    path.cubicTo(
        size.width * 0.1242862,
        size.height * 0.9946645,
        size.width * 0.1273227,
        size.height * 0.9895195,
        size.width * 0.1285356,
        size.height * 0.9874648);
    path.cubicTo(
        size.width * 0.1286271,
        size.height * 0.9873093,
        size.width * 0.1288729,
        size.height * 0.9871988,
        size.width * 0.1291627,
        size.height * 0.9871820);
    path.cubicTo(
        size.width * 0.1294524,
        size.height * 0.9871655,
        size.width * 0.1297324,
        size.height * 0.9872460,
        size.width * 0.1298782,
        size.height * 0.9873880);
    path.cubicTo(
        size.width * 0.1318347,
        size.height * 0.9892943,
        size.width * 0.1366787,
        size.height * 0.9940138,
        size.width * 0.1377551,
        size.height * 0.9950623);
    path.cubicTo(
        size.width * 0.1378947,
        size.height * 0.9951985,
        size.width * 0.1379644,
        size.height * 0.9953543,
        size.width * 0.1379556,
        size.height * 0.9955115);
    path.cubicTo(
        size.width * 0.1378929,
        size.height * 0.9966098,
        size.width * 0.1376342,
        size.height * 1.001170,
        size.width * 0.1375316,
        size.height * 1.002987);
    path.cubicTo(
        size.width * 0.1375267,
        size.height * 1.003067,
        size.width * 0.1376209,
        size.height * 1.003138,
        size.width * 0.1377587,
        size.height * 1.003158);
    path.cubicTo(
        size.width * 0.1378960,
        size.height * 1.003178,
        size.width * 0.1380400,
        size.height * 1.003142,
        size.width * 0.1381053,
        size.height * 1.003071);
    path.cubicTo(
        size.width * 0.1389649,
        size.height * 1.002139,
        size.width * 0.1405084,
        size.height * 1.000466,
        size.width * 0.1413120,
        size.height * 0.9995950);
    path.close();
    path.moveTo(size.width * 0.06025467, size.height * 0.9980188);
    path.cubicTo(
        size.width * 0.06047956,
        size.height * 0.9980130,
        size.width * 0.06069244,
        size.height * 0.9980768,
        size.width * 0.06080933,
        size.height * 0.9981853);
    path.cubicTo(
        size.width * 0.06092622,
        size.height * 0.9982935,
        size.width * 0.06092889,
        size.height * 0.9984290,
        size.width * 0.06081644,
        size.height * 0.9985388);
    path.cubicTo(
        size.width * 0.06010133,
        size.height * 0.9992355,
        size.width * 0.05885867,
        size.height * 1.000446,
        size.width * 0.05801333,
        size.height * 1.001270);
    path.cubicTo(
        size.width * 0.05752044,
        size.height * 1.001750,
        size.width * 0.05781289,
        size.height * 1.002364,
        size.width * 0.05866711,
        size.height * 1.002642);
    path.cubicTo(
        size.width * 0.05870622,
        size.height * 1.002655,
        size.width * 0.05874533,
        size.height * 1.002667,
        size.width * 0.05878444,
        size.height * 1.002680);
    path.cubicTo(
        size.width * 0.05963867,
        size.height * 1.002957,
        size.width * 0.06073067,
        size.height * 1.002793,
        size.width * 0.06122356,
        size.height * 1.002312);
    path.cubicTo(
        size.width * 0.06206044,
        size.height * 1.001497,
        size.width * 0.06328667,
        size.height * 1.000303,
        size.width * 0.06400489,
        size.height * 0.9996025);
    path.cubicTo(
        size.width * 0.06411911,
        size.height * 0.9994913,
        size.width * 0.06433378,
        size.height * 0.9994245,
        size.width * 0.06456267,
        size.height * 0.9994295);
    path.cubicTo(
        size.width * 0.06479111,
        size.height * 0.9994343,
        size.width * 0.06499600,
        size.height * 0.9995100,
        size.width * 0.06509511,
        size.height * 0.9996260);
    path.cubicTo(
        size.width * 0.06580844,
        size.height * 1.000464,
        size.width * 0.06710889,
        size.height * 1.001990,
        size.width * 0.06787111,
        size.height * 1.002884);
    path.cubicTo(
        size.width * 0.06793289,
        size.height * 1.002957,
        size.width * 0.06807600,
        size.height * 1.002995,
        size.width * 0.06821511,
        size.height * 1.002977);
    path.cubicTo(
        size.width * 0.06835422,
        size.height * 1.002958,
        size.width * 0.06845200,
        size.height * 1.002888,
        size.width * 0.06844933,
        size.height * 1.002808);
    path.cubicTo(
        size.width * 0.06839467,
        size.height * 1.000983,
        size.width * 0.06826133,
        size.height * 0.9965218,
        size.width * 0.06822889,
        size.height * 0.9954370);
    path.cubicTo(
        size.width * 0.06822444,
        size.height * 0.9952798,
        size.width * 0.06829778,
        size.height * 0.9951248,
        size.width * 0.06844133,
        size.height * 0.9949898);
    path.cubicTo(
        size.width * 0.06954489,
        size.height * 0.9939505,
        size.width * 0.07451333,
        size.height * 0.9892718,
        size.width * 0.07652044,
        size.height * 0.9873815);
    path.cubicTo(
        size.width * 0.07666978,
        size.height * 0.9872408,
        size.width * 0.07695200,
        size.height * 0.9871625,
        size.width * 0.07724133,
        size.height * 0.9871815);
    path.cubicTo(
        size.width * 0.07753067,
        size.height * 0.9872005,
        size.width * 0.07777333,
        size.height * 0.9873135,
        size.width * 0.07786089,
        size.height * 0.9874697);
    path.cubicTo(
        size.width * 0.07899867,
        size.height * 0.9895005,
        size.width * 0.08181467,
        size.height * 0.9945283,
        size.width * 0.08330844,
        size.height * 0.9971945);
    path.cubicTo(
        size.width * 0.08337067,
        size.height * 0.9973057,
        size.width * 0.08357022,
        size.height * 0.9973735,
        size.width * 0.08377422,
        size.height * 0.9973530);
    path.cubicTo(
        size.width * 0.08397822,
        size.height * 0.9973325,
        size.width * 0.08412356,
        size.height * 0.9972297,
        size.width * 0.08411289,
        size.height * 0.9971132);
    path.cubicTo(
        size.width * 0.08376933,
        size.height * 0.9932753,
        size.width * 0.08298044,
        size.height * 0.9844585,
        size.width * 0.08276222,
        size.height * 0.9820187);
    path.cubicTo(
        size.width * 0.08272533,
        size.height * 0.9816037,
        size.width * 0.08290178,
        size.height * 0.9811915,
        size.width * 0.08327156,
        size.height * 0.9808317);
    path.cubicTo(
        size.width * 0.08491511,
        size.height * 0.9792302,
        size.width * 0.08970000,
        size.height * 0.9745685,
        size.width * 0.09171911,
        size.height * 0.9726012);
    path.cubicTo(
        size.width * 0.09222489,
        size.height * 0.9721085,
        size.width * 0.09192489,
        size.height * 0.9714782,
        size.width * 0.09104844,
        size.height * 0.9711937);
    path.cubicTo(
        size.width * 0.09103600,
        size.height * 0.9711897,
        size.width * 0.09102356,
        size.height * 0.9711855,
        size.width * 0.09101111,
        size.height * 0.9711815);
    path.cubicTo(
        size.width * 0.09013511,
        size.height * 0.9708970,
        size.width * 0.08901467,
        size.height * 0.9710657,
        size.width * 0.08850889,
        size.height * 0.9715587);
    path.cubicTo(
        size.width * 0.08649556,
        size.height * 0.9735200,
        size.width * 0.08173289,
        size.height * 0.9781600,
        size.width * 0.08007556,
        size.height * 0.9797747);
    path.cubicTo(
        size.width * 0.07969733,
        size.height * 0.9801435,
        size.width * 0.07913289,
        size.height * 0.9804412,
        size.width * 0.07845422,
        size.height * 0.9806300);
    path.cubicTo(
        size.width * 0.07449244,
        size.height * 0.9817317,
        size.width * 0.06027156,
        size.height * 0.9856870,
        size.width * 0.05412133,
        size.height * 0.9873975);
    path.cubicTo(
        size.width * 0.05393556,
        size.height * 0.9874492,
        size.width * 0.05384711,
        size.height * 0.9875705,
        size.width * 0.05391422,
        size.height * 0.9876805);
    path.cubicTo(
        size.width * 0.05398178,
        size.height * 0.9877907,
        size.width * 0.05418400,
        size.height * 0.9878557,
        size.width * 0.05438711,
        size.height * 0.9878322);
    path.cubicTo(
        size.width * 0.05933244,
        size.height * 0.9872595,
        size.width * 0.06877244,
        size.height * 0.9861662,
        size.width * 0.07254222,
        size.height * 0.9857297);
    path.cubicTo(
        size.width * 0.07282711,
        size.height * 0.9856967,
        size.width * 0.07312044,
        size.height * 0.9857610,
        size.width * 0.07329111,
        size.height * 0.9858937);
    path.cubicTo(
        size.width * 0.07346133,
        size.height * 0.9860267,
        size.width * 0.07347733,
        size.height * 0.9862035,
        size.width * 0.07333156,
        size.height * 0.9863452);
    path.cubicTo(
        size.width * 0.07137511,
        size.height * 0.9882515,
        size.width * 0.06653067,
        size.height * 0.9929712,
        size.width * 0.06545467,
        size.height * 0.9940197);
    path.cubicTo(
        size.width * 0.06531467,
        size.height * 0.9941560,
        size.width * 0.06511022,
        size.height * 0.9942675,
        size.width * 0.06486311,
        size.height * 0.9943417);
    path.cubicTo(
        size.width * 0.06314133,
        size.height * 0.9948605,
        size.width * 0.05599200,
        size.height * 0.9970145,
        size.width * 0.05314222,
        size.height * 0.9978730);
    path.cubicTo(
        size.width * 0.05301689,
        size.height * 0.9979107,
        size.width * 0.05295511,
        size.height * 0.9979920,
        size.width * 0.05299244,
        size.height * 0.9980692);
    path.cubicTo(
        size.width * 0.05303022,
        size.height * 0.9981462,
        size.width * 0.05315778,
        size.height * 0.9981982,
        size.width * 0.05329956,
        size.height * 0.9981947);
    path.cubicTo(
        size.width * 0.05516400,
        size.height * 0.9981475,
        size.width * 0.05851156,
        size.height * 0.9980627,
        size.width * 0.06025467,
        size.height * 0.9980187);
    path.close();
    path.moveTo(size.width * 0.1164284, size.height * 0.9858513);
    path.cubicTo(
        size.width * 0.1165520,
        size.height * 0.9860445,
        size.width * 0.1165293,
        size.height * 0.9862578,
        size.width * 0.1163662,
        size.height * 0.9864415);
    path.cubicTo(
        size.width * 0.1155147,
        size.height * 0.9873993,
        size.width * 0.1127582,
        size.height * 0.9905003,
        size.width * 0.1114898,
        size.height * 0.9919273);
    path.cubicTo(
        size.width * 0.1113667,
        size.height * 0.9920658,
        size.width * 0.1111151,
        size.height * 0.9921530,
        size.width * 0.1108400,
        size.height * 0.9921530);
    path.cubicTo(
        size.width * 0.1105649,
        size.height * 0.9921530,
        size.width * 0.1103133,
        size.height * 0.9920657,
        size.width * 0.1101902,
        size.height * 0.9919273);
    path.cubicTo(
        size.width * 0.1089218,
        size.height * 0.9905003,
        size.width * 0.1061653,
        size.height * 0.9873993,
        size.width * 0.1053142,
        size.height * 0.9864415);
    path.cubicTo(
        size.width * 0.1051507,
        size.height * 0.9862577,
        size.width * 0.1051280,
        size.height * 0.9860445,
        size.width * 0.1052516,
        size.height * 0.9858513);
    path.cubicTo(
        size.width * 0.1060444,
        size.height * 0.9846090,
        size.width * 0.1090653,
        size.height * 0.9798750,
        size.width * 0.1103049,
        size.height * 0.9779330);
    path.cubicTo(
        size.width * 0.1103858,
        size.height * 0.9778060,
        size.width * 0.1106000,
        size.height * 0.9777213,
        size.width * 0.1108400,
        size.height * 0.9777213);
    path.cubicTo(
        size.width * 0.1110800,
        size.height * 0.9777213,
        size.width * 0.1112942,
        size.height * 0.9778060,
        size.width * 0.1113751,
        size.height * 0.9779330);
    path.cubicTo(
        size.width * 0.1126147,
        size.height * 0.9798750,
        size.width * 0.1156356,
        size.height * 0.9846090,
        size.width * 0.1164284,
        size.height * 0.9858513);
    path.close();
    path.moveTo(size.width * 0.08999156, size.height * 0.9858513);
    path.cubicTo(
        size.width * 0.08986844,
        size.height * 0.9860445,
        size.width * 0.08989067,
        size.height * 0.9862578,
        size.width * 0.09005422,
        size.height * 0.9864415);
    path.cubicTo(
        size.width * 0.09090533,
        size.height * 0.9873993,
        size.width * 0.09366178,
        size.height * 0.9905003,
        size.width * 0.09493022,
        size.height * 0.9919273);
    path.cubicTo(
        size.width * 0.09505333,
        size.height * 0.9920658,
        size.width * 0.09530489,
        size.height * 0.9921530,
        size.width * 0.09558000,
        size.height * 0.9921530);
    path.cubicTo(
        size.width * 0.09585511,
        size.height * 0.9921530,
        size.width * 0.09610667,
        size.height * 0.9920657,
        size.width * 0.09622978,
        size.height * 0.9919273);
    path.cubicTo(
        size.width * 0.09749822,
        size.height * 0.9905003,
        size.width * 0.1002547,
        size.height * 0.9873993,
        size.width * 0.1011062,
        size.height * 0.9864415);
    path.cubicTo(
        size.width * 0.1012693,
        size.height * 0.9862577,
        size.width * 0.1012920,
        size.height * 0.9860445,
        size.width * 0.1011684,
        size.height * 0.9858513);
    path.cubicTo(
        size.width * 0.1003756,
        size.height * 0.9846090,
        size.width * 0.09735467,
        size.height * 0.9798750,
        size.width * 0.09611556,
        size.height * 0.9779330);
    path.cubicTo(
        size.width * 0.09603422,
        size.height * 0.9778060,
        size.width * 0.09582000,
        size.height * 0.9777213,
        size.width * 0.09558000,
        size.height * 0.9777213);
    path.cubicTo(
        size.width * 0.09534000,
        size.height * 0.9777213,
        size.width * 0.09512578,
        size.height * 0.9778060,
        size.width * 0.09504489,
        size.height * 0.9779330);
    path.cubicTo(
        size.width * 0.09380533,
        size.height * 0.9798750,
        size.width * 0.09078444,
        size.height * 0.9846090,
        size.width * 0.08999156,
        size.height * 0.9858513);
    path.close();
    path.moveTo(size.width * 0.06897289, size.height * 0.9790253);
    path.cubicTo(
        size.width * 0.06873689,
        size.height * 0.9791820,
        size.width * 0.06839733,
        size.height * 0.9792775,
        size.width * 0.06803289,
        size.height * 0.9792898);
    path.cubicTo(
        size.width * 0.06613289,
        size.height * 0.9793540,
        size.width * 0.05998000,
        size.height * 0.9795618,
        size.width * 0.05714889,
        size.height * 0.9796572);
    path.cubicTo(
        size.width * 0.05687422,
        size.height * 0.9796665,
        size.width * 0.05661378,
        size.height * 0.9795877,
        size.width * 0.05647600,
        size.height * 0.9794538);
    path.cubicTo(
        size.width * 0.05633867,
        size.height * 0.9793198,
        size.width * 0.05634756,
        size.height * 0.9791535,
        size.width * 0.05649911,
        size.height * 0.9790243);
    path.cubicTo(
        size.width * 0.05806178,
        size.height * 0.9776930,
        size.width * 0.06145822,
        size.height * 0.9747995,
        size.width * 0.06250667,
        size.height * 0.9739060);
    path.cubicTo(
        size.width * 0.06270800,
        size.height * 0.9737348,
        size.width * 0.06302489,
        size.height * 0.9736170,
        size.width * 0.06338444,
        size.height * 0.9735805);
    path.cubicTo(
        size.width * 0.06569333,
        size.height * 0.9733455,
        size.width * 0.07449244,
        size.height * 0.9724502,
        size.width * 0.07810178,
        size.height * 0.9720830);
    path.cubicTo(
        size.width * 0.07833778,
        size.height * 0.9720590,
        size.width * 0.07857556,
        size.height * 0.9721210,
        size.width * 0.07869556,
        size.height * 0.9722378);
    path.cubicTo(
        size.width * 0.07881556,
        size.height * 0.9723548,
        size.width * 0.07879200,
        size.height * 0.9725015,
        size.width * 0.07863689,
        size.height * 0.9726045);
    path.cubicTo(
        size.width * 0.07626711,
        size.height * 0.9741793,
        size.width * 0.07048889,
        size.height * 0.9780178,
        size.width * 0.06897289,
        size.height * 0.9790253);
    path.close();
    path.moveTo(size.width * 0.1374476, size.height * 0.9790253);
    path.cubicTo(
        size.width * 0.1376831,
        size.height * 0.9791820,
        size.width * 0.1380227,
        size.height * 0.9792775,
        size.width * 0.1383871,
        size.height * 0.9792898);
    path.cubicTo(
        size.width * 0.1402871,
        size.height * 0.9793540,
        size.width * 0.1464400,
        size.height * 0.9795618,
        size.width * 0.1492711,
        size.height * 0.9796572);
    path.cubicTo(
        size.width * 0.1495458,
        size.height * 0.9796665,
        size.width * 0.1498062,
        size.height * 0.9795877,
        size.width * 0.1499440,
        size.height * 0.9794538);
    path.cubicTo(
        size.width * 0.1500813,
        size.height * 0.9793198,
        size.width * 0.1500724,
        size.height * 0.9791535,
        size.width * 0.1499209,
        size.height * 0.9790243);
    path.cubicTo(
        size.width * 0.1483582,
        size.height * 0.9776930,
        size.width * 0.1449622,
        size.height * 0.9747995,
        size.width * 0.1439133,
        size.height * 0.9739060);
    path.cubicTo(
        size.width * 0.1437120,
        size.height * 0.9737348,
        size.width * 0.1433951,
        size.height * 0.9736170,
        size.width * 0.1430360,
        size.height * 0.9735805);
    path.cubicTo(
        size.width * 0.1407267,
        size.height * 0.9733455,
        size.width * 0.1319276,
        size.height * 0.9724502,
        size.width * 0.1283182,
        size.height * 0.9720830);
    path.cubicTo(
        size.width * 0.1280822,
        size.height * 0.9720590,
        size.width * 0.1278444,
        size.height * 0.9721210,
        size.width * 0.1277244,
        size.height * 0.9722378);
    path.cubicTo(
        size.width * 0.1276044,
        size.height * 0.9723548,
        size.width * 0.1276280,
        size.height * 0.9725015,
        size.width * 0.1277831,
        size.height * 0.9726045);
    path.cubicTo(
        size.width * 0.1301533,
        size.height * 0.9741793,
        size.width * 0.1359311,
        size.height * 0.9780178,
        size.width * 0.1374476,
        size.height * 0.9790253);
    path.close();
    path.moveTo(size.width * 0.05575422, size.height * 0.9661467);
    path.cubicTo(
        size.width * 0.05539511,
        size.height * 0.9661833,
        size.width * 0.05507822,
        size.height * 0.9663010,
        size.width * 0.05487689,
        size.height * 0.9664723);
    path.cubicTo(
        size.width * 0.05382800,
        size.height * 0.9673658,
        size.width * 0.05043200,
        size.height * 0.9702593,
        size.width * 0.04886889,
        size.height * 0.9715905);
    path.cubicTo(
        size.width * 0.04871733,
        size.height * 0.9717197,
        size.width * 0.04870844,
        size.height * 0.9718860,
        size.width * 0.04884622,
        size.height * 0.9720200);
    path.cubicTo(
        size.width * 0.04898356,
        size.height * 0.9721540,
        size.width * 0.04924400,
        size.height * 0.9722327,
        size.width * 0.04951867,
        size.height * 0.9722235);
    path.cubicTo(
        size.width * 0.05235022,
        size.height * 0.9721280,
        size.width * 0.05850267,
        size.height * 0.9719202,
        size.width * 0.06040311,
        size.height * 0.9718560);
    path.cubicTo(
        size.width * 0.06076711,
        size.height * 0.9718438,
        size.width * 0.06110711,
        size.height * 0.9717482,
        size.width * 0.06134267,
        size.height * 0.9715915);
    path.cubicTo(
        size.width * 0.06285911,
        size.height * 0.9705843,
        size.width * 0.06863689,
        size.height * 0.9667455,
        size.width * 0.07100711,
        size.height * 0.9651707);
    path.cubicTo(
        size.width * 0.07116222,
        size.height * 0.9650678,
        size.width * 0.07118533,
        size.height * 0.9649210,
        size.width * 0.07106533,
        size.height * 0.9648040);
    path.cubicTo(
        size.width * 0.07094533,
        size.height * 0.9646872,
        size.width * 0.07070800,
        size.height * 0.9646252,
        size.width * 0.07047200,
        size.height * 0.9646492);
    path.cubicTo(
        size.width * 0.06686222,
        size.height * 0.9650165,
        size.width * 0.05806311,
        size.height * 0.9659117,
        size.width * 0.05575422,
        size.height * 0.9661467);
    path.close();
    path.moveTo(size.width * 0.1506658, size.height * 0.9661467);
    path.cubicTo(
        size.width * 0.1510249,
        size.height * 0.9661833,
        size.width * 0.1513422,
        size.height * 0.9663010,
        size.width * 0.1515431,
        size.height * 0.9664723);
    path.cubicTo(
        size.width * 0.1525920,
        size.height * 0.9673658,
        size.width * 0.1559880,
        size.height * 0.9702593,
        size.width * 0.1575511,
        size.height * 0.9715905);
    path.cubicTo(
        size.width * 0.1577027,
        size.height * 0.9717197,
        size.width * 0.1577116,
        size.height * 0.9718860,
        size.width * 0.1575738,
        size.height * 0.9720200);
    path.cubicTo(
        size.width * 0.1574364,
        size.height * 0.9721540,
        size.width * 0.1571760,
        size.height * 0.9722327,
        size.width * 0.1569013,
        size.height * 0.9722235);
    path.cubicTo(
        size.width * 0.1540698,
        size.height * 0.9721280,
        size.width * 0.1479173,
        size.height * 0.9719202,
        size.width * 0.1460173,
        size.height * 0.9718560);
    path.cubicTo(
        size.width * 0.1456529,
        size.height * 0.9718438,
        size.width * 0.1453133,
        size.height * 0.9717482,
        size.width * 0.1450773,
        size.height * 0.9715915);
    path.cubicTo(
        size.width * 0.1435609,
        size.height * 0.9705843,
        size.width * 0.1377831,
        size.height * 0.9667455,
        size.width * 0.1354129,
        size.height * 0.9651707);
    path.cubicTo(
        size.width * 0.1352578,
        size.height * 0.9650678,
        size.width * 0.1352347,
        size.height * 0.9649210,
        size.width * 0.1353547,
        size.height * 0.9648040);
    path.cubicTo(
        size.width * 0.1354747,
        size.height * 0.9646872,
        size.width * 0.1357120,
        size.height * 0.9646252,
        size.width * 0.1359484,
        size.height * 0.9646492);
    path.cubicTo(
        size.width * 0.1395578,
        size.height * 0.9650165,
        size.width * 0.1483569,
        size.height * 0.9659117,
        size.width * 0.1506658,
        size.height * 0.9661467);
    path.close();
    path.moveTo(size.width * 0.1143311, size.height * 0.9484858);
    path.cubicTo(
        size.width * 0.1249622,
        size.height * 0.9519382,
        size.width * 0.1286102,
        size.height * 0.9595963,
        size.width * 0.1224724,
        size.height * 0.9655763);
    path.cubicTo(
        size.width * 0.1163342,
        size.height * 0.9715563,
        size.width * 0.1027200,
        size.height * 0.9736083,
        size.width * 0.09208889,
        size.height * 0.9701558);
    path.cubicTo(
        size.width * 0.08145778,
        size.height * 0.9667033,
        size.width * 0.07780978,
        size.height * 0.9590450,
        size.width * 0.08394800,
        size.height * 0.9530650);
    path.cubicTo(
        size.width * 0.09008578,
        size.height * 0.9470850,
        size.width * 0.1037000,
        size.height * 0.9450330,
        size.width * 0.1143311,
        size.height * 0.9484858);
    path.close();
    path.moveTo(size.width * 0.1842676, size.height * 0.9608970);
    path.cubicTo(
        size.width * 0.1841462,
        size.height * 0.9607900,
        size.width * 0.1841378,
        size.height * 0.9606545,
        size.width * 0.1842462,
        size.height * 0.9605435);
    path.cubicTo(
        size.width * 0.1843542,
        size.height * 0.9604322,
        size.width * 0.1845618,
        size.height * 0.9603633,
        size.width * 0.1847871,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1862173,
        size.height * 0.9603633,
        size.width * 0.1887027,
        size.height * 0.9603633,
        size.width * 0.1903929,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1913791,
        size.height * 0.9603633,
        size.width * 0.1921787,
        size.height * 0.9599135,
        size.width * 0.1921787,
        size.height * 0.9593588);
    path.cubicTo(
        size.width * 0.1921787,
        size.height * 0.9593335,
        size.width * 0.1921787,
        size.height * 0.9593080,
        size.width * 0.1921787,
        size.height * 0.9592825);
    path.cubicTo(
        size.width * 0.1921787,
        size.height * 0.9587277,
        size.width * 0.1913791,
        size.height * 0.9582780,
        size.width * 0.1903929,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.1887200,
        size.height * 0.9582780,
        size.width * 0.1862676,
        size.height * 0.9582780,
        size.width * 0.1848307,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.1846018,
        size.height * 0.9582780,
        size.width * 0.1843920,
        size.height * 0.9582068,
        size.width * 0.1842853,
        size.height * 0.9580930);
    path.cubicTo(
        size.width * 0.1841787,
        size.height * 0.9579793,
        size.width * 0.1841924,
        size.height * 0.9578415,
        size.width * 0.1843218,
        size.height * 0.9577353);
    path.cubicTo(
        size.width * 0.1852542,
        size.height * 0.9569690,
        size.width * 0.1869538,
        size.height * 0.9555725,
        size.width * 0.1879502,
        size.height * 0.9547538);
    path.cubicTo(
        size.width * 0.1880307,
        size.height * 0.9546875,
        size.width * 0.1880187,
        size.height * 0.9545985,
        size.width * 0.1879204,
        size.height * 0.9545400);
    path.cubicTo(
        size.width * 0.1878227,
        size.height * 0.9544815,
        size.width * 0.1876653,
        size.height * 0.9544693,
        size.width * 0.1875427,
        size.height * 0.9545105);
    path.cubicTo(
        size.width * 0.1847613,
        size.height * 0.9554493,
        size.width * 0.1779591,
        size.height * 0.9577450,
        size.width * 0.1763053,
        size.height * 0.9583033);
    path.cubicTo(
        size.width * 0.1760653,
        size.height * 0.9583840,
        size.width * 0.1757902,
        size.height * 0.9584257,
        size.width * 0.1755107,
        size.height * 0.9584235);
    path.cubicTo(
        size.width * 0.1733591,
        size.height * 0.9584055,
        size.width * 0.1636711,
        size.height * 0.9583245,
        size.width * 0.1597573,
        size.height * 0.9582918);
    path.cubicTo(
        size.width * 0.1594658,
        size.height * 0.9582895,
        size.width * 0.1592044,
        size.height * 0.9581910,
        size.width * 0.1590889,
        size.height * 0.9580405);
    path.cubicTo(
        size.width * 0.1589738,
        size.height * 0.9578900,
        size.width * 0.1590262,
        size.height * 0.9577155,
        size.width * 0.1592231,
        size.height * 0.9575948);
    path.cubicTo(
        size.width * 0.1617809,
        size.height * 0.9560253,
        size.width * 0.1681129,
        size.height * 0.9521395,
        size.width * 0.1714716,
        size.height * 0.9500785);
    path.cubicTo(
        size.width * 0.1716116,
        size.height * 0.9499925,
        size.width * 0.1716164,
        size.height * 0.9498615,
        size.width * 0.1714827,
        size.height * 0.9497725);
    path.cubicTo(
        size.width * 0.1713489,
        size.height * 0.9496833,
        size.width * 0.1711182,
        size.height * 0.9496640,
        size.width * 0.1709440,
        size.height * 0.9497273);
    path.cubicTo(
        size.width * 0.1652071,
        size.height * 0.9518135,
        size.width * 0.1520271,
        size.height * 0.9566062,
        size.width * 0.1483800,
        size.height * 0.9579325);
    path.cubicTo(
        size.width * 0.1477596,
        size.height * 0.9581580,
        size.width * 0.1470364,
        size.height * 0.9582780,
        size.width * 0.1462978,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.1430107,
        size.height * 0.9582780,
        size.width * 0.1334404,
        size.height * 0.9582780,
        size.width * 0.1294022,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.1283907,
        size.height * 0.9582780,
        size.width * 0.1275707,
        size.height * 0.9587395,
        size.width * 0.1275707,
        size.height * 0.9593085);
    path.cubicTo(
        size.width * 0.1275707,
        size.height * 0.9593165,
        size.width * 0.1275707,
        size.height * 0.9593247,
        size.width * 0.1275707,
        size.height * 0.9593328);
    path.cubicTo(
        size.width * 0.1275707,
        size.height * 0.9599020,
        size.width * 0.1283907,
        size.height * 0.9603633,
        size.width * 0.1294022,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1334284,
        size.height * 0.9603633,
        size.width * 0.1429538,
        size.height * 0.9603633,
        size.width * 0.1462684,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1470253,
        size.height * 0.9603633,
        size.width * 0.1477658,
        size.height * 0.9604892,
        size.width * 0.1483960,
        size.height * 0.9607255);
    path.cubicTo(
        size.width * 0.1520729,
        size.height * 0.9621045,
        size.width * 0.1652729,
        size.height * 0.9670545,
        size.width * 0.1709813,
        size.height * 0.9691952);
    path.cubicTo(
        size.width * 0.1711538,
        size.height * 0.9692600,
        size.width * 0.1713849,
        size.height * 0.9692425,
        size.width * 0.1715209,
        size.height * 0.9691545);
    path.cubicTo(
        size.width * 0.1716569,
        size.height * 0.9690667,
        size.width * 0.1716556,
        size.height * 0.9689355,
        size.width * 0.1715182,
        size.height * 0.9688485);
    path.cubicTo(
        size.width * 0.1681636,
        size.height * 0.9667257,
        size.width * 0.1617604,
        size.height * 0.9626737,
        size.width * 0.1592036,
        size.height * 0.9610557);
    path.cubicTo(
        size.width * 0.1590102,
        size.height * 0.9609333,
        size.width * 0.1589622,
        size.height * 0.9607582,
        size.width * 0.1590818,
        size.height * 0.9606090);
    path.cubicTo(
        size.width * 0.1592009,
        size.height * 0.9604595,
        size.width * 0.1594653,
        size.height * 0.9603633,
        size.width * 0.1597564,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1636693,
        size.height * 0.9603633,
        size.width * 0.1733582,
        size.height * 0.9603633,
        size.width * 0.1755102,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.1757902,
        size.height * 0.9603633,
        size.width * 0.1760644,
        size.height * 0.9604072,
        size.width * 0.1763022,
        size.height * 0.9604902);
    path.cubicTo(
        size.width * 0.1779618,
        size.height * 0.9610697,
        size.width * 0.1848524,
        size.height * 0.9634755,
        size.width * 0.1875991,
        size.height * 0.9644345);
    path.cubicTo(
        size.width * 0.1877200,
        size.height * 0.9644765,
        size.width * 0.1878760,
        size.height * 0.9644662,
        size.width * 0.1879760,
        size.height * 0.9644092);
    path.cubicTo(
        size.width * 0.1880756,
        size.height * 0.9643525,
        size.width * 0.1880920,
        size.height * 0.9642645,
        size.width * 0.1880156,
        size.height * 0.9641970);
    path.cubicTo(
        size.width * 0.1870111,
        size.height * 0.9633125,
        size.width * 0.1852067,
        size.height * 0.9617240,
        size.width * 0.1842676,
        size.height * 0.9608970);
    path.close();
    path.moveTo(size.width * 0.02215289, size.height * 0.9577445);
    path.cubicTo(
        size.width * 0.02227378,
        size.height * 0.9578513,
        size.width * 0.02228222,
        size.height * 0.9579867,
        size.width * 0.02217378,
        size.height * 0.9580977);
    path.cubicTo(
        size.width * 0.02206578,
        size.height * 0.9582090,
        size.width * 0.02185822,
        size.height * 0.9582780,
        size.width * 0.02163289,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.02020267,
        size.height * 0.9582780,
        size.width * 0.01771733,
        size.height * 0.9582780,
        size.width * 0.01602711,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.01504089,
        size.height * 0.9582780,
        size.width * 0.01424133,
        size.height * 0.9587277,
        size.width * 0.01424133,
        size.height * 0.9592825);
    path.cubicTo(
        size.width * 0.01424133,
        size.height * 0.9593080,
        size.width * 0.01424133,
        size.height * 0.9593335,
        size.width * 0.01424133,
        size.height * 0.9593588);
    path.cubicTo(
        size.width * 0.01424133,
        size.height * 0.9599135,
        size.width * 0.01504089,
        size.height * 0.9603633,
        size.width * 0.01602711,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.01770000,
        size.height * 0.9603633,
        size.width * 0.02015244,
        size.height * 0.9603633,
        size.width * 0.02158933,
        size.height * 0.9603633);
    path.cubicTo(
        size.width * 0.02181822,
        size.height * 0.9603633,
        size.width * 0.02202800,
        size.height * 0.9604345,
        size.width * 0.02213467,
        size.height * 0.9605482);
    path.cubicTo(
        size.width * 0.02224178,
        size.height * 0.9606622,
        size.width * 0.02222756,
        size.height * 0.9607997,
        size.width * 0.02209822,
        size.height * 0.9609060);
    path.cubicTo(
        size.width * 0.02116578,
        size.height * 0.9616723,
        size.width * 0.01946622,
        size.height * 0.9630687,
        size.width * 0.01847022,
        size.height * 0.9638875);
    path.cubicTo(
        size.width * 0.01838933,
        size.height * 0.9639537,
        size.width * 0.01840178,
        size.height * 0.9640427,
        size.width * 0.01849956,
        size.height * 0.9641015);
    path.cubicTo(
        size.width * 0.01859778,
        size.height * 0.9641600,
        size.width * 0.01875467,
        size.height * 0.9641722,
        size.width * 0.01887733,
        size.height * 0.9641308);
    path.cubicTo(
        size.width * 0.02165911,
        size.height * 0.9631920,
        size.width * 0.02846089,
        size.height * 0.9608965,
        size.width * 0.03011467,
        size.height * 0.9603383);
    path.cubicTo(
        size.width * 0.03035467,
        size.height * 0.9602572,
        size.width * 0.03062978,
        size.height * 0.9602155,
        size.width * 0.03090978,
        size.height * 0.9602180);
    path.cubicTo(
        size.width * 0.03306133,
        size.height * 0.9602360,
        size.width * 0.04274889,
        size.height * 0.9603167,
        size.width * 0.04666311,
        size.height * 0.9603495);
    path.cubicTo(
        size.width * 0.04695422,
        size.height * 0.9603520,
        size.width * 0.04721600,
        size.height * 0.9604502,
        size.width * 0.04733111,
        size.height * 0.9606008);
    path.cubicTo(
        size.width * 0.04744667,
        size.height * 0.9607512,
        size.width * 0.04739378,
        size.height * 0.9609258,
        size.width * 0.04719733,
        size.height * 0.9610467);
    path.cubicTo(
        size.width * 0.04463911,
        size.height * 0.9626162,
        size.width * 0.03830711,
        size.height * 0.9665020,
        size.width * 0.03494844,
        size.height * 0.9685627);
    path.cubicTo(
        size.width * 0.03480844,
        size.height * 0.9686487,
        size.width * 0.03480400,
        size.height * 0.9687797,
        size.width * 0.03493778,
        size.height * 0.9688690);
    path.cubicTo(
        size.width * 0.03507111,
        size.height * 0.9689580,
        size.width * 0.03530178,
        size.height * 0.9689772,
        size.width * 0.03547600,
        size.height * 0.9689140);
    path.cubicTo(
        size.width * 0.04121333,
        size.height * 0.9668277,
        size.width * 0.05439289,
        size.height * 0.9620350,
        size.width * 0.05804000,
        size.height * 0.9607090);
    path.cubicTo(
        size.width * 0.05866044,
        size.height * 0.9604832,
        size.width * 0.05938356,
        size.height * 0.9603632,
        size.width * 0.06012222,
        size.height * 0.9603632);
    path.cubicTo(
        size.width * 0.06340978,
        size.height * 0.9603632,
        size.width * 0.07297956,
        size.height * 0.9603632,
        size.width * 0.07701778,
        size.height * 0.9603632);
    path.cubicTo(
        size.width * 0.07802933,
        size.height * 0.9603632,
        size.width * 0.07884978,
        size.height * 0.9599020,
        size.width * 0.07884978,
        size.height * 0.9593327);
    path.cubicTo(
        size.width * 0.07884978,
        size.height * 0.9593247,
        size.width * 0.07884978,
        size.height * 0.9593165,
        size.width * 0.07884978,
        size.height * 0.9593085);
    path.cubicTo(
        size.width * 0.07884978,
        size.height * 0.9587395,
        size.width * 0.07802933,
        size.height * 0.9582780,
        size.width * 0.07701778,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.07299156,
        size.height * 0.9582780,
        size.width * 0.06346667,
        size.height * 0.9582780,
        size.width * 0.06015200,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.05939467,
        size.height * 0.9582780,
        size.width * 0.05865422,
        size.height * 0.9581520,
        size.width * 0.05802444,
        size.height * 0.9579157);
    path.cubicTo(
        size.width * 0.05434711,
        size.height * 0.9565367,
        size.width * 0.04114756,
        size.height * 0.9515870,
        size.width * 0.03543867,
        size.height * 0.9494460);
    path.cubicTo(
        size.width * 0.03526622,
        size.height * 0.9493815,
        size.width * 0.03503511,
        size.height * 0.9493987,
        size.width * 0.03489911,
        size.height * 0.9494867);
    path.cubicTo(
        size.width * 0.03476311,
        size.height * 0.9495747,
        size.width * 0.03476444,
        size.height * 0.9497058,
        size.width * 0.03490222,
        size.height * 0.9497930);
    path.cubicTo(
        size.width * 0.03825644,
        size.height * 0.9519157,
        size.width * 0.04465956,
        size.height * 0.9559675,
        size.width * 0.04721644,
        size.height * 0.9575855);
    path.cubicTo(
        size.width * 0.04741022,
        size.height * 0.9577080,
        size.width * 0.04745778,
        size.height * 0.9578830,
        size.width * 0.04733867,
        size.height * 0.9580325);
    path.cubicTo(
        size.width * 0.04721911,
        size.height * 0.9581820,
        size.width * 0.04695511,
        size.height * 0.9582780,
        size.width * 0.04666356,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.04275067,
        size.height * 0.9582780,
        size.width * 0.03306222,
        size.height * 0.9582780,
        size.width * 0.03090978,
        size.height * 0.9582780);
    path.cubicTo(
        size.width * 0.03063022,
        size.height * 0.9582780,
        size.width * 0.03035556,
        size.height * 0.9582340,
        size.width * 0.03011822,
        size.height * 0.9581510);
    path.cubicTo(
        size.width * 0.02845822,
        size.height * 0.9575717,
        size.width * 0.02156756,
        size.height * 0.9551658,
        size.width * 0.01882089,
        size.height * 0.9542067);
    path.cubicTo(
        size.width * 0.01870044,
        size.height * 0.9541647,
        size.width * 0.01854400,
        size.height * 0.9541752,
        size.width * 0.01844400,
        size.height * 0.9542320);
    path.cubicTo(
        size.width * 0.01834444,
        size.height * 0.9542887,
        size.width * 0.01832800,
        size.height * 0.9543770,
        size.width * 0.01840444,
        size.height * 0.9544442);
    path.cubicTo(
        size.width * 0.01940933,
        size.height * 0.9553290,
        size.width * 0.02121333,
        size.height * 0.9569172,
        size.width * 0.02215289,
        size.height * 0.9577445);
    path.close();
    path.moveTo(size.width * 0.05575422, size.height * 0.9524945);
    path.cubicTo(
        size.width * 0.05539511,
        size.height * 0.9524580,
        size.width * 0.05507822,
        size.height * 0.9523405,
        size.width * 0.05487689,
        size.height * 0.9521690);
    path.cubicTo(
        size.width * 0.05382800,
        size.height * 0.9512755,
        size.width * 0.05043200,
        size.height * 0.9483822,
        size.width * 0.04886889,
        size.height * 0.9470507);
    path.cubicTo(
        size.width * 0.04871733,
        size.height * 0.9469215,
        size.width * 0.04870844,
        size.height * 0.9467553,
        size.width * 0.04884622,
        size.height * 0.9466213);
    path.cubicTo(
        size.width * 0.04898356,
        size.height * 0.9464873,
        size.width * 0.04924400,
        size.height * 0.9464085,
        size.width * 0.04951867,
        size.height * 0.9464178);
    path.cubicTo(
        size.width * 0.05235022,
        size.height * 0.9465133,
        size.width * 0.05850267,
        size.height * 0.9467210,
        size.width * 0.06040311,
        size.height * 0.9467853);
    path.cubicTo(
        size.width * 0.06076711,
        size.height * 0.9467975,
        size.width * 0.06110711,
        size.height * 0.9468933,
        size.width * 0.06134267,
        size.height * 0.9470498);
    path.cubicTo(
        size.width * 0.06285911,
        size.height * 0.9480573,
        size.width * 0.06863689,
        size.height * 0.9518960,
        size.width * 0.07100711,
        size.height * 0.9534705);
    path.cubicTo(
        size.width * 0.07116222,
        size.height * 0.9535735,
        size.width * 0.07118533,
        size.height * 0.9537202,
        size.width * 0.07106533,
        size.height * 0.9538373);
    path.cubicTo(
        size.width * 0.07094533,
        size.height * 0.9539543,
        size.width * 0.07070800,
        size.height * 0.9540160,
        size.width * 0.07047200,
        size.height * 0.9539920);
    path.cubicTo(
        size.width * 0.06686222,
        size.height * 0.9536248,
        size.width * 0.05806311,
        size.height * 0.9527295,
        size.width * 0.05575422,
        size.height * 0.9524945);
    path.close();
    path.moveTo(size.width * 0.1506658, size.height * 0.9524945);
    path.cubicTo(
        size.width * 0.1510249,
        size.height * 0.9524580,
        size.width * 0.1513422,
        size.height * 0.9523405,
        size.width * 0.1515431,
        size.height * 0.9521690);
    path.cubicTo(
        size.width * 0.1525920,
        size.height * 0.9512755,
        size.width * 0.1559880,
        size.height * 0.9483822,
        size.width * 0.1575511,
        size.height * 0.9470507);
    path.cubicTo(
        size.width * 0.1577027,
        size.height * 0.9469215,
        size.width * 0.1577116,
        size.height * 0.9467553,
        size.width * 0.1575738,
        size.height * 0.9466213);
    path.cubicTo(
        size.width * 0.1574364,
        size.height * 0.9464873,
        size.width * 0.1571760,
        size.height * 0.9464085,
        size.width * 0.1569013,
        size.height * 0.9464178);
    path.cubicTo(
        size.width * 0.1540698,
        size.height * 0.9465133,
        size.width * 0.1479173,
        size.height * 0.9467210,
        size.width * 0.1460173,
        size.height * 0.9467853);
    path.cubicTo(
        size.width * 0.1456529,
        size.height * 0.9467975,
        size.width * 0.1453133,
        size.height * 0.9468933,
        size.width * 0.1450773,
        size.height * 0.9470498);
    path.cubicTo(
        size.width * 0.1435609,
        size.height * 0.9480573,
        size.width * 0.1377831,
        size.height * 0.9518960,
        size.width * 0.1354129,
        size.height * 0.9534705);
    path.cubicTo(
        size.width * 0.1352578,
        size.height * 0.9535735,
        size.width * 0.1352347,
        size.height * 0.9537202,
        size.width * 0.1353547,
        size.height * 0.9538373);
    path.cubicTo(
        size.width * 0.1354747,
        size.height * 0.9539543,
        size.width * 0.1357120,
        size.height * 0.9540160,
        size.width * 0.1359484,
        size.height * 0.9539920);
    path.cubicTo(
        size.width * 0.1395578,
        size.height * 0.9536248,
        size.width * 0.1483569,
        size.height * 0.9527295,
        size.width * 0.1506658,
        size.height * 0.9524945);
    path.close();
    path.moveTo(size.width * 0.06510800, size.height * 0.9190462);
    path.cubicTo(
        size.width * 0.06500444,
        size.height * 0.9191587,
        size.width * 0.06480000,
        size.height * 0.9192305,
        size.width * 0.06457467,
        size.height * 0.9192333);
    path.cubicTo(
        size.width * 0.06434933,
        size.height * 0.9192363,
        size.width * 0.06413956,
        size.height * 0.9191698,
        size.width * 0.06402667,
        size.height * 0.9190600);
    path.cubicTo(
        size.width * 0.06331156,
        size.height * 0.9183632,
        size.width * 0.06206889,
        size.height * 0.9171525,
        size.width * 0.06122356,
        size.height * 0.9163290);
    path.cubicTo(
        size.width * 0.06073067,
        size.height * 0.9158487,
        size.width * 0.05963867,
        size.height * 0.9156840,
        size.width * 0.05878444,
        size.height * 0.9159615);
    path.cubicTo(
        size.width * 0.05874533,
        size.height * 0.9159742,
        size.width * 0.05870622,
        size.height * 0.9159870,
        size.width * 0.05866711,
        size.height * 0.9159998);
    path.cubicTo(
        size.width * 0.05781289,
        size.height * 0.9162770,
        size.width * 0.05752044,
        size.height * 0.9168912,
        size.width * 0.05801333,
        size.height * 0.9173717);
    path.cubicTo(
        size.width * 0.05884978,
        size.height * 0.9181867,
        size.width * 0.06007600,
        size.height * 0.9193815,
        size.width * 0.06079467,
        size.height * 0.9200812);
    path.cubicTo(
        size.width * 0.06090889,
        size.height * 0.9201927,
        size.width * 0.06090400,
        size.height * 0.9203307,
        size.width * 0.06078222,
        size.height * 0.9204395);
    path.cubicTo(
        size.width * 0.06066044,
        size.height * 0.9205485,
        size.width * 0.06044133,
        size.height * 0.9206105,
        size.width * 0.06021333,
        size.height * 0.9206005);
    path.cubicTo(
        size.width * 0.05856756,
        size.height * 0.9205295,
        size.width * 0.05556756,
        size.height * 0.9204000,
        size.width * 0.05380889,
        size.height * 0.9203240);
    path.cubicTo(
        size.width * 0.05366622,
        size.height * 0.9203177,
        size.width * 0.05353556,
        size.height * 0.9203682,
        size.width * 0.05349422,
        size.height * 0.9204452);
    path.cubicTo(
        size.width * 0.05345333,
        size.height * 0.9205222,
        size.width * 0.05351289,
        size.height * 0.9206050,
        size.width * 0.05363822,
        size.height * 0.9206440);
    path.cubicTo(
        size.width * 0.05647422,
        size.height * 0.9215295,
        size.width * 0.06340933,
        size.height * 0.9236952,
        size.width * 0.06509600,
        size.height * 0.9242217);
    path.cubicTo(
        size.width * 0.06534044,
        size.height * 0.9242982,
        size.width * 0.06554222,
        size.height * 0.9244115,
        size.width * 0.06567867,
        size.height * 0.9245490);
    path.cubicTo(
        size.width * 0.06672667,
        size.height * 0.9256060,
        size.width * 0.07144578,
        size.height * 0.9303657,
        size.width * 0.07335244,
        size.height * 0.9322887);
    path.cubicTo(
        size.width * 0.07349422,
        size.height * 0.9324318,
        size.width * 0.07347378,
        size.height * 0.9326085,
        size.width * 0.07329956,
        size.height * 0.9327400);
    path.cubicTo(
        size.width * 0.07312578,
        size.height * 0.9328712,
        size.width * 0.07283067,
        size.height * 0.9329330,
        size.width * 0.07254622,
        size.height * 0.9328975);
    path.cubicTo(
        size.width * 0.06885067,
        size.height * 0.9324362,
        size.width * 0.05970222,
        size.height * 0.9312945,
        size.width * 0.05485022,
        size.height * 0.9306890);
    path.cubicTo(
        size.width * 0.05464800,
        size.height * 0.9306637,
        size.width * 0.05444356,
        size.height * 0.9307270,
        size.width * 0.05437333,
        size.height * 0.9308365);
    path.cubicTo(
        size.width * 0.05430311,
        size.height * 0.9309462,
        size.width * 0.05438844,
        size.height * 0.9310683,
        size.width * 0.05457333,
        size.height * 0.9311215);
    path.cubicTo(
        size.width * 0.06065378,
        size.height * 0.9328730,
        size.width * 0.07462267,
        size.height * 0.9368973,
        size.width * 0.07848756,
        size.height * 0.9380107);
    path.cubicTo(
        size.width * 0.07914533,
        size.height * 0.9382002,
        size.width * 0.07969156,
        size.height * 0.9384922,
        size.width * 0.08006089,
        size.height * 0.9388522);
    path.cubicTo(
        size.width * 0.08170444,
        size.height * 0.9404535,
        size.width * 0.08648933,
        size.height * 0.9451155,
        size.width * 0.08850889,
        size.height * 0.9470827);
    path.cubicTo(
        size.width * 0.08901467,
        size.height * 0.9475755,
        size.width * 0.09013511,
        size.height * 0.9477442,
        size.width * 0.09101111,
        size.height * 0.9474597);
    path.cubicTo(
        size.width * 0.09102356,
        size.height * 0.9474557,
        size.width * 0.09103600,
        size.height * 0.9474517,
        size.width * 0.09104844,
        size.height * 0.9474477);
    path.cubicTo(
        size.width * 0.09192489,
        size.height * 0.9471630,
        size.width * 0.09222489,
        size.height * 0.9465330,
        size.width * 0.09171911,
        size.height * 0.9460400);
    path.cubicTo(
        size.width * 0.08970578,
        size.height * 0.9440787,
        size.width * 0.08494356,
        size.height * 0.9394387,
        size.width * 0.08328622,
        size.height * 0.9378240);
    path.cubicTo(
        size.width * 0.08290756,
        size.height * 0.9374552,
        size.width * 0.08273156,
        size.height * 0.9370315,
        size.width * 0.08278000,
        size.height * 0.9366065);
    path.cubicTo(
        size.width * 0.08306444,
        size.height * 0.9341258,
        size.width * 0.08408578,
        size.height * 0.9252205,
        size.width * 0.08452711,
        size.height * 0.9213692);
    path.cubicTo(
        size.width * 0.08454044,
        size.height * 0.9212530,
        size.width * 0.08439822,
        size.height * 0.9211492,
        size.width * 0.08419511,
        size.height * 0.9211267);
    path.cubicTo(
        size.width * 0.08399156,
        size.height * 0.9211045,
        size.width * 0.08379022,
        size.height * 0.9211708,
        size.width * 0.08372489,
        size.height * 0.9212813);
    path.cubicTo(
        size.width * 0.08213422,
        size.height * 0.9239768,
        size.width * 0.07909733,
        size.height * 0.9291220,
        size.width * 0.07788444,
        size.height * 0.9311765);
    path.cubicTo(
        size.width * 0.07779289,
        size.height * 0.9313320,
        size.width * 0.07754756,
        size.height * 0.9314428,
        size.width * 0.07725778,
        size.height * 0.9314592);
    path.cubicTo(
        size.width * 0.07696800,
        size.height * 0.9314760,
        size.width * 0.07668756,
        size.height * 0.9313953,
        size.width * 0.07654222,
        size.height * 0.9312535);
    path.cubicTo(
        size.width * 0.07458533,
        size.height * 0.9293473,
        size.width * 0.06974133,
        size.height * 0.9246275,
        size.width * 0.06866533,
        size.height * 0.9235790);
    path.cubicTo(
        size.width * 0.06852533,
        size.height * 0.9234428,
        size.width * 0.06845600,
        size.height * 0.9232873,
        size.width * 0.06846489,
        size.height * 0.9231300);
    path.cubicTo(
        size.width * 0.06852711,
        size.height * 0.9220318,
        size.width * 0.06878578,
        size.height * 0.9174720,
        size.width * 0.06888889,
        size.height * 0.9156545);
    path.cubicTo(
        size.width * 0.06889333,
        size.height * 0.9155748,
        size.width * 0.06879911,
        size.height * 0.9155038,
        size.width * 0.06866178,
        size.height * 0.9154835);
    path.cubicTo(
        size.width * 0.06852444,
        size.height * 0.9154635,
        size.width * 0.06838044,
        size.height * 0.9154995,
        size.width * 0.06831511,
        size.height * 0.9155703);
    path.cubicTo(
        size.width * 0.06745511,
        size.height * 0.9165020,
        size.width * 0.06591200,
        size.height * 0.9181750,
        size.width * 0.06510800,
        size.height * 0.9190463);
    path.close();
    path.moveTo(size.width * 0.1461653, size.height * 0.9206225);
    path.cubicTo(
        size.width * 0.1459404,
        size.height * 0.9206282,
        size.width * 0.1457276,
        size.height * 0.9205645,
        size.width * 0.1456107,
        size.height * 0.9204562);
    path.cubicTo(
        size.width * 0.1454938,
        size.height * 0.9203480,
        size.width * 0.1454911,
        size.height * 0.9202122,
        size.width * 0.1456036,
        size.height * 0.9201025);
    path.cubicTo(
        size.width * 0.1463191,
        size.height * 0.9194058,
        size.width * 0.1475618,
        size.height * 0.9181950,
        size.width * 0.1484067,
        size.height * 0.9173718);
    path.cubicTo(
        size.width * 0.1489000,
        size.height * 0.9168913,
        size.width * 0.1486071,
        size.height * 0.9162770,
        size.width * 0.1477533,
        size.height * 0.9159998);
    path.cubicTo(
        size.width * 0.1477138,
        size.height * 0.9159870,
        size.width * 0.1476747,
        size.height * 0.9159743,
        size.width * 0.1476356,
        size.height * 0.9159615);
    path.cubicTo(
        size.width * 0.1467813,
        size.height * 0.9156840,
        size.width * 0.1456893,
        size.height * 0.9158488,
        size.width * 0.1451964,
        size.height * 0.9163290);
    path.cubicTo(
        size.width * 0.1443600,
        size.height * 0.9171443,
        size.width * 0.1431338,
        size.height * 0.9183388,
        size.width * 0.1424151,
        size.height * 0.9190388);
    path.cubicTo(
        size.width * 0.1423009,
        size.height * 0.9191503,
        size.width * 0.1420862,
        size.height * 0.9192168,
        size.width * 0.1418573,
        size.height * 0.9192120);
    path.cubicTo(
        size.width * 0.1416289,
        size.height * 0.9192070,
        size.width * 0.1414240,
        size.height * 0.9191313,
        size.width * 0.1413249,
        size.height * 0.9190153);
    path.cubicTo(
        size.width * 0.1406116,
        size.height * 0.9181780,
        size.width * 0.1393111,
        size.height * 0.9166518,
        size.width * 0.1385489,
        size.height * 0.9157570);
    path.cubicTo(
        size.width * 0.1384871,
        size.height * 0.9156845,
        size.width * 0.1383440,
        size.height * 0.9156460,
        size.width * 0.1382049,
        size.height * 0.9156645);
    path.cubicTo(
        size.width * 0.1380658,
        size.height * 0.9156830,
        size.width * 0.1379684,
        size.height * 0.9157535,
        size.width * 0.1379707,
        size.height * 0.9158338);
    path.cubicTo(
        size.width * 0.1380253,
        size.height * 0.9176583,
        size.width * 0.1381587,
        size.height * 0.9221195,
        size.width * 0.1381911,
        size.height * 0.9232043);
    path.cubicTo(
        size.width * 0.1381960,
        size.height * 0.9233618,
        size.width * 0.1381222,
        size.height * 0.9235165,
        size.width * 0.1379787,
        size.height * 0.9236518);
    path.cubicTo(
        size.width * 0.1368756,
        size.height * 0.9246908,
        size.width * 0.1319067,
        size.height * 0.9293698,
        size.width * 0.1298996,
        size.height * 0.9312600);
    path.cubicTo(
        size.width * 0.1297502,
        size.height * 0.9314005,
        size.width * 0.1294680,
        size.height * 0.9314788,
        size.width * 0.1291787,
        size.height * 0.9314598);
    path.cubicTo(
        size.width * 0.1288893,
        size.height * 0.9314408,
        size.width * 0.1286467,
        size.height * 0.9313280,
        size.width * 0.1285591,
        size.height * 0.9311715);
    path.cubicTo(
        size.width * 0.1274218,
        size.height * 0.9291408,
        size.width * 0.1246053,
        size.height * 0.9241133,
        size.width * 0.1231116,
        size.height * 0.9214468);
    path.cubicTo(
        size.width * 0.1230493,
        size.height * 0.9213355,
        size.width * 0.1228498,
        size.height * 0.9212678,
        size.width * 0.1226458,
        size.height * 0.9212883);
    path.cubicTo(
        size.width * 0.1224418,
        size.height * 0.9213090,
        size.width * 0.1222969,
        size.height * 0.9214118,
        size.width * 0.1223071,
        size.height * 0.9215280);
    path.cubicTo(
        size.width * 0.1226507,
        size.height * 0.9253660,
        size.width * 0.1234396,
        size.height * 0.9341828,
        size.width * 0.1236578,
        size.height * 0.9366225);
    path.cubicTo(
        size.width * 0.1236947,
        size.height * 0.9370375,
        size.width * 0.1235182,
        size.height * 0.9374498,
        size.width * 0.1231489,
        size.height * 0.9378098);
    path.cubicTo(
        size.width * 0.1215049,
        size.height * 0.9394110,
        size.width * 0.1167200,
        size.height * 0.9440728,
        size.width * 0.1147009,
        size.height * 0.9460400);
    path.cubicTo(
        size.width * 0.1141951,
        size.height * 0.9465330,
        size.width * 0.1144956,
        size.height * 0.9471630,
        size.width * 0.1153716,
        size.height * 0.9474478);
    path.cubicTo(
        size.width * 0.1153840,
        size.height * 0.9474518,
        size.width * 0.1153964,
        size.height * 0.9474558,
        size.width * 0.1154089,
        size.height * 0.9474598);
    path.cubicTo(
        size.width * 0.1162853,
        size.height * 0.9477443,
        size.width * 0.1174053,
        size.height * 0.9475755,
        size.width * 0.1179116,
        size.height * 0.9470828);
    path.cubicTo(
        size.width * 0.1199244,
        size.height * 0.9451213,
        size.width * 0.1246871,
        size.height * 0.9404813,
        size.width * 0.1263444,
        size.height * 0.9388665);
    path.cubicTo(
        size.width * 0.1267231,
        size.height * 0.9384978,
        size.width * 0.1272871,
        size.height * 0.9382003,
        size.width * 0.1279658,
        size.height * 0.9380115);
    path.cubicTo(
        size.width * 0.1319276,
        size.height * 0.9369095,
        size.width * 0.1461484,
        size.height * 0.9329545,
        size.width * 0.1522987,
        size.height * 0.9312438);
    path.cubicTo(
        size.width * 0.1524844,
        size.height * 0.9311923,
        size.width * 0.1525729,
        size.height * 0.9310710,
        size.width * 0.1525058,
        size.height * 0.9309608);
    path.cubicTo(
        size.width * 0.1524382,
        size.height * 0.9308505,
        size.width * 0.1522360,
        size.height * 0.9307855,
        size.width * 0.1520329,
        size.height * 0.9308090);
    path.cubicTo(
        size.width * 0.1470876,
        size.height * 0.9313818,
        size.width * 0.1376476,
        size.height * 0.9324750,
        size.width * 0.1338782,
        size.height * 0.9329115);
    path.cubicTo(
        size.width * 0.1335929,
        size.height * 0.9329445,
        size.width * 0.1332996,
        size.height * 0.9328803,
        size.width * 0.1331293,
        size.height * 0.9327475);
    path.cubicTo(
        size.width * 0.1329587,
        size.height * 0.9326148,
        size.width * 0.1329427,
        size.height * 0.9324380,
        size.width * 0.1330884,
        size.height * 0.9322960);
    path.cubicTo(
        size.width * 0.1350449,
        size.height * 0.9303898,
        size.width * 0.1398893,
        size.height * 0.9256700,
        size.width * 0.1409653,
        size.height * 0.9246218);
    path.cubicTo(
        size.width * 0.1411053,
        size.height * 0.9244855,
        size.width * 0.1413102,
        size.height * 0.9243738,
        size.width * 0.1415569,
        size.height * 0.9242995);
    path.cubicTo(
        size.width * 0.1432787,
        size.height * 0.9237808,
        size.width * 0.1504280,
        size.height * 0.9216268,
        size.width * 0.1532778,
        size.height * 0.9207683);
    path.cubicTo(
        size.width * 0.1534031,
        size.height * 0.9207308,
        size.width * 0.1534653,
        size.height * 0.9206493,
        size.width * 0.1534276,
        size.height * 0.9205723);
    path.cubicTo(
        size.width * 0.1533898,
        size.height * 0.9204953,
        size.width * 0.1532627,
        size.height * 0.9204430,
        size.width * 0.1531204,
        size.height * 0.9204468);
    path.cubicTo(
        size.width * 0.1512560,
        size.height * 0.9204938,
        size.width * 0.1479089,
        size.height * 0.9205785,
        size.width * 0.1461653,
        size.height * 0.9206225);
    path.close();
    path.moveTo(size.width * 0.06897289, size.height * 0.9396162);
    path.cubicTo(
        size.width * 0.06873689,
        size.height * 0.9394595,
        size.width * 0.06839733,
        size.height * 0.9393637,
        size.width * 0.06803289,
        size.height * 0.9393515);
    path.cubicTo(
        size.width * 0.06613289,
        size.height * 0.9392872,
        size.width * 0.05998000,
        size.height * 0.9390795,
        size.width * 0.05714889,
        size.height * 0.9389840);
    path.cubicTo(
        size.width * 0.05687422,
        size.height * 0.9389747,
        size.width * 0.05661378,
        size.height * 0.9390535,
        size.width * 0.05647600,
        size.height * 0.9391875);
    path.cubicTo(
        size.width * 0.05633867,
        size.height * 0.9393215,
        size.width * 0.05634756,
        size.height * 0.9394877,
        size.width * 0.05649911,
        size.height * 0.9396170);
    path.cubicTo(
        size.width * 0.05806178,
        size.height * 0.9409485,
        size.width * 0.06145822,
        size.height * 0.9438417,
        size.width * 0.06250667,
        size.height * 0.9447352);
    path.cubicTo(
        size.width * 0.06270800,
        size.height * 0.9449067,
        size.width * 0.06302489,
        size.height * 0.9450242,
        size.width * 0.06338444,
        size.height * 0.9450610);
    path.cubicTo(
        size.width * 0.06569333,
        size.height * 0.9452957,
        size.width * 0.07449244,
        size.height * 0.9461910,
        size.width * 0.07810178,
        size.height * 0.9465582);
    path.cubicTo(
        size.width * 0.07833778,
        size.height * 0.9465825,
        size.width * 0.07857556,
        size.height * 0.9465205,
        size.width * 0.07869556,
        size.height * 0.9464035);
    path.cubicTo(
        size.width * 0.07881556,
        size.height * 0.9462865,
        size.width * 0.07879200,
        size.height * 0.9461400,
        size.width * 0.07863689,
        size.height * 0.9460367);
    path.cubicTo(
        size.width * 0.07626711,
        size.height * 0.9444622,
        size.width * 0.07048889,
        size.height * 0.9406235,
        size.width * 0.06897289,
        size.height * 0.9396162);
    path.close();
    path.moveTo(size.width * 0.1374476, size.height * 0.9396162);
    path.cubicTo(
        size.width * 0.1376831,
        size.height * 0.9394595,
        size.width * 0.1380227,
        size.height * 0.9393637,
        size.width * 0.1383871,
        size.height * 0.9393515);
    path.cubicTo(
        size.width * 0.1402871,
        size.height * 0.9392872,
        size.width * 0.1464400,
        size.height * 0.9390795,
        size.width * 0.1492711,
        size.height * 0.9389840);
    path.cubicTo(
        size.width * 0.1495458,
        size.height * 0.9389747,
        size.width * 0.1498062,
        size.height * 0.9390535,
        size.width * 0.1499440,
        size.height * 0.9391875);
    path.cubicTo(
        size.width * 0.1500813,
        size.height * 0.9393215,
        size.width * 0.1500724,
        size.height * 0.9394877,
        size.width * 0.1499209,
        size.height * 0.9396170);
    path.cubicTo(
        size.width * 0.1483582,
        size.height * 0.9409485,
        size.width * 0.1449622,
        size.height * 0.9438417,
        size.width * 0.1439133,
        size.height * 0.9447352);
    path.cubicTo(
        size.width * 0.1437120,
        size.height * 0.9449067,
        size.width * 0.1433951,
        size.height * 0.9450242,
        size.width * 0.1430360,
        size.height * 0.9450610);
    path.cubicTo(
        size.width * 0.1407267,
        size.height * 0.9452957,
        size.width * 0.1319276,
        size.height * 0.9461910,
        size.width * 0.1283182,
        size.height * 0.9465582);
    path.cubicTo(
        size.width * 0.1280822,
        size.height * 0.9465825,
        size.width * 0.1278444,
        size.height * 0.9465205,
        size.width * 0.1277244,
        size.height * 0.9464035);
    path.cubicTo(
        size.width * 0.1276044,
        size.height * 0.9462865,
        size.width * 0.1276280,
        size.height * 0.9461400,
        size.width * 0.1277831,
        size.height * 0.9460367);
    path.cubicTo(
        size.width * 0.1301533,
        size.height * 0.9444622,
        size.width * 0.1359311,
        size.height * 0.9406235,
        size.width * 0.1374476,
        size.height * 0.9396162);
    path.close();
    path.moveTo(size.width * 0.08999156, size.height * 0.9327900);
    path.cubicTo(
        size.width * 0.08986844,
        size.height * 0.9325967,
        size.width * 0.08989067,
        size.height * 0.9323835,
        size.width * 0.09005422,
        size.height * 0.9322000);
    path.cubicTo(
        size.width * 0.09090533,
        size.height * 0.9312422,
        size.width * 0.09366178,
        size.height * 0.9281410,
        size.width * 0.09493022,
        size.height * 0.9267140);
    path.cubicTo(
        size.width * 0.09505333,
        size.height * 0.9265757,
        size.width * 0.09530489,
        size.height * 0.9264883,
        size.width * 0.09558000,
        size.height * 0.9264883);
    path.cubicTo(
        size.width * 0.09585511,
        size.height * 0.9264883,
        size.width * 0.09610667,
        size.height * 0.9265757,
        size.width * 0.09622978,
        size.height * 0.9267140);
    path.cubicTo(
        size.width * 0.09749822,
        size.height * 0.9281410,
        size.width * 0.1002547,
        size.height * 0.9312422,
        size.width * 0.1011062,
        size.height * 0.9322000);
    path.cubicTo(
        size.width * 0.1012693,
        size.height * 0.9323835,
        size.width * 0.1012920,
        size.height * 0.9325967,
        size.width * 0.1011684,
        size.height * 0.9327900);
    path.cubicTo(
        size.width * 0.1003756,
        size.height * 0.9340323,
        size.width * 0.09735467,
        size.height * 0.9387663,
        size.width * 0.09611556,
        size.height * 0.9407082);
    path.cubicTo(
        size.width * 0.09603422,
        size.height * 0.9408352,
        size.width * 0.09582000,
        size.height * 0.9409200,
        size.width * 0.09558000,
        size.height * 0.9409200);
    path.cubicTo(
        size.width * 0.09534000,
        size.height * 0.9409200,
        size.width * 0.09512578,
        size.height * 0.9408353,
        size.width * 0.09504489,
        size.height * 0.9407082);
    path.cubicTo(
        size.width * 0.09380533,
        size.height * 0.9387662,
        size.width * 0.09078444,
        size.height * 0.9340322,
        size.width * 0.08999156,
        size.height * 0.9327900);
    path.close();
    path.moveTo(size.width * 0.1164284, size.height * 0.9327900);
    path.cubicTo(
        size.width * 0.1165520,
        size.height * 0.9325967,
        size.width * 0.1165293,
        size.height * 0.9323835,
        size.width * 0.1163662,
        size.height * 0.9322000);
    path.cubicTo(
        size.width * 0.1155147,
        size.height * 0.9312422,
        size.width * 0.1127582,
        size.height * 0.9281410,
        size.width * 0.1114898,
        size.height * 0.9267140);
    path.cubicTo(
        size.width * 0.1113667,
        size.height * 0.9265757,
        size.width * 0.1111151,
        size.height * 0.9264883,
        size.width * 0.1108400,
        size.height * 0.9264883);
    path.cubicTo(
        size.width * 0.1105649,
        size.height * 0.9264883,
        size.width * 0.1103133,
        size.height * 0.9265757,
        size.width * 0.1101902,
        size.height * 0.9267140);
    path.cubicTo(
        size.width * 0.1089218,
        size.height * 0.9281410,
        size.width * 0.1061653,
        size.height * 0.9312422,
        size.width * 0.1053142,
        size.height * 0.9322000);
    path.cubicTo(
        size.width * 0.1051507,
        size.height * 0.9323835,
        size.width * 0.1051280,
        size.height * 0.9325967,
        size.width * 0.1052516,
        size.height * 0.9327900);
    path.cubicTo(
        size.width * 0.1060444,
        size.height * 0.9340323,
        size.width * 0.1090653,
        size.height * 0.9387663,
        size.width * 0.1103049,
        size.height * 0.9407082);
    path.cubicTo(
        size.width * 0.1103858,
        size.height * 0.9408352,
        size.width * 0.1106000,
        size.height * 0.9409200,
        size.width * 0.1108400,
        size.height * 0.9409200);
    path.cubicTo(
        size.width * 0.1110800,
        size.height * 0.9409200,
        size.width * 0.1112942,
        size.height * 0.9408353,
        size.width * 0.1113751,
        size.height * 0.9407082);
    path.cubicTo(
        size.width * 0.1126147,
        size.height * 0.9387662,
        size.width * 0.1156356,
        size.height * 0.9340322,
        size.width * 0.1164284,
        size.height * 0.9327900);
    path.close();
    path.moveTo(size.width * 0.09769600, size.height * 0.8989530);
    path.cubicTo(
        size.width * 0.09776844,
        size.height * 0.8988747,
        size.width * 0.09791067,
        size.height * 0.8988247,
        size.width * 0.09806756,
        size.height * 0.8988227);
    path.cubicTo(
        size.width * 0.09822444,
        size.height * 0.8988207,
        size.width * 0.09837111,
        size.height * 0.8988670,
        size.width * 0.09844933,
        size.height * 0.8989435);
    path.cubicTo(
        size.width * 0.09894756,
        size.height * 0.8994290,
        size.width * 0.09981333,
        size.height * 0.9002725,
        size.width * 0.1004022,
        size.height * 0.9008462);
    path.cubicTo(
        size.width * 0.1007458,
        size.height * 0.9011810,
        size.width * 0.1015067,
        size.height * 0.9012955,
        size.width * 0.1021018,
        size.height * 0.9011022);
    path.cubicTo(
        size.width * 0.1021293,
        size.height * 0.9010935,
        size.width * 0.1021564,
        size.height * 0.9010845,
        size.width * 0.1021840,
        size.height * 0.9010757);
    path.cubicTo(
        size.width * 0.1027787,
        size.height * 0.9008825,
        size.width * 0.1029827,
        size.height * 0.9004545,
        size.width * 0.1026391,
        size.height * 0.9001197);
    path.cubicTo(
        size.width * 0.1020564,
        size.height * 0.8995520,
        size.width * 0.1012018,
        size.height * 0.8987195,
        size.width * 0.1007013,
        size.height * 0.8982320);
    path.cubicTo(
        size.width * 0.1006218,
        size.height * 0.8981542,
        size.width * 0.1006249,
        size.height * 0.8980582,
        size.width * 0.1007098,
        size.height * 0.8979822);
    path.cubicTo(
        size.width * 0.1007947,
        size.height * 0.8979065,
        size.width * 0.1009476,
        size.height * 0.8978632,
        size.width * 0.1011062,
        size.height * 0.8978700);
    path.cubicTo(
        size.width * 0.1022533,
        size.height * 0.8979197,
        size.width * 0.1043431,
        size.height * 0.8980100,
        size.width * 0.1055684,
        size.height * 0.8980630);
    path.cubicTo(
        size.width * 0.1056680,
        size.height * 0.8980672,
        size.width * 0.1057591,
        size.height * 0.8980320,
        size.width * 0.1057876,
        size.height * 0.8979782);
    path.cubicTo(
        size.width * 0.1058164,
        size.height * 0.8979247,
        size.width * 0.1057747,
        size.height * 0.8978670,
        size.width * 0.1056876,
        size.height * 0.8978397);
    path.cubicTo(
        size.width * 0.1037116,
        size.height * 0.8972227,
        size.width * 0.09887956,
        size.height * 0.8957140,
        size.width * 0.09770444,
        size.height * 0.8953470);
    path.cubicTo(
        size.width * 0.09753422,
        size.height * 0.8952937,
        size.width * 0.09739333,
        size.height * 0.8952150,
        size.width * 0.09729867,
        size.height * 0.8951192);
    path.cubicTo(
        size.width * 0.09656844,
        size.height * 0.8943825,
        size.width * 0.09328000,
        size.height * 0.8910662,
        size.width * 0.09195156,
        size.height * 0.8897265);
    path.cubicTo(
        size.width * 0.09185289,
        size.height * 0.8896267,
        size.width * 0.09186711,
        size.height * 0.8895037,
        size.width * 0.09198844,
        size.height * 0.8894120);
    path.cubicTo(
        size.width * 0.09210978,
        size.height * 0.8893205,
        size.width * 0.09231511,
        size.height * 0.8892775,
        size.width * 0.09251333,
        size.height * 0.8893022);
    path.cubicTo(
        size.width * 0.09508800,
        size.height * 0.8896237,
        size.width * 0.1014627,
        size.height * 0.8904192,
        size.width * 0.1048431,
        size.height * 0.8908412);
    path.cubicTo(
        size.width * 0.1049840,
        size.height * 0.8908588,
        size.width * 0.1051262,
        size.height * 0.8908147,
        size.width * 0.1051751,
        size.height * 0.8907382);
    path.cubicTo(
        size.width * 0.1052244,
        size.height * 0.8906618,
        size.width * 0.1051644,
        size.height * 0.8905767,
        size.width * 0.1050360,
        size.height * 0.8905398);
    path.cubicTo(
        size.width * 0.1007996,
        size.height * 0.8893193,
        size.width * 0.09106667,
        size.height * 0.8865155,
        size.width * 0.08837378,
        size.height * 0.8857398);
    path.cubicTo(
        size.width * 0.08791556,
        size.height * 0.8856078,
        size.width * 0.08753511,
        size.height * 0.8854043,
        size.width * 0.08727778,
        size.height * 0.8851535);
    path.cubicTo(
        size.width * 0.08613244,
        size.height * 0.8840378,
        size.width * 0.08279867,
        size.height * 0.8807895,
        size.width * 0.08139200,
        size.height * 0.8794190);
    path.cubicTo(
        size.width * 0.08103911,
        size.height * 0.8790755,
        size.width * 0.08025867,
        size.height * 0.8789580,
        size.width * 0.07964844,
        size.height * 0.8791563);
    path.cubicTo(
        size.width * 0.07963956,
        size.height * 0.8791590,
        size.width * 0.07963067,
        size.height * 0.8791618,
        size.width * 0.07962222,
        size.height * 0.8791648);
    path.cubicTo(
        size.width * 0.07901156,
        size.height * 0.8793630,
        size.width * 0.07880267,
        size.height * 0.8798020,
        size.width * 0.07915511,
        size.height * 0.8801453);
    path.cubicTo(
        size.width * 0.08055778,
        size.height * 0.8815120,
        size.width * 0.08387600,
        size.height * 0.8847448,
        size.width * 0.08503067,
        size.height * 0.8858698);
    path.cubicTo(
        size.width * 0.08529422,
        size.height * 0.8861268,
        size.width * 0.08541689,
        size.height * 0.8864220,
        size.width * 0.08538311,
        size.height * 0.8867183);
    path.cubicTo(
        size.width * 0.08518489,
        size.height * 0.8884465,
        size.width * 0.08447333,
        size.height * 0.8946513,
        size.width * 0.08416578,
        size.height * 0.8973345);
    path.cubicTo(
        size.width * 0.08415644,
        size.height * 0.8974155,
        size.width * 0.08425556,
        size.height * 0.8974880,
        size.width * 0.08439733,
        size.height * 0.8975035);
    path.cubicTo(
        size.width * 0.08453911,
        size.height * 0.8975190,
        size.width * 0.08467911,
        size.height * 0.8974730,
        size.width * 0.08472489,
        size.height * 0.8973958);
    path.cubicTo(
        size.width * 0.08583333,
        size.height * 0.8955178,
        size.width * 0.08794933,
        size.height * 0.8919330,
        size.width * 0.08879422,
        size.height * 0.8905015);
    path.cubicTo(
        size.width * 0.08885778,
        size.height * 0.8903930,
        size.width * 0.08902889,
        size.height * 0.8903160,
        size.width * 0.08923111,
        size.height * 0.8903045);
    path.cubicTo(
        size.width * 0.08943289,
        size.height * 0.8902928,
        size.width * 0.08962800,
        size.height * 0.8903490,
        size.width * 0.08972933,
        size.height * 0.8904478);
    path.cubicTo(
        size.width * 0.09109244,
        size.height * 0.8917760,
        size.width * 0.09446800,
        size.height * 0.8950645,
        size.width * 0.09521778,
        size.height * 0.8957947);
    path.cubicTo(
        size.width * 0.09531511,
        size.height * 0.8958898,
        size.width * 0.09536356,
        size.height * 0.8959982,
        size.width * 0.09535733,
        size.height * 0.8961077);
    path.cubicTo(
        size.width * 0.09531378,
        size.height * 0.8968730,
        size.width * 0.09513378,
        size.height * 0.9000500,
        size.width * 0.09506178,
        size.height * 0.9013162);
    path.cubicTo(
        size.width * 0.09505867,
        size.height * 0.9013718,
        size.width * 0.09512444,
        size.height * 0.9014212,
        size.width * 0.09522000,
        size.height * 0.9014353);
    path.cubicTo(
        size.width * 0.09531600,
        size.height * 0.9014495,
        size.width * 0.09541600,
        size.height * 0.9014243,
        size.width * 0.09546178,
        size.height * 0.9013750);
    path.cubicTo(
        size.width * 0.09606044,
        size.height * 0.9007257,
        size.width * 0.09713600,
        size.height * 0.8995600,
        size.width * 0.09769600,
        size.height * 0.8989530);
    path.close();
    path.moveTo(size.width * 0.04122000, size.height * 0.8978547);
    path.cubicTo(
        size.width * 0.04137689,
        size.height * 0.8978507,
        size.width * 0.04152489,
        size.height * 0.8978952,
        size.width * 0.04160622,
        size.height * 0.8979707);
    path.cubicTo(
        size.width * 0.04168800,
        size.height * 0.8980462,
        size.width * 0.04168978,
        size.height * 0.8981405,
        size.width * 0.04161111,
        size.height * 0.8982170);
    path.cubicTo(
        size.width * 0.04111289,
        size.height * 0.8987025,
        size.width * 0.04024711,
        size.height * 0.8995462,
        size.width * 0.03965822,
        size.height * 0.9001197);
    path.cubicTo(
        size.width * 0.03931467,
        size.height * 0.9004545,
        size.width * 0.03951867,
        size.height * 0.9008825,
        size.width * 0.04011378,
        size.height * 0.9010757);
    path.cubicTo(
        size.width * 0.04014089,
        size.height * 0.9010845,
        size.width * 0.04016844,
        size.height * 0.9010935,
        size.width * 0.04019556,
        size.height * 0.9011022);
    path.cubicTo(
        size.width * 0.04079067,
        size.height * 0.9012955,
        size.width * 0.04155156,
        size.height * 0.9011810,
        size.width * 0.04189511,
        size.height * 0.9008463);
    path.cubicTo(
        size.width * 0.04247822,
        size.height * 0.9002783,
        size.width * 0.04333244,
        size.height * 0.8994460,
        size.width * 0.04383289,
        size.height * 0.8989583);
    path.cubicTo(
        size.width * 0.04391244,
        size.height * 0.8988808,
        size.width * 0.04406222,
        size.height * 0.8988342,
        size.width * 0.04422133,
        size.height * 0.8988377);
    path.cubicTo(
        size.width * 0.04438089,
        size.height * 0.8988410,
        size.width * 0.04452356,
        size.height * 0.8988938,
        size.width * 0.04459244,
        size.height * 0.8989747);
    path.cubicTo(
        size.width * 0.04508933,
        size.height * 0.8995580,
        size.width * 0.04599556,
        size.height * 0.9006215,
        size.width * 0.04652667,
        size.height * 0.9012447);
    path.cubicTo(
        size.width * 0.04656978,
        size.height * 0.9012952,
        size.width * 0.04666933,
        size.height * 0.9013222,
        size.width * 0.04676622,
        size.height * 0.9013092);
    path.cubicTo(
        size.width * 0.04686356,
        size.height * 0.9012965,
        size.width * 0.04693111,
        size.height * 0.9012472,
        size.width * 0.04692978,
        size.height * 0.9011912);
    path.cubicTo(
        size.width * 0.04689156,
        size.height * 0.8999202,
        size.width * 0.04679867,
        size.height * 0.8968117,
        size.width * 0.04677600,
        size.height * 0.8960560);
    path.cubicTo(
        size.width * 0.04677289,
        size.height * 0.8959462,
        size.width * 0.04682400,
        size.height * 0.8958385,
        size.width * 0.04692400,
        size.height * 0.8957442);
    path.cubicTo(
        size.width * 0.04769289,
        size.height * 0.8950202,
        size.width * 0.05115467,
        size.height * 0.8917602,
        size.width * 0.05255289,
        size.height * 0.8904432);
    path.cubicTo(
        size.width * 0.05265689,
        size.height * 0.8903452,
        size.width * 0.05285378,
        size.height * 0.8902907,
        size.width * 0.05305556,
        size.height * 0.8903040);
    path.cubicTo(
        size.width * 0.05325689,
        size.height * 0.8903172,
        size.width * 0.05342578,
        size.height * 0.8903960,
        size.width * 0.05348711,
        size.height * 0.8905047);
    path.cubicTo(
        size.width * 0.05427956,
        size.height * 0.8919197,
        size.width * 0.05624178,
        size.height * 0.8954227,
        size.width * 0.05728267,
        size.height * 0.8972805);
    path.cubicTo(
        size.width * 0.05732578,
        size.height * 0.8973580,
        size.width * 0.05746489,
        size.height * 0.8974052,
        size.width * 0.05760711,
        size.height * 0.8973910);
    path.cubicTo(
        size.width * 0.05774933,
        size.height * 0.8973765,
        size.width * 0.05785022,
        size.height * 0.8973050,
        size.width * 0.05784311,
        size.height * 0.8972237);
    path.cubicTo(
        size.width * 0.05760356,
        size.height * 0.8945497,
        size.width * 0.05705422,
        size.height * 0.8884067,
        size.width * 0.05690222,
        size.height * 0.8867070);
    path.cubicTo(
        size.width * 0.05687600,
        size.height * 0.8864177,
        size.width * 0.05699911,
        size.height * 0.8861305,
        size.width * 0.05725644,
        size.height * 0.8858797);
    path.cubicTo(
        size.width * 0.05840178,
        size.height * 0.8847640,
        size.width * 0.06173556,
        size.height * 0.8815160,
        size.width * 0.06314267,
        size.height * 0.8801452);
    path.cubicTo(
        size.width * 0.06349511,
        size.height * 0.8798020,
        size.width * 0.06328578,
        size.height * 0.8793630,
        size.width * 0.06267556,
        size.height * 0.8791647);
    path.cubicTo(
        size.width * 0.06266667,
        size.height * 0.8791617,
        size.width * 0.06265778,
        size.height * 0.8791590,
        size.width * 0.06264933,
        size.height * 0.8791562);
    path.cubicTo(
        size.width * 0.06203867,
        size.height * 0.8789580,
        size.width * 0.06125822,
        size.height * 0.8790755,
        size.width * 0.06090578,
        size.height * 0.8794190);
    path.cubicTo(
        size.width * 0.05950311,
        size.height * 0.8807855,
        size.width * 0.05618489,
        size.height * 0.8840182,
        size.width * 0.05503022,
        size.height * 0.8851435);
    path.cubicTo(
        size.width * 0.05476622,
        size.height * 0.8854005,
        size.width * 0.05437333,
        size.height * 0.8856077,
        size.width * 0.05390044,
        size.height * 0.8857392);
    path.cubicTo(
        size.width * 0.05114000,
        size.height * 0.8865070,
        size.width * 0.04123200,
        size.height * 0.8892627,
        size.width * 0.03694667,
        size.height * 0.8904545);
    path.cubicTo(
        size.width * 0.03681733,
        size.height * 0.8904905,
        size.width * 0.03675556,
        size.height * 0.8905750,
        size.width * 0.03680222,
        size.height * 0.8906517);
    path.cubicTo(
        size.width * 0.03684933,
        size.height * 0.8907285,
        size.width * 0.03699022,
        size.height * 0.8907737,
        size.width * 0.03713156,
        size.height * 0.8907575);
    path.cubicTo(
        size.width * 0.04057733,
        size.height * 0.8903585,
        size.width * 0.04715467,
        size.height * 0.8895967,
        size.width * 0.04978089,
        size.height * 0.8892925);
    path.cubicTo(
        size.width * 0.04998000,
        size.height * 0.8892695,
        size.width * 0.05018400,
        size.height * 0.8893142,
        size.width * 0.05030267,
        size.height * 0.8894067);
    path.cubicTo(
        size.width * 0.05042178,
        size.height * 0.8894995,
        size.width * 0.05043289,
        size.height * 0.8896225,
        size.width * 0.05033111,
        size.height * 0.8897215);
    path.cubicTo(
        size.width * 0.04896800,
        size.height * 0.8910495,
        size.width * 0.04559289,
        size.height * 0.8943380,
        size.width * 0.04484311,
        size.height * 0.8950685);
    path.cubicTo(
        size.width * 0.04474578,
        size.height * 0.8951635,
        size.width * 0.04460267,
        size.height * 0.8952412,
        size.width * 0.04443111,
        size.height * 0.8952930);
    path.cubicTo(
        size.width * 0.04323111,
        size.height * 0.8956542,
        size.width * 0.03824978,
        size.height * 0.8971550,
        size.width * 0.03626444,
        size.height * 0.8977532);
    path.cubicTo(
        size.width * 0.03617733,
        size.height * 0.8977795,
        size.width * 0.03613378,
        size.height * 0.8978362,
        size.width * 0.03616000,
        size.height * 0.8978897);
    path.cubicTo(
        size.width * 0.03618622,
        size.height * 0.8979435,
        size.width * 0.03627511,
        size.height * 0.8979797,
        size.width * 0.03637378,
        size.height * 0.8979772);
    path.cubicTo(
        size.width * 0.03767289,
        size.height * 0.8979445,
        size.width * 0.04000533,
        size.height * 0.8978855,
        size.width * 0.04122000,
        size.height * 0.8978547);
    path.close();
    path.moveTo(size.width * 0.08035867, size.height * 0.8893773);
    path.cubicTo(
        size.width * 0.08044444,
        size.height * 0.8895118,
        size.width * 0.08042889,
        size.height * 0.8896605,
        size.width * 0.08031511,
        size.height * 0.8897885);
    path.cubicTo(
        size.width * 0.07972178,
        size.height * 0.8904557,
        size.width * 0.07780133,
        size.height * 0.8926162,
        size.width * 0.07691733,
        size.height * 0.8936105);
    path.cubicTo(
        size.width * 0.07683200,
        size.height * 0.8937070,
        size.width * 0.07665644,
        size.height * 0.8937680,
        size.width * 0.07646489,
        size.height * 0.8937680);
    path.cubicTo(
        size.width * 0.07627333,
        size.height * 0.8937680,
        size.width * 0.07609778,
        size.height * 0.8937070,
        size.width * 0.07601200,
        size.height * 0.8936105);
    path.cubicTo(
        size.width * 0.07512844,
        size.height * 0.8926162,
        size.width * 0.07320800,
        size.height * 0.8904557,
        size.width * 0.07261467,
        size.height * 0.8897885);
    path.cubicTo(
        size.width * 0.07250089,
        size.height * 0.8896605,
        size.width * 0.07248533,
        size.height * 0.8895118,
        size.width * 0.07257111,
        size.height * 0.8893773);
    path.cubicTo(
        size.width * 0.07312356,
        size.height * 0.8885118,
        size.width * 0.07522844,
        size.height * 0.8852133,
        size.width * 0.07609200,
        size.height * 0.8838602);
    path.cubicTo(
        size.width * 0.07614844,
        size.height * 0.8837717,
        size.width * 0.07629778,
        size.height * 0.8837127,
        size.width * 0.07646489,
        size.height * 0.8837127);
    path.cubicTo(
        size.width * 0.07663200,
        size.height * 0.8837127,
        size.width * 0.07678133,
        size.height * 0.8837717,
        size.width * 0.07683778,
        size.height * 0.8838602);
    path.cubicTo(
        size.width * 0.07770133,
        size.height * 0.8852132,
        size.width * 0.07980622,
        size.height * 0.8885118,
        size.width * 0.08035867,
        size.height * 0.8893773);
    path.close();
    path.moveTo(size.width * 0.06193911, size.height * 0.8893773);
    path.cubicTo(
        size.width * 0.06185289,
        size.height * 0.8895118,
        size.width * 0.06186889,
        size.height * 0.8896605,
        size.width * 0.06198267,
        size.height * 0.8897885);
    path.cubicTo(
        size.width * 0.06257556,
        size.height * 0.8904557,
        size.width * 0.06449600,
        size.height * 0.8926162,
        size.width * 0.06538000,
        size.height * 0.8936105);
    path.cubicTo(
        size.width * 0.06546578,
        size.height * 0.8937070,
        size.width * 0.06564089,
        size.height * 0.8937680,
        size.width * 0.06583244,
        size.height * 0.8937680);
    path.cubicTo(
        size.width * 0.06602444,
        size.height * 0.8937680,
        size.width * 0.06619956,
        size.height * 0.8937070,
        size.width * 0.06628533,
        size.height * 0.8936105);
    path.cubicTo(
        size.width * 0.06716889,
        size.height * 0.8926162,
        size.width * 0.06908978,
        size.height * 0.8904557,
        size.width * 0.06968267,
        size.height * 0.8897885);
    path.cubicTo(
        size.width * 0.06979644,
        size.height * 0.8896605,
        size.width * 0.06981244,
        size.height * 0.8895118,
        size.width * 0.06972622,
        size.height * 0.8893773);
    path.cubicTo(
        size.width * 0.06917378,
        size.height * 0.8885118,
        size.width * 0.06706889,
        size.height * 0.8852133,
        size.width * 0.06620578,
        size.height * 0.8838602);
    path.cubicTo(
        size.width * 0.06614889,
        size.height * 0.8837717,
        size.width * 0.06600000,
        size.height * 0.8837127,
        size.width * 0.06583244,
        size.height * 0.8837127);
    path.cubicTo(
        size.width * 0.06566533,
        size.height * 0.8837127,
        size.width * 0.06551600,
        size.height * 0.8837717,
        size.width * 0.06545956,
        size.height * 0.8838602);
    path.cubicTo(
        size.width * 0.06459644,
        size.height * 0.8852132,
        size.width * 0.06249111,
        size.height * 0.8885118,
        size.width * 0.06193911,
        size.height * 0.8893773);
    path.close();
    path.moveTo(size.width * 0.04729422, size.height * 0.8846213);
    path.cubicTo(
        size.width * 0.04712978,
        size.height * 0.8847303,
        size.width * 0.04689333,
        size.height * 0.8847970,
        size.width * 0.04663956,
        size.height * 0.8848055);
    path.cubicTo(
        size.width * 0.04531556,
        size.height * 0.8848503,
        size.width * 0.04102844,
        size.height * 0.8849950,
        size.width * 0.03905600,
        size.height * 0.8850615);
    path.cubicTo(
        size.width * 0.03886444,
        size.height * 0.8850680,
        size.width * 0.03868311,
        size.height * 0.8850132,
        size.width * 0.03858711,
        size.height * 0.8849198);
    path.cubicTo(
        size.width * 0.03849156,
        size.height * 0.8848265,
        size.width * 0.03849778,
        size.height * 0.8847105,
        size.width * 0.03860311,
        size.height * 0.8846205);
    path.cubicTo(
        size.width * 0.03969200,
        size.height * 0.8836930,
        size.width * 0.04205822,
        size.height * 0.8816770,
        size.width * 0.04278933,
        size.height * 0.8810545);
    path.cubicTo(
        size.width * 0.04292933,
        size.height * 0.8809350,
        size.width * 0.04315022,
        size.height * 0.8808530,
        size.width * 0.04340044,
        size.height * 0.8808275);
    path.cubicTo(
        size.width * 0.04500933,
        size.height * 0.8806640,
        size.width * 0.05114000,
        size.height * 0.8800400,
        size.width * 0.05365467,
        size.height * 0.8797843);
    path.cubicTo(
        size.width * 0.05381911,
        size.height * 0.8797675,
        size.width * 0.05398489,
        size.height * 0.8798108,
        size.width * 0.05406844,
        size.height * 0.8798920);
    path.cubicTo(
        size.width * 0.05415200,
        size.height * 0.8799735,
        size.width * 0.05413556,
        size.height * 0.8800758,
        size.width * 0.05402756,
        size.height * 0.8801475);
    path.cubicTo(
        size.width * 0.05237644,
        size.height * 0.8812448,
        size.width * 0.04835067,
        size.height * 0.8839193,
        size.width * 0.04729422,
        size.height * 0.8846213);
    path.close();
    path.moveTo(size.width * 0.09500311, size.height * 0.8846213);
    path.cubicTo(
        size.width * 0.09516756,
        size.height * 0.8847303,
        size.width * 0.09540444,
        size.height * 0.8847970,
        size.width * 0.09565822,
        size.height * 0.8848055);
    path.cubicTo(
        size.width * 0.09698222,
        size.height * 0.8848503,
        size.width * 0.1012689,
        size.height * 0.8849950,
        size.width * 0.1032413,
        size.height * 0.8850615);
    path.cubicTo(
        size.width * 0.1034329,
        size.height * 0.8850680,
        size.width * 0.1036142,
        size.height * 0.8850132,
        size.width * 0.1037102,
        size.height * 0.8849198);
    path.cubicTo(
        size.width * 0.1038062,
        size.height * 0.8848265,
        size.width * 0.1038000,
        size.height * 0.8847105,
        size.width * 0.1036942,
        size.height * 0.8846205);
    path.cubicTo(
        size.width * 0.1026053,
        size.height * 0.8836930,
        size.width * 0.1002391,
        size.height * 0.8816770,
        size.width * 0.09950844,
        size.height * 0.8810545);
    path.cubicTo(
        size.width * 0.09936800,
        size.height * 0.8809350,
        size.width * 0.09914711,
        size.height * 0.8808530,
        size.width * 0.09889689,
        size.height * 0.8808275);
    path.cubicTo(
        size.width * 0.09728800,
        size.height * 0.8806640,
        size.width * 0.09115778,
        size.height * 0.8800400,
        size.width * 0.08864267,
        size.height * 0.8797843);
    path.cubicTo(
        size.width * 0.08847822,
        size.height * 0.8797675,
        size.width * 0.08831244,
        size.height * 0.8798108,
        size.width * 0.08822889,
        size.height * 0.8798920);
    path.cubicTo(
        size.width * 0.08814533,
        size.height * 0.8799735,
        size.width * 0.08816178,
        size.height * 0.8800758,
        size.width * 0.08826978,
        size.height * 0.8801475);
    path.cubicTo(
        size.width * 0.08992133,
        size.height * 0.8812448,
        size.width * 0.09394667,
        size.height * 0.8839193,
        size.width * 0.09500311,
        size.height * 0.8846213);
    path.close();
    path.moveTo(size.width * 0.1042133, size.height * 0.8756483);
    path.cubicTo(
        size.width * 0.1044636,
        size.height * 0.8756738,
        size.width * 0.1046844,
        size.height * 0.8757558,
        size.width * 0.1048244,
        size.height * 0.8758750);
    path.cubicTo(
        size.width * 0.1055551,
        size.height * 0.8764975,
        size.width * 0.1079213,
        size.height * 0.8785135,
        size.width * 0.1090102,
        size.height * 0.8794413);
    path.cubicTo(
        size.width * 0.1091160,
        size.height * 0.8795313,
        size.width * 0.1091222,
        size.height * 0.8796470,
        size.width * 0.1090262,
        size.height * 0.8797405);
    path.cubicTo(
        size.width * 0.1089302,
        size.height * 0.8798338,
        size.width * 0.1087489,
        size.height * 0.8798888,
        size.width * 0.1085578,
        size.height * 0.8798823);
    path.cubicTo(
        size.width * 0.1065849,
        size.height * 0.8798155,
        size.width * 0.1022982,
        size.height * 0.8796710,
        size.width * 0.1009742,
        size.height * 0.8796263);
    path.cubicTo(
        size.width * 0.1007204,
        size.height * 0.8796175,
        size.width * 0.1004836,
        size.height * 0.8795510,
        size.width * 0.1003196,
        size.height * 0.8794418);
    path.cubicTo(
        size.width * 0.09926311,
        size.height * 0.8787400,
        size.width * 0.09523733,
        size.height * 0.8760653,
        size.width * 0.09358578,
        size.height * 0.8749683);
    path.cubicTo(
        size.width * 0.09347778,
        size.height * 0.8748965,
        size.width * 0.09346133,
        size.height * 0.8747943,
        size.width * 0.09354533,
        size.height * 0.8747128);
    path.cubicTo(
        size.width * 0.09362889,
        size.height * 0.8746313,
        size.width * 0.09379422,
        size.height * 0.8745880,
        size.width * 0.09395867,
        size.height * 0.8746048);
    path.cubicTo(
        size.width * 0.09647378,
        size.height * 0.8748608,
        size.width * 0.1026044,
        size.height * 0.8754845,
        size.width * 0.1042133,
        size.height * 0.8756483);
    path.close();
    path.moveTo(size.width * 0.03808444, size.height * 0.8756483);
    path.cubicTo(
        size.width * 0.03783422,
        size.height * 0.8756738,
        size.width * 0.03761333,
        size.height * 0.8757558,
        size.width * 0.03747289,
        size.height * 0.8758750);
    path.cubicTo(
        size.width * 0.03674222,
        size.height * 0.8764975,
        size.width * 0.03437600,
        size.height * 0.8785135,
        size.width * 0.03328711,
        size.height * 0.8794413);
    path.cubicTo(
        size.width * 0.03318133,
        size.height * 0.8795313,
        size.width * 0.03317556,
        size.height * 0.8796470,
        size.width * 0.03327111,
        size.height * 0.8797405);
    path.cubicTo(
        size.width * 0.03336711,
        size.height * 0.8798338,
        size.width * 0.03354844,
        size.height * 0.8798888,
        size.width * 0.03374000,
        size.height * 0.8798823);
    path.cubicTo(
        size.width * 0.03571244,
        size.height * 0.8798155,
        size.width * 0.03999956,
        size.height * 0.8796710,
        size.width * 0.04132311,
        size.height * 0.8796263);
    path.cubicTo(
        size.width * 0.04157733,
        size.height * 0.8796175,
        size.width * 0.04181378,
        size.height * 0.8795510,
        size.width * 0.04197822,
        size.height * 0.8794418);
    path.cubicTo(
        size.width * 0.04303467,
        size.height * 0.8787400,
        size.width * 0.04706000,
        size.height * 0.8760653,
        size.width * 0.04871156,
        size.height * 0.8749683);
    path.cubicTo(
        size.width * 0.04881956,
        size.height * 0.8748965,
        size.width * 0.04883600,
        size.height * 0.8747943,
        size.width * 0.04875244,
        size.height * 0.8747128);
    path.cubicTo(
        size.width * 0.04866889,
        size.height * 0.8746313,
        size.width * 0.04850311,
        size.height * 0.8745880,
        size.width * 0.04833867,
        size.height * 0.8746048);
    path.cubicTo(
        size.width * 0.04582400,
        size.height * 0.8748608,
        size.width * 0.03969333,
        size.height * 0.8754845,
        size.width * 0.03808444,
        size.height * 0.8756483);
    path.close();
    path.moveTo(size.width * 0.06340044, size.height * 0.8633430);
    path.cubicTo(
        size.width * 0.07080756,
        size.height * 0.8609375,
        size.width * 0.08029289,
        size.height * 0.8623673,
        size.width * 0.08456978,
        size.height * 0.8665338);
    path.cubicTo(
        size.width * 0.08884622,
        size.height * 0.8707003,
        size.width * 0.08630444,
        size.height * 0.8760360,
        size.width * 0.07889733,
        size.height * 0.8784415);
    path.cubicTo(
        size.width * 0.07149022,
        size.height * 0.8808470,
        size.width * 0.06200444,
        size.height * 0.8794172,
        size.width * 0.05772800,
        size.height * 0.8752508);
    path.cubicTo(
        size.width * 0.05345156,
        size.height * 0.8710843,
        size.width * 0.05599289,
        size.height * 0.8657485,
        size.width * 0.06340044,
        size.height * 0.8633430);
    path.close();
    path.moveTo(size.width * 0.1276249, size.height * 0.8719905);
    path.cubicTo(
        size.width * 0.1275404,
        size.height * 0.8719160,
        size.width * 0.1275347,
        size.height * 0.8718218,
        size.width * 0.1276102,
        size.height * 0.8717443);
    path.cubicTo(
        size.width * 0.1276853,
        size.height * 0.8716668,
        size.width * 0.1278298,
        size.height * 0.8716188,
        size.width * 0.1279867,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.1289836,
        size.height * 0.8716188,
        size.width * 0.1307151,
        size.height * 0.8716188,
        size.width * 0.1318929,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.1325800,
        size.height * 0.8716188,
        size.width * 0.1331369,
        size.height * 0.8713053,
        size.width * 0.1331369,
        size.height * 0.8709188);
    path.cubicTo(
        size.width * 0.1331369,
        size.height * 0.8709010,
        size.width * 0.1331369,
        size.height * 0.8708833,
        size.width * 0.1331369,
        size.height * 0.8708655);
    path.cubicTo(
        size.width * 0.1331369,
        size.height * 0.8704790,
        size.width * 0.1325800,
        size.height * 0.8701657,
        size.width * 0.1318929,
        size.height * 0.8701657);
    path.cubicTo(
        size.width * 0.1307271,
        size.height * 0.8701657,
        size.width * 0.1290182,
        size.height * 0.8701657,
        size.width * 0.1280173,
        size.height * 0.8701657);
    path.cubicTo(
        size.width * 0.1278578,
        size.height * 0.8701657,
        size.width * 0.1277116,
        size.height * 0.8701163,
        size.width * 0.1276373,
        size.height * 0.8700368);
    path.cubicTo(
        size.width * 0.1275627,
        size.height * 0.8699575,
        size.width * 0.1275724,
        size.height * 0.8698615,
        size.width * 0.1276627,
        size.height * 0.8697875);
    path.cubicTo(
        size.width * 0.1283124,
        size.height * 0.8692537,
        size.width * 0.1294964,
        size.height * 0.8682808,
        size.width * 0.1301907,
        size.height * 0.8677103);
    path.cubicTo(
        size.width * 0.1302467,
        size.height * 0.8676640,
        size.width * 0.1302382,
        size.height * 0.8676020,
        size.width * 0.1301702,
        size.height * 0.8675612);
    path.cubicTo(
        size.width * 0.1301018,
        size.height * 0.8675205,
        size.width * 0.1299920,
        size.height * 0.8675120,
        size.width * 0.1299067,
        size.height * 0.8675407);
    path.cubicTo(
        size.width * 0.1279689,
        size.height * 0.8681950,
        size.width * 0.1232298,
        size.height * 0.8697942,
        size.width * 0.1220773,
        size.height * 0.8701833);
    path.cubicTo(
        size.width * 0.1219102,
        size.height * 0.8702398,
        size.width * 0.1217182,
        size.height * 0.8702688,
        size.width * 0.1215236,
        size.height * 0.8702670);
    path.cubicTo(
        size.width * 0.1200244,
        size.height * 0.8702545,
        size.width * 0.1132742,
        size.height * 0.8701983,
        size.width * 0.1105476,
        size.height * 0.8701755);
    path.cubicTo(
        size.width * 0.1103444,
        size.height * 0.8701738,
        size.width * 0.1101622,
        size.height * 0.8701053,
        size.width * 0.1100818,
        size.height * 0.8700003);
    path.cubicTo(
        size.width * 0.1100013,
        size.height * 0.8698955,
        size.width * 0.1100382,
        size.height * 0.8697738,
        size.width * 0.1101751,
        size.height * 0.8696898);
    path.cubicTo(
        size.width * 0.1119573,
        size.height * 0.8685960,
        size.width * 0.1163693,
        size.height * 0.8658887,
        size.width * 0.1187093,
        size.height * 0.8644527);
    path.cubicTo(
        size.width * 0.1188071,
        size.height * 0.8643930,
        size.width * 0.1188102,
        size.height * 0.8643015,
        size.width * 0.1187169,
        size.height * 0.8642395);
    path.cubicTo(
        size.width * 0.1186240,
        size.height * 0.8641775,
        size.width * 0.1184631,
        size.height * 0.8641640,
        size.width * 0.1183418,
        size.height * 0.8642083);
    path.cubicTo(
        size.width * 0.1143444,
        size.height * 0.8656618,
        size.width * 0.1051613,
        size.height * 0.8690010,
        size.width * 0.1026204,
        size.height * 0.8699250);
    path.cubicTo(
        size.width * 0.1021884,
        size.height * 0.8700823,
        size.width * 0.1016844,
        size.height * 0.8701658,
        size.width * 0.1011698,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.09887956,
        size.height * 0.8701658,
        size.width * 0.09221156,
        size.height * 0.8701658,
        size.width * 0.08939822,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.08869333,
        size.height * 0.8701658,
        size.width * 0.08812178,
        size.height * 0.8704873,
        size.width * 0.08812178,
        size.height * 0.8708838);
    path.cubicTo(
        size.width * 0.08812178,
        size.height * 0.8708895,
        size.width * 0.08812178,
        size.height * 0.8708950,
        size.width * 0.08812178,
        size.height * 0.8709008);
    path.cubicTo(
        size.width * 0.08812178,
        size.height * 0.8712973,
        size.width * 0.08869333,
        size.height * 0.8716188,
        size.width * 0.08939822,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.09220311,
        size.height * 0.8716188,
        size.width * 0.09883956,
        size.height * 0.8716188,
        size.width * 0.1011493,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.1016769,
        size.height * 0.8716188,
        size.width * 0.1021924,
        size.height * 0.8717065,
        size.width * 0.1026316,
        size.height * 0.8718710);
    path.cubicTo(
        size.width * 0.1051933,
        size.height * 0.8728318,
        size.width * 0.1143902,
        size.height * 0.8762808,
        size.width * 0.1183680,
        size.height * 0.8777723);
    path.cubicTo(
        size.width * 0.1184880,
        size.height * 0.8778173,
        size.width * 0.1186489,
        size.height * 0.8778053,
        size.width * 0.1187436,
        size.height * 0.8777440);
    path.cubicTo(
        size.width * 0.1188387,
        size.height * 0.8776828,
        size.width * 0.1188378,
        size.height * 0.8775913,
        size.width * 0.1187418,
        size.height * 0.8775305);
    path.cubicTo(
        size.width * 0.1164044,
        size.height * 0.8760515,
        size.width * 0.1119431,
        size.height * 0.8732285,
        size.width * 0.1101618,
        size.height * 0.8721010);
    path.cubicTo(
        size.width * 0.1100271,
        size.height * 0.8720158,
        size.width * 0.1099938,
        size.height * 0.8718940,
        size.width * 0.1100769,
        size.height * 0.8717898);
    path.cubicTo(
        size.width * 0.1101600,
        size.height * 0.8716858,
        size.width * 0.1103440,
        size.height * 0.8716188,
        size.width * 0.1105471,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.1132733,
        size.height * 0.8716188,
        size.width * 0.1200240,
        size.height * 0.8716188,
        size.width * 0.1215231,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.1217182,
        size.height * 0.8716188,
        size.width * 0.1219093,
        size.height * 0.8716493,
        size.width * 0.1220751,
        size.height * 0.8717070);
    path.cubicTo(
        size.width * 0.1232311,
        size.height * 0.8721108,
        size.width * 0.1280324,
        size.height * 0.8737870,
        size.width * 0.1299462,
        size.height * 0.8744553);
    path.cubicTo(
        size.width * 0.1300302,
        size.height * 0.8744845,
        size.width * 0.1301391,
        size.height * 0.8744773,
        size.width * 0.1302084,
        size.height * 0.8744378);
    path.cubicTo(
        size.width * 0.1302782,
        size.height * 0.8743980,
        size.width * 0.1302898,
        size.height * 0.8743368,
        size.width * 0.1302364,
        size.height * 0.8742898);
    path.cubicTo(
        size.width * 0.1295364,
        size.height * 0.8736735,
        size.width * 0.1282796,
        size.height * 0.8725668,
        size.width * 0.1276249,
        size.height * 0.8719905);
    path.close();
    path.moveTo(size.width * 0.01467289, size.height * 0.8697940);
    path.cubicTo(
        size.width * 0.01475733,
        size.height * 0.8698685,
        size.width * 0.01476311,
        size.height * 0.8699628,
        size.width * 0.01468756,
        size.height * 0.8700403);
    path.cubicTo(
        size.width * 0.01461200,
        size.height * 0.8701178,
        size.width * 0.01446756,
        size.height * 0.8701658,
        size.width * 0.01431067,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.01331422,
        size.height * 0.8701658,
        size.width * 0.01158222,
        size.height * 0.8701658,
        size.width * 0.01040489,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.009717778,
        size.height * 0.8701658,
        size.width * 0.009160444,
        size.height * 0.8704790,
        size.width * 0.009160444,
        size.height * 0.8708655);
    path.cubicTo(
        size.width * 0.009160444,
        size.height * 0.8708833,
        size.width * 0.009160444,
        size.height * 0.8709010,
        size.width * 0.009160444,
        size.height * 0.8709188);
    path.cubicTo(
        size.width * 0.009160444,
        size.height * 0.8713053,
        size.width * 0.009717778,
        size.height * 0.8716188,
        size.width * 0.01040489,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.01157067,
        size.height * 0.8716188,
        size.width * 0.01327911,
        size.height * 0.8716188,
        size.width * 0.01428044,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.01443956,
        size.height * 0.8716188,
        size.width * 0.01458578,
        size.height * 0.8716683,
        size.width * 0.01466044,
        size.height * 0.8717475);
    path.cubicTo(
        size.width * 0.01473467,
        size.height * 0.8718270,
        size.width * 0.01472489,
        size.height * 0.8719228,
        size.width * 0.01463467,
        size.height * 0.8719968);
    path.cubicTo(
        size.width * 0.01398533,
        size.height * 0.8725308,
        size.width * 0.01280089,
        size.height * 0.8735038,
        size.width * 0.01210667,
        size.height * 0.8740740);
    path.cubicTo(
        size.width * 0.01205067,
        size.height * 0.8741203,
        size.width * 0.01205911,
        size.height * 0.8741823,
        size.width * 0.01212756,
        size.height * 0.8742233);
    path.cubicTo(
        size.width * 0.01219556,
        size.height * 0.8742640,
        size.width * 0.01230533,
        size.height * 0.8742725,
        size.width * 0.01239067,
        size.height * 0.8742435);
    path.cubicTo(
        size.width * 0.01432889,
        size.height * 0.8735895,
        size.width * 0.01906800,
        size.height * 0.8719900,
        size.width * 0.02022044,
        size.height * 0.8716013);
    path.cubicTo(
        size.width * 0.02038756,
        size.height * 0.8715448,
        size.width * 0.02057911,
        size.height * 0.8715158,
        size.width * 0.02077422,
        size.height * 0.8715173);
    path.cubicTo(
        size.width * 0.02227333,
        size.height * 0.8715300,
        size.width * 0.02902311,
        size.height * 0.8715863,
        size.width * 0.03175022,
        size.height * 0.8716090);
    path.cubicTo(
        size.width * 0.03195289,
        size.height * 0.8716108,
        size.width * 0.03213511,
        size.height * 0.8716793,
        size.width * 0.03221556,
        size.height * 0.8717843);
    path.cubicTo(
        size.width * 0.03229600,
        size.height * 0.8718890,
        size.width * 0.03225956,
        size.height * 0.8720105,
        size.width * 0.03212222,
        size.height * 0.8720948);
    path.cubicTo(
        size.width * 0.03034000,
        size.height * 0.8731883,
        size.width * 0.02592800,
        size.height * 0.8758958,
        size.width * 0.02358800,
        size.height * 0.8773315);
    path.cubicTo(
        size.width * 0.02349067,
        size.height * 0.8773915,
        size.width * 0.02348711,
        size.height * 0.8774828,
        size.width * 0.02358044,
        size.height * 0.8775450);
    path.cubicTo(
        size.width * 0.02367378,
        size.height * 0.8776070,
        size.width * 0.02383422,
        size.height * 0.8776205,
        size.width * 0.02395556,
        size.height * 0.8775763);
    path.cubicTo(
        size.width * 0.02795289,
        size.height * 0.8761228,
        size.width * 0.03713600,
        size.height * 0.8727835,
        size.width * 0.03967689,
        size.height * 0.8718595);
    path.cubicTo(
        size.width * 0.04010933,
        size.height * 0.8717023,
        size.width * 0.04061289,
        size.height * 0.8716188,
        size.width * 0.04112756,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.04341822,
        size.height * 0.8716188,
        size.width * 0.05008578,
        size.height * 0.8716188,
        size.width * 0.05289956,
        size.height * 0.8716188);
    path.cubicTo(
        size.width * 0.05360444,
        size.height * 0.8716188,
        size.width * 0.05417600,
        size.height * 0.8712973,
        size.width * 0.05417600,
        size.height * 0.8709008);
    path.cubicTo(
        size.width * 0.05417600,
        size.height * 0.8708950,
        size.width * 0.05417600,
        size.height * 0.8708895,
        size.width * 0.05417600,
        size.height * 0.8708838);
    path.cubicTo(
        size.width * 0.05417600,
        size.height * 0.8704873,
        size.width * 0.05360444,
        size.height * 0.8701658,
        size.width * 0.05289956,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.05009422,
        size.height * 0.8701658,
        size.width * 0.04345778,
        size.height * 0.8701658,
        size.width * 0.04114844,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.04062089,
        size.height * 0.8701658,
        size.width * 0.04010489,
        size.height * 0.8700780,
        size.width * 0.03966578,
        size.height * 0.8699133);
    path.cubicTo(
        size.width * 0.03710400,
        size.height * 0.8689525,
        size.width * 0.02790711,
        size.height * 0.8655038,
        size.width * 0.02392933,
        size.height * 0.8640123);
    path.cubicTo(
        size.width * 0.02380933,
        size.height * 0.8639673,
        size.width * 0.02364844,
        size.height * 0.8639793,
        size.width * 0.02355378,
        size.height * 0.8640405);
    path.cubicTo(
        size.width * 0.02345911,
        size.height * 0.8641018,
        size.width * 0.02346000,
        size.height * 0.8641930,
        size.width * 0.02355556,
        size.height * 0.8642538);
    path.cubicTo(
        size.width * 0.02589289,
        size.height * 0.8657328,
        size.width * 0.03035422,
        size.height * 0.8685560,
        size.width * 0.03213556,
        size.height * 0.8696833);
    path.cubicTo(
        size.width * 0.03227067,
        size.height * 0.8697688,
        size.width * 0.03230400,
        size.height * 0.8698905,
        size.width * 0.03222089,
        size.height * 0.8699948);
    path.cubicTo(
        size.width * 0.03213733,
        size.height * 0.8700988,
        size.width * 0.03195333,
        size.height * 0.8701658,
        size.width * 0.03175067,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.02902400,
        size.height * 0.8701658,
        size.width * 0.02227378,
        size.height * 0.8701658,
        size.width * 0.02077422,
        size.height * 0.8701658);
    path.cubicTo(
        size.width * 0.02057911,
        size.height * 0.8701658,
        size.width * 0.02038800,
        size.height * 0.8701353,
        size.width * 0.02022267,
        size.height * 0.8700773);
    path.cubicTo(
        size.width * 0.01906622,
        size.height * 0.8696735,
        size.width * 0.01426489,
        size.height * 0.8679973,
        size.width * 0.01235156,
        size.height * 0.8673293);
    path.cubicTo(
        size.width * 0.01226711,
        size.height * 0.8672998,
        size.width * 0.01215822,
        size.height * 0.8673073,
        size.width * 0.01208889,
        size.height * 0.8673468);
    path.cubicTo(
        size.width * 0.01201956,
        size.height * 0.8673863,
        size.width * 0.01200800,
        size.height * 0.8674478,
        size.width * 0.01206089,
        size.height * 0.8674945);
    path.cubicTo(
        size.width * 0.01276133,
        size.height * 0.8681110,
        size.width * 0.01401822,
        size.height * 0.8692178,
        size.width * 0.01467289,
        size.height * 0.8697940);
    path.close();
    path.moveTo(size.width * 0.03808444, size.height * 0.8661363);
    path.cubicTo(
        size.width * 0.03783422,
        size.height * 0.8661108,
        size.width * 0.03761333,
        size.height * 0.8660288,
        size.width * 0.03747289,
        size.height * 0.8659095);
    path.cubicTo(
        size.width * 0.03674222,
        size.height * 0.8652868,
        size.width * 0.03437600,
        size.height * 0.8632710,
        size.width * 0.03328711,
        size.height * 0.8623433);
    path.cubicTo(
        size.width * 0.03318133,
        size.height * 0.8622533,
        size.width * 0.03317556,
        size.height * 0.8621375,
        size.width * 0.03327111,
        size.height * 0.8620440);
    path.cubicTo(
        size.width * 0.03336711,
        size.height * 0.8619508,
        size.width * 0.03354844,
        size.height * 0.8618958,
        size.width * 0.03374000,
        size.height * 0.8619023);
    path.cubicTo(
        size.width * 0.03571244,
        size.height * 0.8619688,
        size.width * 0.03999956,
        size.height * 0.8621135,
        size.width * 0.04132311,
        size.height * 0.8621583);
    path.cubicTo(
        size.width * 0.04157733,
        size.height * 0.8621668,
        size.width * 0.04181378,
        size.height * 0.8622335,
        size.width * 0.04197822,
        size.height * 0.8623428);
    path.cubicTo(
        size.width * 0.04303467,
        size.height * 0.8630445,
        size.width * 0.04706000,
        size.height * 0.8657190,
        size.width * 0.04871156,
        size.height * 0.8668162);
    path.cubicTo(
        size.width * 0.04881956,
        size.height * 0.8668880,
        size.width * 0.04883600,
        size.height * 0.8669902,
        size.width * 0.04875244,
        size.height * 0.8670717);
    path.cubicTo(
        size.width * 0.04866889,
        size.height * 0.8671532,
        size.width * 0.04850311,
        size.height * 0.8671963,
        size.width * 0.04833867,
        size.height * 0.8671795);
    path.cubicTo(
        size.width * 0.04582400,
        size.height * 0.8669237,
        size.width * 0.03969333,
        size.height * 0.8663000,
        size.width * 0.03808444,
        size.height * 0.8661363);
    path.close();
    path.moveTo(size.width * 0.1042133, size.height * 0.8661363);
    path.cubicTo(
        size.width * 0.1044636,
        size.height * 0.8661108,
        size.width * 0.1046844,
        size.height * 0.8660288,
        size.width * 0.1048244,
        size.height * 0.8659095);
    path.cubicTo(
        size.width * 0.1055551,
        size.height * 0.8652868,
        size.width * 0.1079213,
        size.height * 0.8632710,
        size.width * 0.1090102,
        size.height * 0.8623433);
    path.cubicTo(
        size.width * 0.1091160,
        size.height * 0.8622533,
        size.width * 0.1091222,
        size.height * 0.8621375,
        size.width * 0.1090262,
        size.height * 0.8620440);
    path.cubicTo(
        size.width * 0.1089302,
        size.height * 0.8619508,
        size.width * 0.1087489,
        size.height * 0.8618958,
        size.width * 0.1085578,
        size.height * 0.8619023);
    path.cubicTo(
        size.width * 0.1065849,
        size.height * 0.8619688,
        size.width * 0.1022982,
        size.height * 0.8621135,
        size.width * 0.1009742,
        size.height * 0.8621583);
    path.cubicTo(
        size.width * 0.1007204,
        size.height * 0.8621668,
        size.width * 0.1004836,
        size.height * 0.8622335,
        size.width * 0.1003196,
        size.height * 0.8623428);
    path.cubicTo(
        size.width * 0.09926311,
        size.height * 0.8630445,
        size.width * 0.09523733,
        size.height * 0.8657190,
        size.width * 0.09358578,
        size.height * 0.8668162);
    path.cubicTo(
        size.width * 0.09347778,
        size.height * 0.8668880,
        size.width * 0.09346133,
        size.height * 0.8669902,
        size.width * 0.09354533,
        size.height * 0.8670717);
    path.cubicTo(
        size.width * 0.09362889,
        size.height * 0.8671532,
        size.width * 0.09379422,
        size.height * 0.8671963,
        size.width * 0.09395867,
        size.height * 0.8671795);
    path.cubicTo(
        size.width * 0.09647378,
        size.height * 0.8669237,
        size.width * 0.1026044,
        size.height * 0.8663000,
        size.width * 0.1042133,
        size.height * 0.8661363);
    path.close();
    path.moveTo(size.width * 0.1010778, size.height * 0.8439298);
    path.cubicTo(
        size.width * 0.1009209,
        size.height * 0.8439335,
        size.width * 0.1007724,
        size.height * 0.8438893,
        size.width * 0.1006911,
        size.height * 0.8438138);
    path.cubicTo(
        size.width * 0.1006098,
        size.height * 0.8437383,
        size.width * 0.1006076,
        size.height * 0.8436438,
        size.width * 0.1006862,
        size.height * 0.8435673);
    path.cubicTo(
        size.width * 0.1011844,
        size.height * 0.8430820,
        size.width * 0.1020502,
        size.height * 0.8422383,
        size.width * 0.1026391,
        size.height * 0.8416648);
    path.cubicTo(
        size.width * 0.1029827,
        size.height * 0.8413300,
        size.width * 0.1027787,
        size.height * 0.8409020,
        size.width * 0.1021840,
        size.height * 0.8407088);
    path.cubicTo(
        size.width * 0.1021564,
        size.height * 0.8406998,
        size.width * 0.1021293,
        size.height * 0.8406910,
        size.width * 0.1021018,
        size.height * 0.8406820);
    path.cubicTo(
        size.width * 0.1015067,
        size.height * 0.8404888,
        size.width * 0.1007458,
        size.height * 0.8406035,
        size.width * 0.1004022,
        size.height * 0.8409383);
    path.cubicTo(
        size.width * 0.09981956,
        size.height * 0.8415060,
        size.width * 0.09896533,
        size.height * 0.8423385,
        size.width * 0.09846444,
        size.height * 0.8428263);
    path.cubicTo(
        size.width * 0.09838489,
        size.height * 0.8429038,
        size.width * 0.09823511,
        size.height * 0.8429503,
        size.width * 0.09807600,
        size.height * 0.8429468);
    path.cubicTo(
        size.width * 0.09791689,
        size.height * 0.8429433,
        size.width * 0.09777378,
        size.height * 0.8428905,
        size.width * 0.09770489,
        size.height * 0.8428098);
    path.cubicTo(
        size.width * 0.09720800,
        size.height * 0.8422263,
        size.width * 0.09630178,
        size.height * 0.8411630,
        size.width * 0.09577067,
        size.height * 0.8405398);
    path.cubicTo(
        size.width * 0.09572800,
        size.height * 0.8404893,
        size.width * 0.09562800,
        size.height * 0.8404623,
        size.width * 0.09553111,
        size.height * 0.8404753);
    path.cubicTo(
        size.width * 0.09543422,
        size.height * 0.8404880,
        size.width * 0.09536622,
        size.height * 0.8405373,
        size.width * 0.09536800,
        size.height * 0.8405933);
    path.cubicTo(
        size.width * 0.09540578,
        size.height * 0.8418643,
        size.width * 0.09549911,
        size.height * 0.8449728,
        size.width * 0.09552133,
        size.height * 0.8457285);
    path.cubicTo(
        size.width * 0.09552489,
        size.height * 0.8458380,
        size.width * 0.09547378,
        size.height * 0.8459460,
        size.width * 0.09537378,
        size.height * 0.8460403);
    path.cubicTo(
        size.width * 0.09460489,
        size.height * 0.8467643,
        size.width * 0.09114311,
        size.height * 0.8500240,
        size.width * 0.08974444,
        size.height * 0.8513413);
    path.cubicTo(
        size.width * 0.08964044,
        size.height * 0.8514393,
        size.width * 0.08944356,
        size.height * 0.8514938,
        size.width * 0.08924222,
        size.height * 0.8514805);
    path.cubicTo(
        size.width * 0.08904044,
        size.height * 0.8514670,
        size.width * 0.08887156,
        size.height * 0.8513885,
        size.width * 0.08881067,
        size.height * 0.8512795);
    path.cubicTo(
        size.width * 0.08801778,
        size.height * 0.8498648,
        size.width * 0.08605556,
        size.height * 0.8463618,
        size.width * 0.08501511,
        size.height * 0.8445040);
    path.cubicTo(
        size.width * 0.08497156,
        size.height * 0.8444265,
        size.width * 0.08483244,
        size.height * 0.8443793,
        size.width * 0.08469022,
        size.height * 0.8443935);
    path.cubicTo(
        size.width * 0.08454844,
        size.height * 0.8444080,
        size.width * 0.08444711,
        size.height * 0.8444795,
        size.width * 0.08445467,
        size.height * 0.8445605);
    path.cubicTo(
        size.width * 0.08469378,
        size.height * 0.8472345,
        size.width * 0.08524356,
        size.height * 0.8533778,
        size.width * 0.08539556,
        size.height * 0.8550775);
    path.cubicTo(
        size.width * 0.08542133,
        size.height * 0.8553665,
        size.width * 0.08529822,
        size.height * 0.8556538,
        size.width * 0.08504089,
        size.height * 0.8559045);
    path.cubicTo(
        size.width * 0.08389556,
        size.height * 0.8570203,
        size.width * 0.08056178,
        size.height * 0.8602685,
        size.width * 0.07915511,
        size.height * 0.8616390);
    path.cubicTo(
        size.width * 0.07880267,
        size.height * 0.8619825,
        size.width * 0.07901156,
        size.height * 0.8624215,
        size.width * 0.07962222,
        size.height * 0.8626198);
    path.cubicTo(
        size.width * 0.07963067,
        size.height * 0.8626225,
        size.width * 0.07963956,
        size.height * 0.8626255,
        size.width * 0.07964844,
        size.height * 0.8626283);
    path.cubicTo(
        size.width * 0.08025867,
        size.height * 0.8628265,
        size.width * 0.08103911,
        size.height * 0.8627090,
        size.width * 0.08139200,
        size.height * 0.8623655);
    path.cubicTo(
        size.width * 0.08279422,
        size.height * 0.8609990,
        size.width * 0.08611244,
        size.height * 0.8577660,
        size.width * 0.08726756,
        size.height * 0.8566410);
    path.cubicTo(
        size.width * 0.08753111,
        size.height * 0.8563840,
        size.width * 0.08792444,
        size.height * 0.8561768,
        size.width * 0.08839733,
        size.height * 0.8560453);
    path.cubicTo(
        size.width * 0.09115733,
        size.height * 0.8552775,
        size.width * 0.1010658,
        size.height * 0.8525218,
        size.width * 0.1053507,
        size.height * 0.8513300);
    path.cubicTo(
        size.width * 0.1054804,
        size.height * 0.8512940,
        size.width * 0.1055422,
        size.height * 0.8512095,
        size.width * 0.1054951,
        size.height * 0.8511328);
    path.cubicTo(
        size.width * 0.1054480,
        size.height * 0.8510558,
        size.width * 0.1053071,
        size.height * 0.8510108,
        size.width * 0.1051658,
        size.height * 0.8510270);
    path.cubicTo(
        size.width * 0.1017200,
        size.height * 0.8514260,
        size.width * 0.09514267,
        size.height * 0.8521878,
        size.width * 0.09251644,
        size.height * 0.8524920);
    path.cubicTo(
        size.width * 0.09231778,
        size.height * 0.8525150,
        size.width * 0.09211333,
        size.height * 0.8524703,
        size.width * 0.09199467,
        size.height * 0.8523775);
    path.cubicTo(
        size.width * 0.09187600,
        size.height * 0.8522850,
        size.width * 0.09186489,
        size.height * 0.8521620,
        size.width * 0.09196622,
        size.height * 0.8520630);
    path.cubicTo(
        size.width * 0.09332933,
        size.height * 0.8507348,
        size.width * 0.09670489,
        size.height * 0.8474465,
        size.width * 0.09745422,
        size.height * 0.8467160);
    path.cubicTo(
        size.width * 0.09755200,
        size.height * 0.8466210,
        size.width * 0.09769467,
        size.height * 0.8465433,
        size.width * 0.09786667,
        size.height * 0.8464915);
    path.cubicTo(
        size.width * 0.09906622,
        size.height * 0.8461300,
        size.width * 0.1040476,
        size.height * 0.8446293,
        size.width * 0.1060329,
        size.height * 0.8440313);
    path.cubicTo(
        size.width * 0.1061204,
        size.height * 0.8440050,
        size.width * 0.1061636,
        size.height * 0.8439483,
        size.width * 0.1061373,
        size.height * 0.8438945);
    path.cubicTo(
        size.width * 0.1061111,
        size.height * 0.8438410,
        size.width * 0.1060222,
        size.height * 0.8438045,
        size.width * 0.1059236,
        size.height * 0.8438070);
    path.cubicTo(
        size.width * 0.1046244,
        size.height * 0.8438400,
        size.width * 0.1022920,
        size.height * 0.8438990,
        size.width * 0.1010778,
        size.height * 0.8439298);
    path.close();
    path.moveTo(size.width * 0.04460133, size.height * 0.8428315);
    path.cubicTo(
        size.width * 0.04452933,
        size.height * 0.8429098,
        size.width * 0.04438667,
        size.height * 0.8429598,
        size.width * 0.04422978,
        size.height * 0.8429618);
    path.cubicTo(
        size.width * 0.04407289,
        size.height * 0.8429638,
        size.width * 0.04392667,
        size.height * 0.8429175,
        size.width * 0.04384800,
        size.height * 0.8428410);
    path.cubicTo(
        size.width * 0.04334978,
        size.height * 0.8423555,
        size.width * 0.04248400,
        size.height * 0.8415120,
        size.width * 0.04189511,
        size.height * 0.8409383);
    path.cubicTo(
        size.width * 0.04155156,
        size.height * 0.8406035,
        size.width * 0.04079067,
        size.height * 0.8404888,
        size.width * 0.04019556,
        size.height * 0.8406820);
    path.cubicTo(
        size.width * 0.04016844,
        size.height * 0.8406910,
        size.width * 0.04014089,
        size.height * 0.8406998,
        size.width * 0.04011378,
        size.height * 0.8407088);
    path.cubicTo(
        size.width * 0.03951867,
        size.height * 0.8409020,
        size.width * 0.03931467,
        size.height * 0.8413300,
        size.width * 0.03965822,
        size.height * 0.8416648);
    path.cubicTo(
        size.width * 0.04024133,
        size.height * 0.8422325,
        size.width * 0.04109556,
        size.height * 0.8430650,
        size.width * 0.04159600,
        size.height * 0.8435525);
    path.cubicTo(
        size.width * 0.04167600,
        size.height * 0.8436303,
        size.width * 0.04167244,
        size.height * 0.8437263,
        size.width * 0.04158756,
        size.height * 0.8438023);
    path.cubicTo(
        size.width * 0.04150267,
        size.height * 0.8438780,
        size.width * 0.04135022,
        size.height * 0.8439213,
        size.width * 0.04119111,
        size.height * 0.8439143);
    path.cubicTo(
        size.width * 0.04004444,
        size.height * 0.8438648,
        size.width * 0.03795422,
        size.height * 0.8437745,
        size.width * 0.03672889,
        size.height * 0.8437215);
    path.cubicTo(
        size.width * 0.03662978,
        size.height * 0.8437173,
        size.width * 0.03653867,
        size.height * 0.8437525,
        size.width * 0.03650978,
        size.height * 0.8438060);
    path.cubicTo(
        size.width * 0.03648133,
        size.height * 0.8438598,
        size.width * 0.03652267,
        size.height * 0.8439175,
        size.width * 0.03660978,
        size.height * 0.8439445);
    path.cubicTo(
        size.width * 0.03858578,
        size.height * 0.8445615,
        size.width * 0.04341822,
        size.height * 0.8460705,
        size.width * 0.04459289,
        size.height * 0.8464375);
    path.cubicTo(
        size.width * 0.04476356,
        size.height * 0.8464908,
        size.width * 0.04490400,
        size.height * 0.8465695,
        size.width * 0.04499911,
        size.height * 0.8466653);
    path.cubicTo(
        size.width * 0.04572933,
        size.height * 0.8474018,
        size.width * 0.04901733,
        size.height * 0.8507183,
        size.width * 0.05034578,
        size.height * 0.8520580);
    path.cubicTo(
        size.width * 0.05044444,
        size.height * 0.8521578,
        size.width * 0.05043022,
        size.height * 0.8522808,
        size.width * 0.05030889,
        size.height * 0.8523723);
    path.cubicTo(
        size.width * 0.05018756,
        size.height * 0.8524638,
        size.width * 0.04998222,
        size.height * 0.8525070,
        size.width * 0.04978400,
        size.height * 0.8524823);
    path.cubicTo(
        size.width * 0.04720933,
        size.height * 0.8521608,
        size.width * 0.04083511,
        size.height * 0.8513653,
        size.width * 0.03745422,
        size.height * 0.8509433);
    path.cubicTo(
        size.width * 0.03731333,
        size.height * 0.8509258,
        size.width * 0.03717111,
        size.height * 0.8509698,
        size.width * 0.03712222,
        size.height * 0.8510463);
    path.cubicTo(
        size.width * 0.03707333,
        size.height * 0.8511225,
        size.width * 0.03713289,
        size.height * 0.8512075,
        size.width * 0.03726133,
        size.height * 0.8512448);
    path.cubicTo(
        size.width * 0.04149778,
        size.height * 0.8524650,
        size.width * 0.05123067,
        size.height * 0.8552688,
        size.width * 0.05392356,
        size.height * 0.8560448);
    path.cubicTo(
        size.width * 0.05438178,
        size.height * 0.8561767,
        size.width * 0.05476267,
        size.height * 0.8563803,
        size.width * 0.05502000,
        size.height * 0.8566310);
    path.cubicTo(
        size.width * 0.05616489,
        size.height * 0.8577468,
        size.width * 0.05949867,
        size.height * 0.8609947,
        size.width * 0.06090578,
        size.height * 0.8623655);
    path.cubicTo(
        size.width * 0.06125822,
        size.height * 0.8627090,
        size.width * 0.06203867,
        size.height * 0.8628265,
        size.width * 0.06264933,
        size.height * 0.8626282);
    path.cubicTo(
        size.width * 0.06265778,
        size.height * 0.8626255,
        size.width * 0.06266667,
        size.height * 0.8626225,
        size.width * 0.06267556,
        size.height * 0.8626197);
    path.cubicTo(
        size.width * 0.06328578,
        size.height * 0.8624215,
        size.width * 0.06349511,
        size.height * 0.8619825,
        size.width * 0.06314267,
        size.height * 0.8616390);
    path.cubicTo(
        size.width * 0.06174000,
        size.height * 0.8602725,
        size.width * 0.05842178,
        size.height * 0.8570397,
        size.width * 0.05726711,
        size.height * 0.8559145);
    path.cubicTo(
        size.width * 0.05700311,
        size.height * 0.8556575,
        size.width * 0.05688044,
        size.height * 0.8553625,
        size.width * 0.05691422,
        size.height * 0.8550662);
    path.cubicTo(
        size.width * 0.05711244,
        size.height * 0.8533380,
        size.width * 0.05782400,
        size.height * 0.8471332,
        size.width * 0.05813156,
        size.height * 0.8444497);
    path.cubicTo(
        size.width * 0.05814089,
        size.height * 0.8443688,
        size.width * 0.05804178,
        size.height * 0.8442965,
        size.width * 0.05790000,
        size.height * 0.8442810);
    path.cubicTo(
        size.width * 0.05775822,
        size.height * 0.8442655,
        size.width * 0.05761822,
        size.height * 0.8443115,
        size.width * 0.05757289,
        size.height * 0.8443885);
    path.cubicTo(
        size.width * 0.05646444,
        size.height * 0.8462667,
        size.width * 0.05434844,
        size.height * 0.8498515,
        size.width * 0.05350356,
        size.height * 0.8512830);
    path.cubicTo(
        size.width * 0.05343956,
        size.height * 0.8513912,
        size.width * 0.05326844,
        size.height * 0.8514685,
        size.width * 0.05306667,
        size.height * 0.8514800);
    path.cubicTo(
        size.width * 0.05286489,
        size.height * 0.8514915,
        size.width * 0.05266933,
        size.height * 0.8514355,
        size.width * 0.05256800,
        size.height * 0.8513365);
    path.cubicTo(
        size.width * 0.05120489,
        size.height * 0.8500085,
        size.width * 0.04782978,
        size.height * 0.8467200,
        size.width * 0.04708000,
        size.height * 0.8459895);
    path.cubicTo(
        size.width * 0.04698222,
        size.height * 0.8458945,
        size.width * 0.04693422,
        size.height * 0.8457862,
        size.width * 0.04694044,
        size.height * 0.8456765);
    path.cubicTo(
        size.width * 0.04698356,
        size.height * 0.8449115,
        size.width * 0.04716400,
        size.height * 0.8417345,
        size.width * 0.04723556,
        size.height * 0.8404682);
    path.cubicTo(
        size.width * 0.04723867,
        size.height * 0.8404125,
        size.width * 0.04717333,
        size.height * 0.8403632,
        size.width * 0.04707733,
        size.height * 0.8403490);
    path.cubicTo(
        size.width * 0.04698178,
        size.height * 0.8403350,
        size.width * 0.04688133,
        size.height * 0.8403600,
        size.width * 0.04683600,
        size.height * 0.8404095);
    path.cubicTo(
        size.width * 0.04623689,
        size.height * 0.8410588,
        size.width * 0.04516178,
        size.height * 0.8422245,
        size.width * 0.04460133,
        size.height * 0.8428315);
    path.close();
    path.moveTo(size.width * 0.04729422, size.height * 0.8571633);
    path.cubicTo(
        size.width * 0.04712978,
        size.height * 0.8570540,
        size.width * 0.04689333,
        size.height * 0.8569875,
        size.width * 0.04663956,
        size.height * 0.8569788);
    path.cubicTo(
        size.width * 0.04531556,
        size.height * 0.8569343,
        size.width * 0.04102844,
        size.height * 0.8567895,
        size.width * 0.03905600,
        size.height * 0.8567228);
    path.cubicTo(
        size.width * 0.03886444,
        size.height * 0.8567163,
        size.width * 0.03868311,
        size.height * 0.8567713,
        size.width * 0.03858711,
        size.height * 0.8568648);
    path.cubicTo(
        size.width * 0.03849156,
        size.height * 0.8569580,
        size.width * 0.03849778,
        size.height * 0.8570740,
        size.width * 0.03860311,
        size.height * 0.8571638);
    path.cubicTo(
        size.width * 0.03969200,
        size.height * 0.8580915,
        size.width * 0.04205822,
        size.height * 0.8601075,
        size.width * 0.04278933,
        size.height * 0.8607300);
    path.cubicTo(
        size.width * 0.04292933,
        size.height * 0.8608495,
        size.width * 0.04315022,
        size.height * 0.8609313,
        size.width * 0.04340044,
        size.height * 0.8609568);
    path.cubicTo(
        size.width * 0.04500933,
        size.height * 0.8611205,
        size.width * 0.05114000,
        size.height * 0.8617443,
        size.width * 0.05365467,
        size.height * 0.8620003);
    path.cubicTo(
        size.width * 0.05381911,
        size.height * 0.8620170,
        size.width * 0.05398489,
        size.height * 0.8619738,
        size.width * 0.05406844,
        size.height * 0.8618923);
    path.cubicTo(
        size.width * 0.05415200,
        size.height * 0.8618108,
        size.width * 0.05413556,
        size.height * 0.8617088,
        size.width * 0.05402756,
        size.height * 0.8616368);
    path.cubicTo(
        size.width * 0.05237644,
        size.height * 0.8605398,
        size.width * 0.04835067,
        size.height * 0.8578650,
        size.width * 0.04729422,
        size.height * 0.8571633);
    path.close();
    path.moveTo(size.width * 0.09500311, size.height * 0.8571633);
    path.cubicTo(
        size.width * 0.09516756,
        size.height * 0.8570540,
        size.width * 0.09540444,
        size.height * 0.8569875,
        size.width * 0.09565822,
        size.height * 0.8569788);
    path.cubicTo(
        size.width * 0.09698222,
        size.height * 0.8569343,
        size.width * 0.1012689,
        size.height * 0.8567895,
        size.width * 0.1032413,
        size.height * 0.8567228);
    path.cubicTo(
        size.width * 0.1034329,
        size.height * 0.8567163,
        size.width * 0.1036142,
        size.height * 0.8567713,
        size.width * 0.1037102,
        size.height * 0.8568648);
    path.cubicTo(
        size.width * 0.1038062,
        size.height * 0.8569580,
        size.width * 0.1038000,
        size.height * 0.8570740,
        size.width * 0.1036942,
        size.height * 0.8571638);
    path.cubicTo(
        size.width * 0.1026053,
        size.height * 0.8580915,
        size.width * 0.1002391,
        size.height * 0.8601075,
        size.width * 0.09950844,
        size.height * 0.8607300);
    path.cubicTo(
        size.width * 0.09936800,
        size.height * 0.8608495,
        size.width * 0.09914711,
        size.height * 0.8609313,
        size.width * 0.09889689,
        size.height * 0.8609568);
    path.cubicTo(
        size.width * 0.09728800,
        size.height * 0.8611205,
        size.width * 0.09115778,
        size.height * 0.8617443,
        size.width * 0.08864267,
        size.height * 0.8620003);
    path.cubicTo(
        size.width * 0.08847822,
        size.height * 0.8620170,
        size.width * 0.08831244,
        size.height * 0.8619738,
        size.width * 0.08822889,
        size.height * 0.8618923);
    path.cubicTo(
        size.width * 0.08814533,
        size.height * 0.8618108,
        size.width * 0.08816178,
        size.height * 0.8617088,
        size.width * 0.08826978,
        size.height * 0.8616368);
    path.cubicTo(
        size.width * 0.08992133,
        size.height * 0.8605398,
        size.width * 0.09394667,
        size.height * 0.8578650,
        size.width * 0.09500311,
        size.height * 0.8571633);
    path.close();
    path.moveTo(size.width * 0.08035867, size.height * 0.8524073);
    path.cubicTo(
        size.width * 0.08044444,
        size.height * 0.8522725,
        size.width * 0.08042889,
        size.height * 0.8521240,
        size.width * 0.08031511,
        size.height * 0.8519960);
    path.cubicTo(
        size.width * 0.07972178,
        size.height * 0.8513288,
        size.width * 0.07780133,
        size.height * 0.8491683,
        size.width * 0.07691733,
        size.height * 0.8481738);
    path.cubicTo(
        size.width * 0.07683200,
        size.height * 0.8480775,
        size.width * 0.07665644,
        size.height * 0.8480165,
        size.width * 0.07646489,
        size.height * 0.8480165);
    path.cubicTo(
        size.width * 0.07627333,
        size.height * 0.8480165,
        size.width * 0.07609778,
        size.height * 0.8480775,
        size.width * 0.07601200,
        size.height * 0.8481738);
    path.cubicTo(
        size.width * 0.07512844,
        size.height * 0.8491683,
        size.width * 0.07320800,
        size.height * 0.8513287,
        size.width * 0.07261467,
        size.height * 0.8519960);
    path.cubicTo(
        size.width * 0.07250089,
        size.height * 0.8521240,
        size.width * 0.07248533,
        size.height * 0.8522725,
        size.width * 0.07257111,
        size.height * 0.8524073);
    path.cubicTo(
        size.width * 0.07312356,
        size.height * 0.8532728,
        size.width * 0.07522844,
        size.height * 0.8565713,
        size.width * 0.07609200,
        size.height * 0.8579243);
    path.cubicTo(
        size.width * 0.07614844,
        size.height * 0.8580128,
        size.width * 0.07629778,
        size.height * 0.8580718,
        size.width * 0.07646489,
        size.height * 0.8580718);
    path.cubicTo(
        size.width * 0.07663200,
        size.height * 0.8580718,
        size.width * 0.07678133,
        size.height * 0.8580128,
        size.width * 0.07683778,
        size.height * 0.8579243);
    path.cubicTo(
        size.width * 0.07770133,
        size.height * 0.8565713,
        size.width * 0.07980622,
        size.height * 0.8532728,
        size.width * 0.08035867,
        size.height * 0.8524073);
    path.close();
    path.moveTo(size.width * 0.06193911, size.height * 0.8524073);
    path.cubicTo(
        size.width * 0.06185289,
        size.height * 0.8522725,
        size.width * 0.06186889,
        size.height * 0.8521240,
        size.width * 0.06198267,
        size.height * 0.8519960);
    path.cubicTo(
        size.width * 0.06257556,
        size.height * 0.8513288,
        size.width * 0.06449600,
        size.height * 0.8491683,
        size.width * 0.06538000,
        size.height * 0.8481738);
    path.cubicTo(
        size.width * 0.06546578,
        size.height * 0.8480775,
        size.width * 0.06564089,
        size.height * 0.8480165,
        size.width * 0.06583244,
        size.height * 0.8480165);
    path.cubicTo(
        size.width * 0.06602444,
        size.height * 0.8480165,
        size.width * 0.06619956,
        size.height * 0.8480775,
        size.width * 0.06628533,
        size.height * 0.8481738);
    path.cubicTo(
        size.width * 0.06716889,
        size.height * 0.8491683,
        size.width * 0.06908978,
        size.height * 0.8513287,
        size.width * 0.06968267,
        size.height * 0.8519960);
    path.cubicTo(
        size.width * 0.06979644,
        size.height * 0.8521240,
        size.width * 0.06981244,
        size.height * 0.8522725,
        size.width * 0.06972622,
        size.height * 0.8524073);
    path.cubicTo(
        size.width * 0.06917378,
        size.height * 0.8532728,
        size.width * 0.06706889,
        size.height * 0.8565713,
        size.width * 0.06620578,
        size.height * 0.8579243);
    path.cubicTo(
        size.width * 0.06614889,
        size.height * 0.8580128,
        size.width * 0.06600000,
        size.height * 0.8580718,
        size.width * 0.06583244,
        size.height * 0.8580718);
    path.cubicTo(
        size.width * 0.06566533,
        size.height * 0.8580718,
        size.width * 0.06551600,
        size.height * 0.8580128,
        size.width * 0.06545956,
        size.height * 0.8579243);
    path.cubicTo(
        size.width * 0.06459644,
        size.height * 0.8565713,
        size.width * 0.06249111,
        size.height * 0.8532728,
        size.width * 0.06193911,
        size.height * 0.8524073);
    path.close();
    path.moveTo(size.width * 0.1133693, size.height * 0.8290065);
    path.cubicTo(
        size.width * 0.1136347,
        size.height * 0.8289113,
        size.width * 0.1139711,
        size.height * 0.8289048,
        size.width * 0.1142471,
        size.height * 0.8289898);
    path.cubicTo(
        size.width * 0.1145231,
        size.height * 0.8290748,
        size.width * 0.1146947,
        size.height * 0.8292378,
        size.width * 0.1146947,
        size.height * 0.8294147);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.8305388,
        size.width * 0.1146947,
        size.height * 0.8324920,
        size.width * 0.1146947,
        size.height * 0.8338203);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.8345953,
        size.width * 0.1158116,
        size.height * 0.8352235,
        size.width * 0.1171893,
        size.height * 0.8352235);
    path.cubicTo(
        size.width * 0.1172524,
        size.height * 0.8352235,
        size.width * 0.1173160,
        size.height * 0.8352235,
        size.width * 0.1173791,
        size.height * 0.8352235);
    path.cubicTo(
        size.width * 0.1187569,
        size.height * 0.8352235,
        size.width * 0.1198738,
        size.height * 0.8345953,
        size.width * 0.1198738,
        size.height * 0.8338203);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.8325055,
        size.width * 0.1198738,
        size.height * 0.8305783,
        size.width * 0.1198738,
        size.height * 0.8294493);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.8292693,
        size.width * 0.1200507,
        size.height * 0.8291042,
        size.width * 0.1203333,
        size.height * 0.8290205);
    path.cubicTo(
        size.width * 0.1206160,
        size.height * 0.8289367,
        size.width * 0.1209582,
        size.height * 0.8289477,
        size.width * 0.1212218,
        size.height * 0.8290492);
    path.cubicTo(
        size.width * 0.1231249,
        size.height * 0.8297820,
        size.width * 0.1265933,
        size.height * 0.8311175,
        size.width * 0.1286267,
        size.height * 0.8319005);
    path.cubicTo(
        size.width * 0.1287916,
        size.height * 0.8319640,
        size.width * 0.1290124,
        size.height * 0.8319543,
        size.width * 0.1291582,
        size.height * 0.8318773);
    path.cubicTo(
        size.width * 0.1293036,
        size.height * 0.8318003,
        size.width * 0.1293338,
        size.height * 0.8316767,
        size.width * 0.1292311,
        size.height * 0.8315805);
    path.cubicTo(
        size.width * 0.1268996,
        size.height * 0.8293945,
        size.width * 0.1211978,
        size.height * 0.8240493,
        size.width * 0.1198111,
        size.height * 0.8227495);
    path.cubicTo(
        size.width * 0.1196102,
        size.height * 0.8225610,
        size.width * 0.1195067,
        size.height * 0.8223445,
        size.width * 0.1195124,
        size.height * 0.8221248);
    path.cubicTo(
        size.width * 0.1195573,
        size.height * 0.8204340,
        size.width * 0.1197582,
        size.height * 0.8128208,
        size.width * 0.1198396,
        size.height * 0.8097450);
    path.cubicTo(
        size.width * 0.1198453,
        size.height * 0.8095160,
        size.width * 0.1200898,
        size.height * 0.8093105,
        size.width * 0.1204636,
        size.height * 0.8092198);
    path.cubicTo(
        size.width * 0.1208373,
        size.height * 0.8091293,
        size.width * 0.1212711,
        size.height * 0.8091705,
        size.width * 0.1215711,
        size.height * 0.8093250);
    path.cubicTo(
        size.width * 0.1254693,
        size.height * 0.8113353,
        size.width * 0.1351204,
        size.height * 0.8163115,
        size.width * 0.1402387,
        size.height * 0.8189508);
    path.cubicTo(
        size.width * 0.1404524,
        size.height * 0.8190608,
        size.width * 0.1407778,
        size.height * 0.8190645,
        size.width * 0.1409991,
        size.height * 0.8189593);
    path.cubicTo(
        size.width * 0.1412204,
        size.height * 0.8188543,
        size.width * 0.1412684,
        size.height * 0.8186730,
        size.width * 0.1411111,
        size.height * 0.8185363);
    path.cubicTo(
        size.width * 0.1359298,
        size.height * 0.8140278,
        size.width * 0.1240258,
        size.height * 0.8036700,
        size.width * 0.1207320,
        size.height * 0.8008040);
    path.cubicTo(
        size.width * 0.1201716,
        size.height * 0.8003165,
        size.width * 0.1198738,
        size.height * 0.7997483,
        size.width * 0.1198738,
        size.height * 0.7991678);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7965845,
        size.width * 0.1198738,
        size.height * 0.7890638,
        size.width * 0.1198738,
        size.height * 0.7858903);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7850953,
        size.width * 0.1187280,
        size.height * 0.7844508,
        size.width * 0.1173142,
        size.height * 0.7844508);
    path.cubicTo(
        size.width * 0.1172942,
        size.height * 0.7844508,
        size.width * 0.1172742,
        size.height * 0.7844508,
        size.width * 0.1172538,
        size.height * 0.7844508);
    path.cubicTo(
        size.width * 0.1158404,
        size.height * 0.7844508,
        size.width * 0.1146947,
        size.height * 0.7850953,
        size.width * 0.1146947,
        size.height * 0.7858903);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.7890545,
        size.width * 0.1146947,
        size.height * 0.7965397,
        size.width * 0.1146947,
        size.height * 0.7991445);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.7997395,
        size.width * 0.1143813,
        size.height * 0.8003212,
        size.width * 0.1137947,
        size.height * 0.8008165);
    path.cubicTo(
        size.width * 0.1103698,
        size.height * 0.8037060,
        size.width * 0.09807556,
        size.height * 0.8140793,
        size.width * 0.09275867,
        size.height * 0.8185657);
    path.cubicTo(
        size.width * 0.09259822,
        size.height * 0.8187012,
        size.width * 0.09264133,
        size.height * 0.8188827,
        size.width * 0.09285956,
        size.height * 0.8189895);
    path.cubicTo(
        size.width * 0.09307822,
        size.height * 0.8190965,
        size.width * 0.09340356,
        size.height * 0.8190955,
        size.width * 0.09362000,
        size.height * 0.8189873);
    path.cubicTo(
        size.width * 0.09889244,
        size.height * 0.8163510,
        size.width * 0.1089560,
        size.height * 0.8113193,
        size.width * 0.1129747,
        size.height * 0.8093098);
    path.cubicTo(
        size.width * 0.1132791,
        size.height * 0.8091578,
        size.width * 0.1137133,
        size.height * 0.8091203,
        size.width * 0.1140844,
        size.height * 0.8092140);
    path.cubicTo(
        size.width * 0.1144560,
        size.height * 0.8093078,
        size.width * 0.1146947,
        size.height * 0.8095155,
        size.width * 0.1146947,
        size.height * 0.8097443);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.8128195,
        size.width * 0.1146947,
        size.height * 0.8204333,
        size.width * 0.1146947,
        size.height * 0.8221245);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.8223445,
        size.width * 0.1145853,
        size.height * 0.8225600,
        size.width * 0.1143791,
        size.height * 0.8227468);
    path.cubicTo(
        size.width * 0.1129400,
        size.height * 0.8240510,
        size.width * 0.1069644,
        size.height * 0.8294663,
        size.width * 0.1045831,
        size.height * 0.8316248);
    path.cubicTo(
        size.width * 0.1044782,
        size.height * 0.8317195,
        size.width * 0.1045044,
        size.height * 0.8318425,
        size.width * 0.1046453,
        size.height * 0.8319208);
    path.cubicTo(
        size.width * 0.1047867,
        size.height * 0.8319993,
        size.width * 0.1050053,
        size.height * 0.8320123,
        size.width * 0.1051724,
        size.height * 0.8319523);
    path.cubicTo(
        size.width * 0.1073698,
        size.height * 0.8311625,
        size.width * 0.1113147,
        size.height * 0.8297448,
        size.width * 0.1133693,
        size.height * 0.8290065);
    path.close();
    path.moveTo(size.width * 0.1342382, size.height * 0.8026003);
    path.cubicTo(
        size.width * 0.1343289,
        size.height * 0.8028828,
        size.width * 0.1346209,
        size.height * 0.8031318,
        size.width * 0.1350467,
        size.height * 0.8032900);
    path.cubicTo(
        size.width * 0.1372658,
        size.height * 0.8041140,
        size.width * 0.1444520,
        size.height * 0.8067830,
        size.width * 0.1477591,
        size.height * 0.8080113);
    path.cubicTo(
        size.width * 0.1480796,
        size.height * 0.8081303,
        size.width * 0.1484924,
        size.height * 0.8081373,
        size.width * 0.1488253,
        size.height * 0.8080293);
    path.cubicTo(
        size.width * 0.1491582,
        size.height * 0.8079210,
        size.width * 0.1493542,
        size.height * 0.8077165,
        size.width * 0.1493311,
        size.height * 0.8075005);
    path.cubicTo(
        size.width * 0.1490938,
        size.height * 0.8052755,
        size.width * 0.1485778,
        size.height * 0.8004405,
        size.width * 0.1484182,
        size.height * 0.7989473);
    path.cubicTo(
        size.width * 0.1483880,
        size.height * 0.7986608,
        size.width * 0.1481502,
        size.height * 0.7983940,
        size.width * 0.1477613,
        size.height * 0.7982085);
    path.cubicTo(
        size.width * 0.1452591,
        size.height * 0.7970170,
        size.width * 0.1357249,
        size.height * 0.7924765,
        size.width * 0.1318138,
        size.height * 0.7906138);
    path.cubicTo(
        size.width * 0.1315582,
        size.height * 0.7904920,
        size.width * 0.1311938,
        size.height * 0.7904735,
        size.width * 0.1309031,
        size.height * 0.7905680);
    path.cubicTo(
        size.width * 0.1306129,
        size.height * 0.7906623,
        size.width * 0.1304591,
        size.height * 0.7908490,
        size.width * 0.1305187,
        size.height * 0.7910345);
    path.cubicTo(
        size.width * 0.1314307,
        size.height * 0.7938710,
        size.width * 0.1336547,
        size.height * 0.8007858,
        size.width * 0.1342382,
        size.height * 0.8026003);
    path.close();
    path.moveTo(size.width * 0.1003302, size.height * 0.8026003);
    path.cubicTo(
        size.width * 0.1002396,
        size.height * 0.8028828,
        size.width * 0.09994711,
        size.height * 0.8031318,
        size.width * 0.09952178,
        size.height * 0.8032900);
    path.cubicTo(
        size.width * 0.09730222,
        size.height * 0.8041140,
        size.width * 0.09011600,
        size.height * 0.8067830,
        size.width * 0.08680933,
        size.height * 0.8080113);
    path.cubicTo(
        size.width * 0.08648844,
        size.height * 0.8081303,
        size.width * 0.08607556,
        size.height * 0.8081373,
        size.width * 0.08574267,
        size.height * 0.8080293);
    path.cubicTo(
        size.width * 0.08540978,
        size.height * 0.8079210,
        size.width * 0.08521422,
        size.height * 0.8077165,
        size.width * 0.08523733,
        size.height * 0.8075005);
    path.cubicTo(
        size.width * 0.08547467,
        size.height * 0.8052755,
        size.width * 0.08599067,
        size.height * 0.8004405,
        size.width * 0.08614978,
        size.height * 0.7989473);
    path.cubicTo(
        size.width * 0.08618044,
        size.height * 0.7986608,
        size.width * 0.08641778,
        size.height * 0.7983940,
        size.width * 0.08680711,
        size.height * 0.7982085);
    path.cubicTo(
        size.width * 0.08930889,
        size.height * 0.7970170,
        size.width * 0.09884311,
        size.height * 0.7924765,
        size.width * 0.1027542,
        size.height * 0.7906138);
    path.cubicTo(
        size.width * 0.1030102,
        size.height * 0.7904920,
        size.width * 0.1033747,
        size.height * 0.7904735,
        size.width * 0.1036649,
        size.height * 0.7905680);
    path.cubicTo(
        size.width * 0.1039556,
        size.height * 0.7906623,
        size.width * 0.1041093,
        size.height * 0.7908490,
        size.width * 0.1040493,
        size.height * 0.7910345);
    path.cubicTo(
        size.width * 0.1031373,
        size.height * 0.7938710,
        size.width * 0.1009138,
        size.height * 0.8007858,
        size.width * 0.1003302,
        size.height * 0.8026003);
    path.close();
    path.moveTo(size.width * 0.2133987, size.height * 0.7990638);
    path.cubicTo(
        size.width * 0.2133844,
        size.height * 0.7988870,
        size.width * 0.2135431,
        size.height * 0.7987197,
        size.width * 0.2138120,
        size.height * 0.7986277);
    path.cubicTo(
        size.width * 0.2140809,
        size.height * 0.7985360,
        size.width * 0.2144173,
        size.height * 0.7985337,
        size.width * 0.2146902,
        size.height * 0.7986222);
    path.cubicTo(
        size.width * 0.2164204,
        size.height * 0.7991843,
        size.width * 0.2194280,
        size.height * 0.8001610,
        size.width * 0.2214729,
        size.height * 0.8008250);
    path.cubicTo(
        size.width * 0.2226658,
        size.height * 0.8012125,
        size.width * 0.2241916,
        size.height * 0.8009825,
        size.width * 0.2248804,
        size.height * 0.8003115);
    path.cubicTo(
        size.width * 0.2249120,
        size.height * 0.8002807,
        size.width * 0.2249440,
        size.height * 0.8002498,
        size.width * 0.2249756,
        size.height * 0.8002190);
    path.cubicTo(
        size.width * 0.2256644,
        size.height * 0.7995478,
        size.width * 0.2252556,
        size.height * 0.7986897,
        size.width * 0.2240622,
        size.height * 0.7983023);
    path.cubicTo(
        size.width * 0.2220378,
        size.height * 0.7976448,
        size.width * 0.2190707,
        size.height * 0.7966810,
        size.width * 0.2173324,
        size.height * 0.7961165);
    path.cubicTo(
        size.width * 0.2170556,
        size.height * 0.7960268,
        size.width * 0.2168902,
        size.height * 0.7958580,
        size.width * 0.2169022,
        size.height * 0.7956783);
    path.cubicTo(
        size.width * 0.2169147,
        size.height * 0.7954988,
        size.width * 0.2171027,
        size.height * 0.7953375,
        size.width * 0.2173907,
        size.height * 0.7952600);
    path.cubicTo(
        size.width * 0.2194707,
        size.height * 0.7946993,
        size.width * 0.2232609,
        size.height * 0.7936773,
        size.width * 0.2254831,
        size.height * 0.7930783);
    path.cubicTo(
        size.width * 0.2256631,
        size.height * 0.7930298,
        size.width * 0.2257587,
        size.height * 0.7929173,
        size.width * 0.2257129,
        size.height * 0.7928078);
    path.cubicTo(
        size.width * 0.2256671,
        size.height * 0.7926985,
        size.width * 0.2254920,
        size.height * 0.7926220,
        size.width * 0.2252924,
        size.height * 0.7926238);
    path.cubicTo(
        size.width * 0.2207609,
        size.height * 0.7926668,
        size.width * 0.2096804,
        size.height * 0.7927715,
        size.width * 0.2069862,
        size.height * 0.7927970);
    path.cubicTo(
        size.width * 0.2065956,
        size.height * 0.7928008,
        size.width * 0.2062107,
        size.height * 0.7927430,
        size.width * 0.2058751,
        size.height * 0.7926303);
    path.cubicTo(
        size.width * 0.2032942,
        size.height * 0.7917630,
        size.width * 0.1916733,
        size.height * 0.7878585,
        size.width * 0.1869787,
        size.height * 0.7862810);
    path.cubicTo(
        size.width * 0.1866293,
        size.height * 0.7861638,
        size.width * 0.1864347,
        size.height * 0.7859418,
        size.width * 0.1864822,
        size.height * 0.7857145);
    path.cubicTo(
        size.width * 0.1865298,
        size.height * 0.7854870,
        size.width * 0.1868098,
        size.height * 0.7852965,
        size.width * 0.1871978,
        size.height * 0.7852278);
    path.cubicTo(
        size.width * 0.1922418,
        size.height * 0.7843338,
        size.width * 0.2047289,
        size.height * 0.7821205,
        size.width * 0.2113516,
        size.height * 0.7809468);
    path.cubicTo(
        size.width * 0.2116276,
        size.height * 0.7808978,
        size.width * 0.2117964,
        size.height * 0.7807410,
        size.width * 0.2117449,
        size.height * 0.7805805);
    path.cubicTo(
        size.width * 0.2116938,
        size.height * 0.7804203,
        size.width * 0.2114387,
        size.height * 0.7803063,
        size.width * 0.2111498,
        size.height * 0.7803145);
    path.cubicTo(
        size.width * 0.2016173,
        size.height * 0.7805843,
        size.width * 0.1797191,
        size.height * 0.7812043,
        size.width * 0.1736596,
        size.height * 0.7813758);
    path.cubicTo(
        size.width * 0.1726289,
        size.height * 0.7814050,
        size.width * 0.1716049,
        size.height * 0.7812663,
        size.width * 0.1707111,
        size.height * 0.7809758);
    path.cubicTo(
        size.width * 0.1667338,
        size.height * 0.7796843,
        size.width * 0.1551551,
        size.height * 0.7759240,
        size.width * 0.1502693,
        size.height * 0.7743373);
    path.cubicTo(
        size.width * 0.1490449,
        size.height * 0.7739395,
        size.width * 0.1474800,
        size.height * 0.7741755,
        size.width * 0.1467733,
        size.height * 0.7748640);
    path.cubicTo(
        size.width * 0.1467631,
        size.height * 0.7748740,
        size.width * 0.1467529,
        size.height * 0.7748838,
        size.width * 0.1467431,
        size.height * 0.7748935);
    path.cubicTo(
        size.width * 0.1460360,
        size.height * 0.7755820,
        size.width * 0.1464556,
        size.height * 0.7764625,
        size.width * 0.1476796,
        size.height * 0.7768600);
    path.cubicTo(
        size.width * 0.1525511,
        size.height * 0.7784420,
        size.width * 0.1640756,
        size.height * 0.7821848,
        size.width * 0.1680858,
        size.height * 0.7834873);
    path.cubicTo(
        size.width * 0.1690022,
        size.height * 0.7837848,
        size.width * 0.1697413,
        size.height * 0.7842280,
        size.width * 0.1702102,
        size.height * 0.7847615);
    path.cubicTo(
        size.width * 0.1729467,
        size.height * 0.7878748,
        size.width * 0.1827702,
        size.height * 0.7990503,
        size.width * 0.1870187,
        size.height * 0.8038835);
    path.cubicTo(
        size.width * 0.1871471,
        size.height * 0.8040295,
        size.width * 0.1874480,
        size.height * 0.8040993,
        size.width * 0.1877218,
        size.height * 0.8040463);
    path.cubicTo(
        size.width * 0.1879956,
        size.height * 0.8039933,
        size.width * 0.1881569,
        size.height * 0.8038343,
        size.width * 0.1880982,
        size.height * 0.8036748);
    path.cubicTo(
        size.width * 0.1866760,
        size.height * 0.7997883,
        size.width * 0.1839609,
        size.height * 0.7923700,
        size.width * 0.1828764,
        size.height * 0.7894075);
    path.cubicTo(
        size.width * 0.1827942,
        size.height * 0.7891835,
        size.width * 0.1829538,
        size.height * 0.7889530,
        size.width * 0.1832840,
        size.height * 0.7888190);
    path.cubicTo(
        size.width * 0.1836138,
        size.height * 0.7886853,
        size.width * 0.1840529,
        size.height * 0.7886725,
        size.width * 0.1844053,
        size.height * 0.7887870);
    path.cubicTo(
        size.width * 0.1891400,
        size.height * 0.7903245,
        size.width * 0.2008622,
        size.height * 0.7941315,
        size.width * 0.2034658,
        size.height * 0.7949773);
    path.cubicTo(
        size.width * 0.2038044,
        size.height * 0.7950873,
        size.width * 0.2040818,
        size.height * 0.7952480,
        size.width * 0.2042662,
        size.height * 0.7954420);
    path.cubicTo(
        size.width * 0.2055547,
        size.height * 0.7967953,
        size.width * 0.2109044,
        size.height * 0.8024138,
        size.width * 0.2130364,
        size.height * 0.8046530);
    path.cubicTo(
        size.width * 0.2131302,
        size.height * 0.8047515,
        size.width * 0.2133324,
        size.height * 0.8048003,
        size.width * 0.2135236,
        size.height * 0.8047708);
    path.cubicTo(
        size.width * 0.2137151,
        size.height * 0.8047410,
        size.width * 0.2138444,
        size.height * 0.8046410,
        size.width * 0.2138356,
        size.height * 0.8045295);
    path.cubicTo(
        size.width * 0.2137182,
        size.height * 0.8030643,
        size.width * 0.2135080,
        size.height * 0.8004338,
        size.width * 0.2133987,
        size.height * 0.7990638);
    path.close();
    path.moveTo(size.width * 0.01725467, size.height * 0.7952495);
    path.cubicTo(
        size.width * 0.01753422,
        size.height * 0.7953313,
        size.width * 0.01771200,
        size.height * 0.7954918,
        size.width * 0.01771911,
        size.height * 0.7956688);
    path.cubicTo(
        size.width * 0.01772622,
        size.height * 0.7958458,
        size.width * 0.01756133,
        size.height * 0.7960110,
        size.width * 0.01728889,
        size.height * 0.7960995);
    path.cubicTo(
        size.width * 0.01555822,
        size.height * 0.7966615,
        size.width * 0.01255111,
        size.height * 0.7976380,
        size.width * 0.01050578,
        size.height * 0.7983023);
    path.cubicTo(
        size.width * 0.009312889,
        size.height * 0.7986898,
        size.width * 0.008904000,
        size.height * 0.7995478,
        size.width * 0.009592889,
        size.height * 0.8002190);
    path.cubicTo(
        size.width * 0.009624444,
        size.height * 0.8002498,
        size.width * 0.009656000,
        size.height * 0.8002807,
        size.width * 0.009687556,
        size.height * 0.8003115);
    path.cubicTo(
        size.width * 0.01037644,
        size.height * 0.8009825,
        size.width * 0.01190222,
        size.height * 0.8012125,
        size.width * 0.01309556,
        size.height * 0.8008250);
    path.cubicTo(
        size.width * 0.01512000,
        size.height * 0.8001678,
        size.width * 0.01808711,
        size.height * 0.7992040,
        size.width * 0.01982533,
        size.height * 0.7986395);
    path.cubicTo(
        size.width * 0.02010222,
        size.height * 0.7985495,
        size.width * 0.02044489,
        size.height * 0.7985533,
        size.width * 0.02071511,
        size.height * 0.7986490);
    path.cubicTo(
        size.width * 0.02098578,
        size.height * 0.7987448,
        size.width * 0.02113956,
        size.height * 0.7989170,
        size.width * 0.02111511,
        size.height * 0.7990963);
    path.cubicTo(
        size.width * 0.02093867,
        size.height * 0.8003898,
        size.width * 0.02061644,
        size.height * 0.8027470,
        size.width * 0.02042800,
        size.height * 0.8041293);
    path.cubicTo(
        size.width * 0.02041244,
        size.height * 0.8042413,
        size.width * 0.02053778,
        size.height * 0.8043440,
        size.width * 0.02072933,
        size.height * 0.8043763);
    path.cubicTo(
        size.width * 0.02092044,
        size.height * 0.8044085,
        size.width * 0.02112578,
        size.height * 0.8043617,
        size.width * 0.02122267,
        size.height * 0.8042635);
    path.cubicTo(
        size.width * 0.02342267,
        size.height * 0.8020348,
        size.width * 0.02880133,
        size.height * 0.7965845,
        size.width * 0.03010933,
        size.height * 0.7952593);
    path.cubicTo(
        size.width * 0.03029867,
        size.height * 0.7950670,
        size.width * 0.03058000,
        size.height * 0.7949085,
        size.width * 0.03092133,
        size.height * 0.7948015);
    path.cubicTo(
        size.width * 0.03354711,
        size.height * 0.7939778,
        size.width * 0.04536889,
        size.height * 0.7902690,
        size.width * 0.05014489,
        size.height * 0.7887708);
    path.cubicTo(
        size.width * 0.05050044,
        size.height * 0.7886593,
        size.width * 0.05093911,
        size.height * 0.7886755,
        size.width * 0.05126533,
        size.height * 0.7888123);
    path.cubicTo(
        size.width * 0.05159200,
        size.height * 0.7889490,
        size.width * 0.05174533,
        size.height * 0.7891808,
        size.width * 0.05165689,
        size.height * 0.7894043);
    path.cubicTo(
        size.width * 0.05051156,
        size.height * 0.7923083,
        size.width * 0.04767556,
        size.height * 0.7994978,
        size.width * 0.04617156,
        size.height * 0.8033110);
    path.cubicTo(
        size.width * 0.04610844,
        size.height * 0.8034700,
        size.width * 0.04626578,
        size.height * 0.8036305,
        size.width * 0.04653822,
        size.height * 0.8036857);
    path.cubicTo(
        size.width * 0.04681067,
        size.height * 0.8037407,
        size.width * 0.04711378,
        size.height * 0.8036735,
        size.width * 0.04724578,
        size.height * 0.8035285);
    path.cubicTo(
        size.width * 0.05159644,
        size.height * 0.7987503,
        size.width * 0.06159111,
        size.height * 0.7877728,
        size.width * 0.06435644,
        size.height * 0.7847350);
    path.cubicTo(
        size.width * 0.06482711,
        size.height * 0.7842183,
        size.width * 0.06555289,
        size.height * 0.7837890,
        size.width * 0.06644667,
        size.height * 0.7834988);
    path.cubicTo(
        size.width * 0.07042400,
        size.height * 0.7822070,
        size.width * 0.08200267,
        size.height * 0.7784467,
        size.width * 0.08688844,
        size.height * 0.7768600);
    path.cubicTo(
        size.width * 0.08811289,
        size.height * 0.7764625,
        size.width * 0.08853200,
        size.height * 0.7755820,
        size.width * 0.08782533,
        size.height * 0.7748935);
    path.cubicTo(
        size.width * 0.08781511,
        size.height * 0.7748837,
        size.width * 0.08780533,
        size.height * 0.7748740,
        size.width * 0.08779511,
        size.height * 0.7748640);
    path.cubicTo(
        size.width * 0.08708844,
        size.height * 0.7741755,
        size.width * 0.08552311,
        size.height * 0.7739395,
        size.width * 0.08429911,
        size.height * 0.7743373);
    path.cubicTo(
        size.width * 0.07942756,
        size.height * 0.7759193,
        size.width * 0.06790311,
        size.height * 0.7796617,
        size.width * 0.06389289,
        size.height * 0.7809643);
    path.cubicTo(
        size.width * 0.06297689,
        size.height * 0.7812617,
        size.width * 0.06192444,
        size.height * 0.7814000,
        size.width * 0.06086889,
        size.height * 0.7813618);
    path.cubicTo(
        size.width * 0.05470756,
        size.height * 0.7811383,
        size.width * 0.03258978,
        size.height * 0.7803360,
        size.width * 0.02302400,
        size.height * 0.7799890);
    path.cubicTo(
        size.width * 0.02273511,
        size.height * 0.7799785,
        size.width * 0.02247733,
        size.height * 0.7800903,
        size.width * 0.02242222,
        size.height * 0.7802500);
    path.cubicTo(
        size.width * 0.02236667,
        size.height * 0.7804100,
        size.width * 0.02253111,
        size.height * 0.7805680,
        size.width * 0.02280578,
        size.height * 0.7806192);
    path.cubicTo(
        size.width * 0.02950044,
        size.height * 0.7818695,
        size.width * 0.04227956,
        size.height * 0.7842562,
        size.width * 0.04738222,
        size.height * 0.7852090);
    path.cubicTo(
        size.width * 0.04776844,
        size.height * 0.7852813,
        size.width * 0.04804356,
        size.height * 0.7854742,
        size.width * 0.04808489,
        size.height * 0.7857017);
    path.cubicTo(
        size.width * 0.04812622,
        size.height * 0.7859295,
        size.width * 0.04792578,
        size.height * 0.7861497,
        size.width * 0.04757333,
        size.height * 0.7862642);
    path.cubicTo(
        size.width * 0.04283911,
        size.height * 0.7878017,
        size.width * 0.03111689,
        size.height * 0.7916087,
        size.width * 0.02851289,
        size.height * 0.7924543);
    path.cubicTo(
        size.width * 0.02817422,
        size.height * 0.7925642,
        size.width * 0.02778756,
        size.height * 0.7926187,
        size.width * 0.02739689,
        size.height * 0.7926118);
    path.cubicTo(
        size.width * 0.02466933,
        size.height * 0.7925628,
        size.width * 0.01334444,
        size.height * 0.7923595,
        size.width * 0.008830667,
        size.height * 0.7922785);
    path.cubicTo(
        size.width * 0.008632000,
        size.height * 0.7922750,
        size.width * 0.008456000,
        size.height * 0.7923490,
        size.width * 0.008405778,
        size.height * 0.7924570);
    path.cubicTo(
        size.width * 0.008355556,
        size.height * 0.7925650,
        size.width * 0.008445333,
        size.height * 0.7926780,
        size.width * 0.008621333,
        size.height * 0.7927295);
    path.cubicTo(
        size.width * 0.01093556,
        size.height * 0.7934050,
        size.width * 0.01509067,
        size.height * 0.7946180,
        size.width * 0.01725467,
        size.height * 0.7952495);
    path.close();
    path.moveTo(size.width * 0.06834400, size.height * 0.7922125);
    path.cubicTo(
        size.width * 0.06795467,
        size.height * 0.7923980,
        size.width * 0.06771733,
        size.height * 0.7926648,
        size.width * 0.06768667,
        size.height * 0.7929512);
    path.cubicTo(
        size.width * 0.06752756,
        size.height * 0.7944442,
        size.width * 0.06701156,
        size.height * 0.7992795,
        size.width * 0.06677378,
        size.height * 0.8015045);
    path.cubicTo(
        size.width * 0.06675111,
        size.height * 0.8017202,
        size.width * 0.06694667,
        size.height * 0.8019250,
        size.width * 0.06727956,
        size.height * 0.8020330);
    path.cubicTo(
        size.width * 0.06761244,
        size.height * 0.8021413,
        size.width * 0.06802533,
        size.height * 0.8021343,
        size.width * 0.06834622,
        size.height * 0.8020150);
    path.cubicTo(
        size.width * 0.07165289,
        size.height * 0.8007870,
        size.width * 0.07883911,
        size.height * 0.7981180,
        size.width * 0.08105867,
        size.height * 0.7972937);
    path.cubicTo(
        size.width * 0.08148400,
        size.height * 0.7971357,
        size.width * 0.08177644,
        size.height * 0.7968865,
        size.width * 0.08186711,
        size.height * 0.7966043);
    path.cubicTo(
        size.width * 0.08245067,
        size.height * 0.7947898,
        size.width * 0.08467422,
        size.height * 0.7878750,
        size.width * 0.08558622,
        size.height * 0.7850385);
    path.cubicTo(
        size.width * 0.08564622,
        size.height * 0.7848527,
        size.width * 0.08549200,
        size.height * 0.7846663,
        size.width * 0.08520178,
        size.height * 0.7845717);
    path.cubicTo(
        size.width * 0.08491156,
        size.height * 0.7844775,
        size.width * 0.08454711,
        size.height * 0.7844960,
        size.width * 0.08429111,
        size.height * 0.7846178);
    path.cubicTo(
        size.width * 0.08038000,
        size.height * 0.7864805,
        size.width * 0.07084578,
        size.height * 0.7910210,
        size.width * 0.06834400,
        size.height * 0.7922125);
    path.close();
    path.moveTo(size.width * 0.1662244, size.height * 0.7922125);
    path.cubicTo(
        size.width * 0.1666133,
        size.height * 0.7923980,
        size.width * 0.1668511,
        size.height * 0.7926648,
        size.width * 0.1668818,
        size.height * 0.7929512);
    path.cubicTo(
        size.width * 0.1670409,
        size.height * 0.7944442,
        size.width * 0.1675569,
        size.height * 0.7992795,
        size.width * 0.1677942,
        size.height * 0.8015045);
    path.cubicTo(
        size.width * 0.1678173,
        size.height * 0.8017202,
        size.width * 0.1676218,
        size.height * 0.8019250,
        size.width * 0.1672889,
        size.height * 0.8020330);
    path.cubicTo(
        size.width * 0.1669560,
        size.height * 0.8021413,
        size.width * 0.1665431,
        size.height * 0.8021343,
        size.width * 0.1662222,
        size.height * 0.8020150);
    path.cubicTo(
        size.width * 0.1629151,
        size.height * 0.8007870,
        size.width * 0.1557289,
        size.height * 0.7981180,
        size.width * 0.1535098,
        size.height * 0.7972937);
    path.cubicTo(
        size.width * 0.1530840,
        size.height * 0.7971357,
        size.width * 0.1527920,
        size.height * 0.7968865,
        size.width * 0.1527013,
        size.height * 0.7966043);
    path.cubicTo(
        size.width * 0.1521178,
        size.height * 0.7947898,
        size.width * 0.1498942,
        size.height * 0.7878750,
        size.width * 0.1489818,
        size.height * 0.7850385);
    path.cubicTo(
        size.width * 0.1489222,
        size.height * 0.7848527,
        size.width * 0.1490760,
        size.height * 0.7846663,
        size.width * 0.1493667,
        size.height * 0.7845717);
    path.cubicTo(
        size.width * 0.1496569,
        size.height * 0.7844775,
        size.width * 0.1500213,
        size.height * 0.7844960,
        size.width * 0.1502773,
        size.height * 0.7846178);
    path.cubicTo(
        size.width * 0.1541880,
        size.height * 0.7864805,
        size.width * 0.1637222,
        size.height * 0.7910210,
        size.width * 0.1662244,
        size.height * 0.7922125);
    path.close();
    path.moveTo(size.width * 0.1172840, size.height * 0.7478277);
    path.cubicTo(
        size.width * 0.1344342,
        size.height * 0.7478277,
        size.width * 0.1483582,
        size.height * 0.7556597,
        size.width * 0.1483582,
        size.height * 0.7653067);
    path.cubicTo(
        size.width * 0.1483582,
        size.height * 0.7749540,
        size.width * 0.1344342,
        size.height * 0.7827860,
        size.width * 0.1172840,
        size.height * 0.7827860);
    path.cubicTo(
        size.width * 0.1001338,
        size.height * 0.7827860,
        size.width * 0.08621022,
        size.height * 0.7749540,
        size.width * 0.08621022,
        size.height * 0.7653067);
    path.cubicTo(
        size.width * 0.08621022,
        size.height * 0.7556597,
        size.width * 0.1001338,
        size.height * 0.7478277,
        size.width * 0.1172840,
        size.height * 0.7478277);
    path.close();
    path.moveTo(size.width * 0.05139022, size.height * 0.7756947);
    path.cubicTo(
        size.width * 0.05091022,
        size.height * 0.7757917,
        size.width * 0.05038044,
        size.height * 0.7757740,
        size.width * 0.04992444,
        size.height * 0.7756455);
    path.cubicTo(
        size.width * 0.04754578,
        size.height * 0.7749765,
        size.width * 0.03984356,
        size.height * 0.7728102,
        size.width * 0.03629911,
        size.height * 0.7718135);
    path.cubicTo(
        size.width * 0.03595556,
        size.height * 0.7717167,
        size.width * 0.03573822,
        size.height * 0.7715192,
        size.width * 0.03573822,
        size.height * 0.7713030);
    path.cubicTo(
        size.width * 0.03573822,
        size.height * 0.7710867,
        size.width * 0.03595556,
        size.height * 0.7708890,
        size.width * 0.03629911,
        size.height * 0.7707925);
    path.cubicTo(
        size.width * 0.03984356,
        size.height * 0.7697955,
        size.width * 0.04754578,
        size.height * 0.7676292,
        size.width * 0.04992444,
        size.height * 0.7669602);
    path.cubicTo(
        size.width * 0.05038044,
        size.height * 0.7668320,
        size.width * 0.05091022,
        size.height * 0.7668142,
        size.width * 0.05139022,
        size.height * 0.7669112);
    path.cubicTo(
        size.width * 0.05447556,
        size.height * 0.7675342,
        size.width * 0.06623333,
        size.height * 0.7699085,
        size.width * 0.07105644,
        size.height * 0.7708822);
    path.cubicTo(
        size.width * 0.07137200,
        size.height * 0.7709460,
        size.width * 0.07158267,
        size.height * 0.7711142,
        size.width * 0.07158267,
        size.height * 0.7713030);
    path.cubicTo(
        size.width * 0.07158267,
        size.height * 0.7714915,
        size.width * 0.07137200,
        size.height * 0.7716597,
        size.width * 0.07105644,
        size.height * 0.7717235);
    path.cubicTo(
        size.width * 0.06623333,
        size.height * 0.7726975,
        size.width * 0.05447556,
        size.height * 0.7750717,
        size.width * 0.05139022,
        size.height * 0.7756947);
    path.close();
    path.moveTo(size.width * 0.1831782, size.height * 0.7756947);
    path.cubicTo(
        size.width * 0.1836582,
        size.height * 0.7757917,
        size.width * 0.1841880,
        size.height * 0.7757740,
        size.width * 0.1846440,
        size.height * 0.7756455);
    path.cubicTo(
        size.width * 0.1870227,
        size.height * 0.7749765,
        size.width * 0.1947249,
        size.height * 0.7728102,
        size.width * 0.1982693,
        size.height * 0.7718135);
    path.cubicTo(
        size.width * 0.1986129,
        size.height * 0.7717167,
        size.width * 0.1988302,
        size.height * 0.7715192,
        size.width * 0.1988302,
        size.height * 0.7713030);
    path.cubicTo(
        size.width * 0.1988302,
        size.height * 0.7710867,
        size.width * 0.1986129,
        size.height * 0.7708890,
        size.width * 0.1982693,
        size.height * 0.7707925);
    path.cubicTo(
        size.width * 0.1947249,
        size.height * 0.7697955,
        size.width * 0.1870227,
        size.height * 0.7676292,
        size.width * 0.1846440,
        size.height * 0.7669602);
    path.cubicTo(
        size.width * 0.1841880,
        size.height * 0.7668320,
        size.width * 0.1836582,
        size.height * 0.7668142,
        size.width * 0.1831782,
        size.height * 0.7669112);
    path.cubicTo(
        size.width * 0.1800929,
        size.height * 0.7675342,
        size.width * 0.1683347,
        size.height * 0.7699085,
        size.width * 0.1635116,
        size.height * 0.7708822);
    path.cubicTo(
        size.width * 0.1631960,
        size.height * 0.7709460,
        size.width * 0.1629858,
        size.height * 0.7711142,
        size.width * 0.1629858,
        size.height * 0.7713030);
    path.cubicTo(
        size.width * 0.1629858,
        size.height * 0.7714915,
        size.width * 0.1631960,
        size.height * 0.7716597,
        size.width * 0.1635116,
        size.height * 0.7717235);
    path.cubicTo(
        size.width * 0.1683347,
        size.height * 0.7726975,
        size.width * 0.1800929,
        size.height * 0.7750717,
        size.width * 0.1831782,
        size.height * 0.7756947);
    path.close();
    path.moveTo(size.width * 0.05139022, size.height * 0.7549190);
    path.cubicTo(
        size.width * 0.05091022,
        size.height * 0.7548220,
        size.width * 0.05038044,
        size.height * 0.7548397,
        size.width * 0.04992444,
        size.height * 0.7549682);
    path.cubicTo(
        size.width * 0.04754578,
        size.height * 0.7556372,
        size.width * 0.03984356,
        size.height * 0.7578035,
        size.width * 0.03629911,
        size.height * 0.7588002);
    path.cubicTo(
        size.width * 0.03595556,
        size.height * 0.7588970,
        size.width * 0.03573822,
        size.height * 0.7590945,
        size.width * 0.03573822,
        size.height * 0.7593107);
    path.cubicTo(
        size.width * 0.03573822,
        size.height * 0.7595270,
        size.width * 0.03595556,
        size.height * 0.7597247,
        size.width * 0.03629911,
        size.height * 0.7598212);
    path.cubicTo(
        size.width * 0.03984356,
        size.height * 0.7608182,
        size.width * 0.04754578,
        size.height * 0.7629845,
        size.width * 0.04992444,
        size.height * 0.7636535);
    path.cubicTo(
        size.width * 0.05038044,
        size.height * 0.7637817,
        size.width * 0.05091022,
        size.height * 0.7637995,
        size.width * 0.05139022,
        size.height * 0.7637025);
    path.cubicTo(
        size.width * 0.05447556,
        size.height * 0.7630795,
        size.width * 0.06623333,
        size.height * 0.7607052,
        size.width * 0.07105644,
        size.height * 0.7597315);
    path.cubicTo(
        size.width * 0.07137200,
        size.height * 0.7596677,
        size.width * 0.07158267,
        size.height * 0.7594995,
        size.width * 0.07158267,
        size.height * 0.7593107);
    path.cubicTo(
        size.width * 0.07158267,
        size.height * 0.7591222,
        size.width * 0.07137200,
        size.height * 0.7589540,
        size.width * 0.07105644,
        size.height * 0.7588902);
    path.cubicTo(
        size.width * 0.06623333,
        size.height * 0.7579162,
        size.width * 0.05447556,
        size.height * 0.7555420,
        size.width * 0.05139022,
        size.height * 0.7549190);
    path.close();
    path.moveTo(size.width * 0.1831782, size.height * 0.7549190);
    path.cubicTo(
        size.width * 0.1836582,
        size.height * 0.7548220,
        size.width * 0.1841880,
        size.height * 0.7548397,
        size.width * 0.1846440,
        size.height * 0.7549682);
    path.cubicTo(
        size.width * 0.1870227,
        size.height * 0.7556372,
        size.width * 0.1947249,
        size.height * 0.7578035,
        size.width * 0.1982693,
        size.height * 0.7588002);
    path.cubicTo(
        size.width * 0.1986129,
        size.height * 0.7588970,
        size.width * 0.1988302,
        size.height * 0.7590945,
        size.width * 0.1988302,
        size.height * 0.7593107);
    path.cubicTo(
        size.width * 0.1988302,
        size.height * 0.7595270,
        size.width * 0.1986129,
        size.height * 0.7597247,
        size.width * 0.1982693,
        size.height * 0.7598212);
    path.cubicTo(
        size.width * 0.1947249,
        size.height * 0.7608182,
        size.width * 0.1870227,
        size.height * 0.7629845,
        size.width * 0.1846440,
        size.height * 0.7636535);
    path.cubicTo(
        size.width * 0.1841880,
        size.height * 0.7637817,
        size.width * 0.1836582,
        size.height * 0.7637995,
        size.width * 0.1831782,
        size.height * 0.7637025);
    path.cubicTo(
        size.width * 0.1800929,
        size.height * 0.7630795,
        size.width * 0.1683347,
        size.height * 0.7607052,
        size.width * 0.1635116,
        size.height * 0.7597315);
    path.cubicTo(
        size.width * 0.1631960,
        size.height * 0.7596677,
        size.width * 0.1629858,
        size.height * 0.7594995,
        size.width * 0.1629858,
        size.height * 0.7593107);
    path.cubicTo(
        size.width * 0.1629858,
        size.height * 0.7591222,
        size.width * 0.1631960,
        size.height * 0.7589540,
        size.width * 0.1635116,
        size.height * 0.7588902);
    path.cubicTo(
        size.width * 0.1683347,
        size.height * 0.7579162,
        size.width * 0.1800929,
        size.height * 0.7555420,
        size.width * 0.1831782,
        size.height * 0.7549190);
    path.close();
    path.moveTo(size.width * 0.2173133, size.height * 0.7353642);
    path.cubicTo(
        size.width * 0.2170342,
        size.height * 0.7352825,
        size.width * 0.2168560,
        size.height * 0.7351220,
        size.width * 0.2168489,
        size.height * 0.7349450);
    path.cubicTo(
        size.width * 0.2168418,
        size.height * 0.7347680,
        size.width * 0.2170071,
        size.height * 0.7346027,
        size.width * 0.2172796,
        size.height * 0.7345142);
    path.cubicTo(
        size.width * 0.2190102,
        size.height * 0.7339522,
        size.width * 0.2220173,
        size.height * 0.7329757,
        size.width * 0.2240622,
        size.height * 0.7323115);
    path.cubicTo(
        size.width * 0.2252556,
        size.height * 0.7319240,
        size.width * 0.2256644,
        size.height * 0.7310660,
        size.width * 0.2249756,
        size.height * 0.7303947);
    path.cubicTo(
        size.width * 0.2249440,
        size.height * 0.7303640,
        size.width * 0.2249120,
        size.height * 0.7303330,
        size.width * 0.2248804,
        size.height * 0.7303022);
    path.cubicTo(
        size.width * 0.2241916,
        size.height * 0.7296312,
        size.width * 0.2226658,
        size.height * 0.7294012,
        size.width * 0.2214729,
        size.height * 0.7297887);
    path.cubicTo(
        size.width * 0.2194484,
        size.height * 0.7304460,
        size.width * 0.2164813,
        size.height * 0.7314097,
        size.width * 0.2147427,
        size.height * 0.7319742);
    path.cubicTo(
        size.width * 0.2144662,
        size.height * 0.7320642,
        size.width * 0.2141236,
        size.height * 0.7320605,
        size.width * 0.2138529,
        size.height * 0.7319647);
    path.cubicTo(
        size.width * 0.2135827,
        size.height * 0.7318690,
        size.width * 0.2134289,
        size.height * 0.7316967,
        size.width * 0.2134533,
        size.height * 0.7315175);
    path.cubicTo(
        size.width * 0.2136298,
        size.height * 0.7302240,
        size.width * 0.2139516,
        size.height * 0.7278667,
        size.width * 0.2141404,
        size.height * 0.7264845);
    path.cubicTo(
        size.width * 0.2141556,
        size.height * 0.7263725,
        size.width * 0.2140302,
        size.height * 0.7262697,
        size.width * 0.2138391,
        size.height * 0.7262375);
    path.cubicTo(
        size.width * 0.2136480,
        size.height * 0.7262052,
        size.width * 0.2134422,
        size.height * 0.7262520,
        size.width * 0.2133453,
        size.height * 0.7263502);
    path.cubicTo(
        size.width * 0.2111458,
        size.height * 0.7285790,
        size.width * 0.2057671,
        size.height * 0.7340292,
        size.width * 0.2044591,
        size.height * 0.7353545);
    path.cubicTo(
        size.width * 0.2042693,
        size.height * 0.7355467,
        size.width * 0.2039880,
        size.height * 0.7357052,
        size.width * 0.2036467,
        size.height * 0.7358122);
    path.cubicTo(
        size.width * 0.2010213,
        size.height * 0.7366360,
        size.width * 0.1891991,
        size.height * 0.7403447,
        size.width * 0.1844231,
        size.height * 0.7418430);
    path.cubicTo(
        size.width * 0.1840680,
        size.height * 0.7419545,
        size.width * 0.1836293,
        size.height * 0.7419382,
        size.width * 0.1833027,
        size.height * 0.7418015);
    path.cubicTo(
        size.width * 0.1829764,
        size.height * 0.7416647,
        size.width * 0.1828231,
        size.height * 0.7414330,
        size.width * 0.1829111,
        size.height * 0.7412095);
    path.cubicTo(
        size.width * 0.1840569,
        size.height * 0.7383055,
        size.width * 0.1868929,
        size.height * 0.7311160,
        size.width * 0.1883969,
        size.height * 0.7273027);
    path.cubicTo(
        size.width * 0.1884596,
        size.height * 0.7271437,
        size.width * 0.1883027,
        size.height * 0.7269832,
        size.width * 0.1880302,
        size.height * 0.7269280);
    path.cubicTo(
        size.width * 0.1877578,
        size.height * 0.7268730,
        size.width * 0.1874547,
        size.height * 0.7269402,
        size.width * 0.1873227,
        size.height * 0.7270852);
    path.cubicTo(
        size.width * 0.1829720,
        size.height * 0.7318635,
        size.width * 0.1729773,
        size.height * 0.7428410,
        size.width * 0.1702116,
        size.height * 0.7458787);
    path.cubicTo(
        size.width * 0.1697413,
        size.height * 0.7463955,
        size.width * 0.1690156,
        size.height * 0.7468247,
        size.width * 0.1681218,
        size.height * 0.7471150);
    path.cubicTo(
        size.width * 0.1641444,
        size.height * 0.7484067,
        size.width * 0.1525658,
        size.height * 0.7521670,
        size.width * 0.1476796,
        size.height * 0.7537537);
    path.cubicTo(
        size.width * 0.1464556,
        size.height * 0.7541512,
        size.width * 0.1460360,
        size.height * 0.7550317,
        size.width * 0.1467431,
        size.height * 0.7557202);
    path.cubicTo(
        size.width * 0.1467529,
        size.height * 0.7557300,
        size.width * 0.1467631,
        size.height * 0.7557397,
        size.width * 0.1467733,
        size.height * 0.7557497);
    path.cubicTo(
        size.width * 0.1474800,
        size.height * 0.7564382,
        size.width * 0.1490449,
        size.height * 0.7566742,
        size.width * 0.1502693,
        size.height * 0.7562765);
    path.cubicTo(
        size.width * 0.1551404,
        size.height * 0.7546945,
        size.width * 0.1666649,
        size.height * 0.7509520,
        size.width * 0.1706756,
        size.height * 0.7496495);
    path.cubicTo(
        size.width * 0.1715916,
        size.height * 0.7493520,
        size.width * 0.1726440,
        size.height * 0.7492135,
        size.width * 0.1736996,
        size.height * 0.7492520);
    path.cubicTo(
        size.width * 0.1798609,
        size.height * 0.7494755,
        size.width * 0.2019787,
        size.height * 0.7502777,
        size.width * 0.2115440,
        size.height * 0.7506247);
    path.cubicTo(
        size.width * 0.2118329,
        size.height * 0.7506352,
        size.width * 0.2120907,
        size.height * 0.7505235,
        size.width * 0.2121462,
        size.height * 0.7503637);
    path.cubicTo(
        size.width * 0.2122018,
        size.height * 0.7502037,
        size.width * 0.2120373,
        size.height * 0.7500457,
        size.width * 0.2117627,
        size.height * 0.7499945);
    path.cubicTo(
        size.width * 0.2050676,
        size.height * 0.7487442,
        size.width * 0.1922889,
        size.height * 0.7463575,
        size.width * 0.1871858,
        size.height * 0.7454047);
    path.cubicTo(
        size.width * 0.1867996,
        size.height * 0.7453325,
        size.width * 0.1865244,
        size.height * 0.7451395,
        size.width * 0.1864836,
        size.height * 0.7449120);
    path.cubicTo(
        size.width * 0.1864422,
        size.height * 0.7446842,
        size.width * 0.1866422,
        size.height * 0.7444640,
        size.width * 0.1869947,
        size.height * 0.7443495);
    path.cubicTo(
        size.width * 0.1917293,
        size.height * 0.7428120,
        size.width * 0.2034516,
        size.height * 0.7390050,
        size.width * 0.2060556,
        size.height * 0.7381595);
    path.cubicTo(
        size.width * 0.2063942,
        size.height * 0.7380495,
        size.width * 0.2067804,
        size.height * 0.7379950,
        size.width * 0.2071711,
        size.height * 0.7380020);
    path.cubicTo(
        size.width * 0.2098987,
        size.height * 0.7380510,
        size.width * 0.2212240,
        size.height * 0.7382542,
        size.width * 0.2257378,
        size.height * 0.7383352);
    path.cubicTo(
        size.width * 0.2259360,
        size.height * 0.7383387,
        size.width * 0.2261124,
        size.height * 0.7382647,
        size.width * 0.2261622,
        size.height * 0.7381567);
    path.cubicTo(
        size.width * 0.2262124,
        size.height * 0.7380487,
        size.width * 0.2261231,
        size.height * 0.7379357,
        size.width * 0.2259471,
        size.height * 0.7378842);
    path.cubicTo(
        size.width * 0.2236324,
        size.height * 0.7372087,
        size.width * 0.2194773,
        size.height * 0.7359957,
        size.width * 0.2173133,
        size.height * 0.7353642);
    path.close();
    path.moveTo(size.width * 0.02116978, size.height * 0.7315500);
    path.cubicTo(
        size.width * 0.02118356,
        size.height * 0.7317267,
        size.width * 0.02102533,
        size.height * 0.7318940,
        size.width * 0.02075644,
        size.height * 0.7319860);
    path.cubicTo(
        size.width * 0.02048756,
        size.height * 0.7320777,
        size.width * 0.02015067,
        size.height * 0.7320800,
        size.width * 0.01987822,
        size.height * 0.7319915);
    path.cubicTo(
        size.width * 0.01814756,
        size.height * 0.7314295,
        size.width * 0.01514044,
        size.height * 0.7304527,
        size.width * 0.01309556,
        size.height * 0.7297887);
    path.cubicTo(
        size.width * 0.01190222,
        size.height * 0.7294012,
        size.width * 0.01037644,
        size.height * 0.7296312,
        size.width * 0.009687556,
        size.height * 0.7303022);
    path.cubicTo(
        size.width * 0.009656000,
        size.height * 0.7303330,
        size.width * 0.009624444,
        size.height * 0.7303640,
        size.width * 0.009592889,
        size.height * 0.7303947);
    path.cubicTo(
        size.width * 0.008904000,
        size.height * 0.7310660,
        size.width * 0.009312889,
        size.height * 0.7319240,
        size.width * 0.01050578,
        size.height * 0.7323115);
    path.cubicTo(
        size.width * 0.01253022,
        size.height * 0.7329690,
        size.width * 0.01549733,
        size.height * 0.7339327,
        size.width * 0.01723600,
        size.height * 0.7344972);
    path.cubicTo(
        size.width * 0.01751289,
        size.height * 0.7345870,
        size.width * 0.01767822,
        size.height * 0.7347557,
        size.width * 0.01766622,
        size.height * 0.7349355);
    path.cubicTo(
        size.width * 0.01765378,
        size.height * 0.7351150,
        size.width * 0.01746578,
        size.height * 0.7352762,
        size.width * 0.01717733,
        size.height * 0.7353537);
    path.cubicTo(
        size.width * 0.01509778,
        size.height * 0.7359145,
        size.width * 0.01130756,
        size.height * 0.7369365,
        size.width * 0.009085333,
        size.height * 0.7375355);
    path.cubicTo(
        size.width * 0.008905333,
        size.height * 0.7375840,
        size.width * 0.008809333,
        size.height * 0.7376965,
        size.width * 0.008855556,
        size.height * 0.7378060);
    path.cubicTo(
        size.width * 0.008901333,
        size.height * 0.7379152,
        size.width * 0.009076444,
        size.height * 0.7379917,
        size.width * 0.009276000,
        size.height * 0.7379900);
    path.cubicTo(
        size.width * 0.01380711,
        size.height * 0.7379470,
        size.width * 0.02488756,
        size.height * 0.7378422,
        size.width * 0.02758222,
        size.height * 0.7378167);
    path.cubicTo(
        size.width * 0.02797289,
        size.height * 0.7378130,
        size.width * 0.02835733,
        size.height * 0.7378707,
        size.width * 0.02869289,
        size.height * 0.7379835);
    path.cubicTo(
        size.width * 0.03127378,
        size.height * 0.7388507,
        size.width * 0.04289467,
        size.height * 0.7427552,
        size.width * 0.04758978,
        size.height * 0.7443327);
    path.cubicTo(
        size.width * 0.04793911,
        size.height * 0.7444500,
        size.width * 0.04813333,
        size.height * 0.7446720,
        size.width * 0.04808622,
        size.height * 0.7448992);
    path.cubicTo(
        size.width * 0.04803867,
        size.height * 0.7451267,
        size.width * 0.04775867,
        size.height * 0.7453172,
        size.width * 0.04737022,
        size.height * 0.7453860);
    path.cubicTo(
        size.width * 0.04232622,
        size.height * 0.7462800,
        size.width * 0.02983956,
        size.height * 0.7484932,
        size.width * 0.02321689,
        size.height * 0.7496670);
    path.cubicTo(
        size.width * 0.02294044,
        size.height * 0.7497160,
        size.width * 0.02277200,
        size.height * 0.7498727,
        size.width * 0.02282311,
        size.height * 0.7500332);
    path.cubicTo(
        size.width * 0.02287422,
        size.height * 0.7501935,
        size.width * 0.02312933,
        size.height * 0.7503075,
        size.width * 0.02341867,
        size.height * 0.7502992);
    path.cubicTo(
        size.width * 0.03295067,
        size.height * 0.7500295,
        size.width * 0.05484933,
        size.height * 0.7494095,
        size.width * 0.06090844,
        size.height * 0.7492380);
    path.cubicTo(
        size.width * 0.06193956,
        size.height * 0.7492087,
        size.width * 0.06296356,
        size.height * 0.7493475,
        size.width * 0.06385733,
        size.height * 0.7496380);
    path.cubicTo(
        size.width * 0.06783467,
        size.height * 0.7509295,
        size.width * 0.07941289,
        size.height * 0.7546897,
        size.width * 0.08429911,
        size.height * 0.7562765);
    path.cubicTo(
        size.width * 0.08552311,
        size.height * 0.7566742,
        size.width * 0.08708844,
        size.height * 0.7564382,
        size.width * 0.08779511,
        size.height * 0.7557497);
    path.cubicTo(
        size.width * 0.08780533,
        size.height * 0.7557397,
        size.width * 0.08781511,
        size.height * 0.7557300,
        size.width * 0.08782533,
        size.height * 0.7557202);
    path.cubicTo(
        size.width * 0.08853200,
        size.height * 0.7550317,
        size.width * 0.08811289,
        size.height * 0.7541512,
        size.width * 0.08688844,
        size.height * 0.7537537);
    path.cubicTo(
        size.width * 0.08201733,
        size.height * 0.7521717,
        size.width * 0.07049289,
        size.height * 0.7484290,
        size.width * 0.06648222,
        size.height * 0.7471265);
    path.cubicTo(
        size.width * 0.06556622,
        size.height * 0.7468290,
        size.width * 0.06482711,
        size.height * 0.7463857,
        size.width * 0.06435822,
        size.height * 0.7458522);
    path.cubicTo(
        size.width * 0.06162178,
        size.height * 0.7427390,
        size.width * 0.05179822,
        size.height * 0.7315635,
        size.width * 0.04754978,
        size.height * 0.7267302);
    path.cubicTo(
        size.width * 0.04742133,
        size.height * 0.7265842,
        size.width * 0.04712044,
        size.height * 0.7265145,
        size.width * 0.04684667,
        size.height * 0.7265675);
    path.cubicTo(
        size.width * 0.04657289,
        size.height * 0.7266205,
        size.width * 0.04641156,
        size.height * 0.7267795,
        size.width * 0.04646978,
        size.height * 0.7269390);
    path.cubicTo(
        size.width * 0.04789244,
        size.height * 0.7308255,
        size.width * 0.05060756,
        size.height * 0.7382437,
        size.width * 0.05169200,
        size.height * 0.7412062);
    path.cubicTo(
        size.width * 0.05177378,
        size.height * 0.7414302,
        size.width * 0.05161422,
        size.height * 0.7416607,
        size.width * 0.05128444,
        size.height * 0.7417947);
    path.cubicTo(
        size.width * 0.05095422,
        size.height * 0.7419285,
        size.width * 0.05051556,
        size.height * 0.7419412,
        size.width * 0.05016311,
        size.height * 0.7418267);
    path.cubicTo(
        size.width * 0.04542844,
        size.height * 0.7402890,
        size.width * 0.03370622,
        size.height * 0.7364822,
        size.width * 0.03110222,
        size.height * 0.7356365);
    path.cubicTo(
        size.width * 0.03076356,
        size.height * 0.7355265,
        size.width * 0.03048667,
        size.height * 0.7353657,
        size.width * 0.03030178,
        size.height * 0.7351717);
    path.cubicTo(
        size.width * 0.02901333,
        size.height * 0.7338185,
        size.width * 0.02366400,
        size.height * 0.7282000,
        size.width * 0.02153156,
        size.height * 0.7259607);
    path.cubicTo(
        size.width * 0.02143822,
        size.height * 0.7258622,
        size.width * 0.02123600,
        size.height * 0.7258135,
        size.width * 0.02104444,
        size.height * 0.7258430);
    path.cubicTo(
        size.width * 0.02085333,
        size.height * 0.7258727,
        size.width * 0.02072400,
        size.height * 0.7259727,
        size.width * 0.02073289,
        size.height * 0.7260842);
    path.cubicTo(
        size.width * 0.02084978,
        size.height * 0.7275495,
        size.width * 0.02106000,
        size.height * 0.7301800,
        size.width * 0.02116978,
        size.height * 0.7315500);
    path.close();
    path.moveTo(size.width * 0.1211991, size.height * 0.7016072);
    path.cubicTo(
        size.width * 0.1209338,
        size.height * 0.7017025,
        size.width * 0.1205973,
        size.height * 0.7017090,
        size.width * 0.1203213,
        size.height * 0.7016240);
    path.cubicTo(
        size.width * 0.1200453,
        size.height * 0.7015387,
        size.width * 0.1198738,
        size.height * 0.7013760,
        size.width * 0.1198738,
        size.height * 0.7011990);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7000750,
        size.width * 0.1198738,
        size.height * 0.6981217,
        size.width * 0.1198738,
        size.height * 0.6967935);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.6960185,
        size.width * 0.1187569,
        size.height * 0.6953902,
        size.width * 0.1173791,
        size.height * 0.6953902);
    path.cubicTo(
        size.width * 0.1173160,
        size.height * 0.6953902,
        size.width * 0.1172524,
        size.height * 0.6953902,
        size.width * 0.1171893,
        size.height * 0.6953902);
    path.cubicTo(
        size.width * 0.1158116,
        size.height * 0.6953902,
        size.width * 0.1146947,
        size.height * 0.6960185,
        size.width * 0.1146947,
        size.height * 0.6967935);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.6981082,
        size.width * 0.1146947,
        size.height * 0.7000355,
        size.width * 0.1146947,
        size.height * 0.7011645);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.7013445,
        size.width * 0.1145178,
        size.height * 0.7015095,
        size.width * 0.1142351,
        size.height * 0.7015932);
    path.cubicTo(
        size.width * 0.1139524,
        size.height * 0.7016770,
        size.width * 0.1136102,
        size.height * 0.7016660,
        size.width * 0.1133467,
        size.height * 0.7015645);
    path.cubicTo(
        size.width * 0.1114436,
        size.height * 0.7008317,
        size.width * 0.1079751,
        size.height * 0.6994962,
        size.width * 0.1059413,
        size.height * 0.6987132);
    path.cubicTo(
        size.width * 0.1057769,
        size.height * 0.6986497,
        size.width * 0.1055556,
        size.height * 0.6986595,
        size.width * 0.1054102,
        size.height * 0.6987365);
    path.cubicTo(
        size.width * 0.1052649,
        size.height * 0.6988135,
        size.width * 0.1052347,
        size.height * 0.6989370,
        size.width * 0.1053373,
        size.height * 0.6990332);
    path.cubicTo(
        size.width * 0.1076689,
        size.height * 0.7012192,
        size.width * 0.1133707,
        size.height * 0.7065645,
        size.width * 0.1147569,
        size.height * 0.7078642);
    path.cubicTo(
        size.width * 0.1149582,
        size.height * 0.7080527,
        size.width * 0.1150613,
        size.height * 0.7082692,
        size.width * 0.1150556,
        size.height * 0.7084890);
    path.cubicTo(
        size.width * 0.1150111,
        size.height * 0.7101797,
        size.width * 0.1148102,
        size.height * 0.7177930,
        size.width * 0.1147289,
        size.height * 0.7208687);
    path.cubicTo(
        size.width * 0.1147227,
        size.height * 0.7210977,
        size.width * 0.1144782,
        size.height * 0.7213032,
        size.width * 0.1141044,
        size.height * 0.7213940);
    path.cubicTo(
        size.width * 0.1137311,
        size.height * 0.7214845,
        size.width * 0.1132973,
        size.height * 0.7214432,
        size.width * 0.1129973,
        size.height * 0.7212887);
    path.cubicTo(
        size.width * 0.1090991,
        size.height * 0.7192785,
        size.width * 0.09944800,
        size.height * 0.7143022,
        size.width * 0.09432933,
        size.height * 0.7116630);
    path.cubicTo(
        size.width * 0.09411600,
        size.height * 0.7115530,
        size.width * 0.09379022,
        size.height * 0.7115492,
        size.width * 0.09356933,
        size.height * 0.7116542);
    path.cubicTo(
        size.width * 0.09334800,
        size.height * 0.7117595,
        size.width * 0.09330000,
        size.height * 0.7119407,
        size.width * 0.09345733,
        size.height * 0.7120775);
    path.cubicTo(
        size.width * 0.09863867,
        size.height * 0.7165860,
        size.width * 0.1105422,
        size.height * 0.7269437,
        size.width * 0.1138360,
        size.height * 0.7298097);
    path.cubicTo(
        size.width * 0.1143964,
        size.height * 0.7302972,
        size.width * 0.1146947,
        size.height * 0.7308655,
        size.width * 0.1146947,
        size.height * 0.7314460);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.7340292,
        size.width * 0.1146947,
        size.height * 0.7415500,
        size.width * 0.1146947,
        size.height * 0.7447235);
    path.cubicTo(
        size.width * 0.1146947,
        size.height * 0.7455185,
        size.width * 0.1158404,
        size.height * 0.7461630,
        size.width * 0.1172538,
        size.height * 0.7461630);
    path.cubicTo(
        size.width * 0.1172742,
        size.height * 0.7461630,
        size.width * 0.1172942,
        size.height * 0.7461630,
        size.width * 0.1173142,
        size.height * 0.7461630);
    path.cubicTo(
        size.width * 0.1187280,
        size.height * 0.7461630,
        size.width * 0.1198738,
        size.height * 0.7455185,
        size.width * 0.1198738,
        size.height * 0.7447235);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7415592,
        size.width * 0.1198738,
        size.height * 0.7340740,
        size.width * 0.1198738,
        size.height * 0.7314692);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7308742,
        size.width * 0.1201867,
        size.height * 0.7302925,
        size.width * 0.1207738,
        size.height * 0.7297972);
    path.cubicTo(
        size.width * 0.1241982,
        size.height * 0.7269075,
        size.width * 0.1364924,
        size.height * 0.7165345,
        size.width * 0.1418098,
        size.height * 0.7120480);
    path.cubicTo(
        size.width * 0.1419702,
        size.height * 0.7119125,
        size.width * 0.1419271,
        size.height * 0.7117310,
        size.width * 0.1417084,
        size.height * 0.7116242);
    path.cubicTo(
        size.width * 0.1414902,
        size.height * 0.7115172,
        size.width * 0.1411649,
        size.height * 0.7115183,
        size.width * 0.1409484,
        size.height * 0.7116265);
    path.cubicTo(
        size.width * 0.1356760,
        size.height * 0.7142627,
        size.width * 0.1256120,
        size.height * 0.7192945,
        size.width * 0.1215933,
        size.height * 0.7213040);
    path.cubicTo(
        size.width * 0.1212893,
        size.height * 0.7214560,
        size.width * 0.1208547,
        size.height * 0.7214935,
        size.width * 0.1204836,
        size.height * 0.7213997);
    path.cubicTo(
        size.width * 0.1201124,
        size.height * 0.7213060,
        size.width * 0.1198738,
        size.height * 0.7210982,
        size.width * 0.1198738,
        size.height * 0.7208695);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7177942,
        size.width * 0.1198738,
        size.height * 0.7101805,
        size.width * 0.1198738,
        size.height * 0.7084892);
    path.cubicTo(
        size.width * 0.1198738,
        size.height * 0.7082692,
        size.width * 0.1199827,
        size.height * 0.7080537,
        size.width * 0.1201889,
        size.height * 0.7078670);
    path.cubicTo(
        size.width * 0.1216280,
        size.height * 0.7065627,
        size.width * 0.1276036,
        size.height * 0.7011475,
        size.width * 0.1299853,
        size.height * 0.6989890);
    path.cubicTo(
        size.width * 0.1300898,
        size.height * 0.6988942,
        size.width * 0.1300640,
        size.height * 0.6987712,
        size.width * 0.1299227,
        size.height * 0.6986930);
    path.cubicTo(
        size.width * 0.1297818,
        size.height * 0.6986145,
        size.width * 0.1295627,
        size.height * 0.6986015,
        size.width * 0.1293956,
        size.height * 0.6986615);
    path.cubicTo(
        size.width * 0.1271982,
        size.height * 0.6994512,
        size.width * 0.1232533,
        size.height * 0.7008690,
        size.width * 0.1211991,
        size.height * 0.7016072);
    path.close();
    path.moveTo(size.width * 0.1662244, size.height * 0.7384012);
    path.cubicTo(
        size.width * 0.1666133,
        size.height * 0.7382157,
        size.width * 0.1668511,
        size.height * 0.7379490,
        size.width * 0.1668818,
        size.height * 0.7376625);
    path.cubicTo(
        size.width * 0.1670409,
        size.height * 0.7361695,
        size.width * 0.1675569,
        size.height * 0.7313342,
        size.width * 0.1677942,
        size.height * 0.7291092);
    path.cubicTo(
        size.width * 0.1678173,
        size.height * 0.7288935,
        size.width * 0.1676218,
        size.height * 0.7286887,
        size.width * 0.1672889,
        size.height * 0.7285807);
    path.cubicTo(
        size.width * 0.1669560,
        size.height * 0.7284725,
        size.width * 0.1665431,
        size.height * 0.7284795,
        size.width * 0.1662222,
        size.height * 0.7285987);
    path.cubicTo(
        size.width * 0.1629151,
        size.height * 0.7298267,
        size.width * 0.1557289,
        size.height * 0.7324957,
        size.width * 0.1535098,
        size.height * 0.7333200);
    path.cubicTo(
        size.width * 0.1530840,
        size.height * 0.7334780,
        size.width * 0.1527920,
        size.height * 0.7337272,
        size.width * 0.1527013,
        size.height * 0.7340095);
    path.cubicTo(
        size.width * 0.1521178,
        size.height * 0.7358240,
        size.width * 0.1498942,
        size.height * 0.7427387,
        size.width * 0.1489818,
        size.height * 0.7455752);
    path.cubicTo(
        size.width * 0.1489222,
        size.height * 0.7457610,
        size.width * 0.1490760,
        size.height * 0.7459475,
        size.width * 0.1493667,
        size.height * 0.7460420);
    path.cubicTo(
        size.width * 0.1496569,
        size.height * 0.7461362,
        size.width * 0.1500213,
        size.height * 0.7461177,
        size.width * 0.1502773,
        size.height * 0.7459960);
    path.cubicTo(
        size.width * 0.1541880,
        size.height * 0.7441332,
        size.width * 0.1637222,
        size.height * 0.7395927,
        size.width * 0.1662244,
        size.height * 0.7384012);
    path.close();
    path.moveTo(size.width * 0.06834400, size.height * 0.7384012);
    path.cubicTo(
        size.width * 0.06795467,
        size.height * 0.7382157,
        size.width * 0.06771733,
        size.height * 0.7379490,
        size.width * 0.06768667,
        size.height * 0.7376625);
    path.cubicTo(
        size.width * 0.06752756,
        size.height * 0.7361695,
        size.width * 0.06701156,
        size.height * 0.7313342,
        size.width * 0.06677378,
        size.height * 0.7291092);
    path.cubicTo(
        size.width * 0.06675111,
        size.height * 0.7288935,
        size.width * 0.06694667,
        size.height * 0.7286887,
        size.width * 0.06727956,
        size.height * 0.7285807);
    path.cubicTo(
        size.width * 0.06761244,
        size.height * 0.7284725,
        size.width * 0.06802533,
        size.height * 0.7284795,
        size.width * 0.06834622,
        size.height * 0.7285987);
    path.cubicTo(
        size.width * 0.07165289,
        size.height * 0.7298267,
        size.width * 0.07883911,
        size.height * 0.7324957,
        size.width * 0.08105867,
        size.height * 0.7333200);
    path.cubicTo(
        size.width * 0.08148400,
        size.height * 0.7334780,
        size.width * 0.08177644,
        size.height * 0.7337272,
        size.width * 0.08186711,
        size.height * 0.7340095);
    path.cubicTo(
        size.width * 0.08245067,
        size.height * 0.7358240,
        size.width * 0.08467422,
        size.height * 0.7427387,
        size.width * 0.08558622,
        size.height * 0.7455752);
    path.cubicTo(
        size.width * 0.08564622,
        size.height * 0.7457610,
        size.width * 0.08549200,
        size.height * 0.7459475,
        size.width * 0.08520178,
        size.height * 0.7460420);
    path.cubicTo(
        size.width * 0.08491156,
        size.height * 0.7461362,
        size.width * 0.08454711,
        size.height * 0.7461177,
        size.width * 0.08429111,
        size.height * 0.7459960);
    path.cubicTo(
        size.width * 0.08038000,
        size.height * 0.7441332,
        size.width * 0.07084578,
        size.height * 0.7395927,
        size.width * 0.06834400,
        size.height * 0.7384012);
    path.close();
    path.moveTo(size.width * 0.1003302, size.height * 0.7280135);
    path.cubicTo(
        size.width * 0.1002396,
        size.height * 0.7277310,
        size.width * 0.09994711,
        size.height * 0.7274820,
        size.width * 0.09952178,
        size.height * 0.7273237);
    path.cubicTo(
        size.width * 0.09730222,
        size.height * 0.7264997,
        size.width * 0.09011600,
        size.height * 0.7238307,
        size.width * 0.08680933,
        size.height * 0.7226025);
    path.cubicTo(
        size.width * 0.08648844,
        size.height * 0.7224835,
        size.width * 0.08607556,
        size.height * 0.7224765,
        size.width * 0.08574267,
        size.height * 0.7225845);
    path.cubicTo(
        size.width * 0.08540978,
        size.height * 0.7226927,
        size.width * 0.08521422,
        size.height * 0.7228972,
        size.width * 0.08523733,
        size.height * 0.7231132);
    path.cubicTo(
        size.width * 0.08547467,
        size.height * 0.7253382,
        size.width * 0.08599067,
        size.height * 0.7301732,
        size.width * 0.08614978,
        size.height * 0.7316665);
    path.cubicTo(
        size.width * 0.08618044,
        size.height * 0.7319530,
        size.width * 0.08641778,
        size.height * 0.7322197,
        size.width * 0.08680711,
        size.height * 0.7324052);
    path.cubicTo(
        size.width * 0.08930889,
        size.height * 0.7335967,
        size.width * 0.09884311,
        size.height * 0.7381372,
        size.width * 0.1027542,
        size.height * 0.7400000);
    path.cubicTo(
        size.width * 0.1030102,
        size.height * 0.7401217,
        size.width * 0.1033747,
        size.height * 0.7401402,
        size.width * 0.1036649,
        size.height * 0.7400457);
    path.cubicTo(
        size.width * 0.1039556,
        size.height * 0.7399515,
        size.width * 0.1041093,
        size.height * 0.7397647,
        size.width * 0.1040493,
        size.height * 0.7395792);
    path.cubicTo(
        size.width * 0.1031373,
        size.height * 0.7367427,
        size.width * 0.1009138,
        size.height * 0.7298280,
        size.width * 0.1003302,
        size.height * 0.7280135);
    path.close();
    path.moveTo(size.width * 0.1342382, size.height * 0.7280135);
    path.cubicTo(
        size.width * 0.1343289,
        size.height * 0.7277310,
        size.width * 0.1346209,
        size.height * 0.7274820,
        size.width * 0.1350467,
        size.height * 0.7273237);
    path.cubicTo(
        size.width * 0.1372658,
        size.height * 0.7264997,
        size.width * 0.1444520,
        size.height * 0.7238307,
        size.width * 0.1477591,
        size.height * 0.7226025);
    path.cubicTo(
        size.width * 0.1480796,
        size.height * 0.7224835,
        size.width * 0.1484924,
        size.height * 0.7224765,
        size.width * 0.1488253,
        size.height * 0.7225845);
    path.cubicTo(
        size.width * 0.1491582,
        size.height * 0.7226927,
        size.width * 0.1493542,
        size.height * 0.7228972,
        size.width * 0.1493311,
        size.height * 0.7231132);
    path.cubicTo(
        size.width * 0.1490938,
        size.height * 0.7253382,
        size.width * 0.1485778,
        size.height * 0.7301732,
        size.width * 0.1484182,
        size.height * 0.7316665);
    path.cubicTo(
        size.width * 0.1483880,
        size.height * 0.7319530,
        size.width * 0.1481502,
        size.height * 0.7322197,
        size.width * 0.1477613,
        size.height * 0.7324052);
    path.cubicTo(
        size.width * 0.1452591,
        size.height * 0.7335967,
        size.width * 0.1357249,
        size.height * 0.7381372,
        size.width * 0.1318138,
        size.height * 0.7400000);
    path.cubicTo(
        size.width * 0.1315582,
        size.height * 0.7401217,
        size.width * 0.1311938,
        size.height * 0.7401402,
        size.width * 0.1309031,
        size.height * 0.7400457);
    path.cubicTo(
        size.width * 0.1306129,
        size.height * 0.7399515,
        size.width * 0.1304591,
        size.height * 0.7397647,
        size.width * 0.1305187,
        size.height * 0.7395792);
    path.cubicTo(
        size.width * 0.1314307,
        size.height * 0.7367427,
        size.width * 0.1336547,
        size.height * 0.7298280,
        size.width * 0.1342382,
        size.height * 0.7280135);
    path.close();
    path.moveTo(size.width * 0.08067644, size.height * 0.7012572);
    path.cubicTo(
        size.width * 0.08088133,
        size.height * 0.7014570,
        size.width * 0.08133644,
        size.height * 0.7015257,
        size.width * 0.08169200,
        size.height * 0.7014102);
    path.lineTo(size.width * 0.08201378, size.height * 0.7013057);
    path.cubicTo(
        size.width * 0.08236933,
        size.height * 0.7011902,
        size.width * 0.08249111,
        size.height * 0.7009342,
        size.width * 0.08228622,
        size.height * 0.7007342);
    path.lineTo(size.width * 0.08063022, size.height * 0.6991210);
    path.cubicTo(
        size.width * 0.08042489,
        size.height * 0.6989210,
        size.width * 0.07996978,
        size.height * 0.6988525,
        size.width * 0.07961467,
        size.height * 0.6989680);
    path.lineTo(size.width * 0.07929244, size.height * 0.6990725);
    path.cubicTo(
        size.width * 0.07893689,
        size.height * 0.6991877,
        size.width * 0.07881511,
        size.height * 0.6994440,
        size.width * 0.07902044,
        size.height * 0.6996437);
    path.lineTo(size.width * 0.08067644, size.height * 0.7012572);
    path.close();
    path.moveTo(size.width * 0.04654711, size.height * 0.6679247);
    path.lineTo(size.width * 0.04187689, size.height * 0.6633745);
    path.cubicTo(
        size.width * 0.04178400,
        size.height * 0.6632840,
        size.width * 0.03451467,
        size.height * 0.6610087,
        size.width * 0.03204978,
        size.height * 0.6602390);
    path.cubicTo(
        size.width * 0.03195822,
        size.height * 0.6602090,
        size.width * 0.03191378,
        size.height * 0.6601477,
        size.width * 0.03194222,
        size.height * 0.6600902);
    path.cubicTo(
        size.width * 0.03197022,
        size.height * 0.6600325,
        size.width * 0.03206400,
        size.height * 0.6599927,
        size.width * 0.03217022,
        size.height * 0.6599932);
    path.cubicTo(
        size.width * 0.03411511,
        size.height * 0.6600040,
        size.width * 0.03843867,
        size.height * 0.6600250,
        size.width * 0.03840578,
        size.height * 0.6599927);
    path.lineTo(size.width * 0.03196000, size.height * 0.6537130);
    path.cubicTo(
        size.width * 0.03195378,
        size.height * 0.6537067,
        size.width * 0.02590978,
        size.height * 0.6520312,
        size.width * 0.02401111,
        size.height * 0.6515050);
    path.cubicTo(
        size.width * 0.02396178,
        size.height * 0.6514907,
        size.width * 0.02393689,
        size.height * 0.6514582,
        size.width * 0.02395244,
        size.height * 0.6514280);
    path.cubicTo(
        size.width * 0.02396844,
        size.height * 0.6513977,
        size.width * 0.02402000,
        size.height * 0.6513780,
        size.width * 0.02407556,
        size.height * 0.6513810);
    path.cubicTo(
        size.width * 0.02560089,
        size.height * 0.6514577,
        size.width * 0.02947644,
        size.height * 0.6516535,
        size.width * 0.03086844,
        size.height * 0.6517240);
    path.cubicTo(
        size.width * 0.03117289,
        size.height * 0.6517392,
        size.width * 0.03146178,
        size.height * 0.6516455,
        size.width * 0.03159022,
        size.height * 0.6514895);
    path.cubicTo(
        size.width * 0.03217733,
        size.height * 0.6507765,
        size.width * 0.03381156,
        size.height * 0.6487912,
        size.width * 0.03445511,
        size.height * 0.6480100);
    path.cubicTo(
        size.width * 0.03447867,
        size.height * 0.6479812,
        size.width * 0.03453511,
        size.height * 0.6479660,
        size.width * 0.03458933,
        size.height * 0.6479735);
    path.cubicTo(
        size.width * 0.03464400,
        size.height * 0.6479810,
        size.width * 0.03468178,
        size.height * 0.6480092,
        size.width * 0.03467911,
        size.height * 0.6480407);
    path.cubicTo(
        size.width * 0.03454044,
        size.height * 0.6492285,
        size.width * 0.03410000,
        size.height * 0.6530095,
        size.width * 0.03410667,
        size.height * 0.6530160);
    path.lineTo(size.width * 0.04055200, size.height * 0.6592957);
    path.cubicTo(
        size.width * 0.04058533,
        size.height * 0.6593277,
        size.width * 0.04271244,
        size.height * 0.6572120,
        size.width * 0.04366711,
        size.height * 0.6562595);
    path.cubicTo(
        size.width * 0.04371956,
        size.height * 0.6562072,
        size.width * 0.04382800,
        size.height * 0.6561812,
        size.width * 0.04393111,
        size.height * 0.6561962);
    path.cubicTo(
        size.width * 0.04403422,
        size.height * 0.6562115,
        size.width * 0.04410667,
        size.height * 0.6562637,
        size.width * 0.04410711,
        size.height * 0.6563237);
    path.cubicTo(
        size.width * 0.04405956,
        size.height * 0.6579090,
        size.width * 0.04393022,
        size.height * 0.6625867,
        size.width * 0.04402311,
        size.height * 0.6626775);
    path.lineTo(size.width * 0.04859556, size.height * 0.6671322);
    path.lineTo(size.width * 0.05457644, size.height * 0.6619215);
    path.lineTo(size.width * 0.06089822, size.height * 0.6674292);
    path.lineTo(size.width * 0.06566533, size.height * 0.6627847);
    path.cubicTo(
        size.width * 0.06575822,
        size.height * 0.6626942,
        size.width * 0.06562667,
        size.height * 0.6580155,
        size.width * 0.06557911,
        size.height * 0.6564302);
    path.cubicTo(
        size.width * 0.06557956,
        size.height * 0.6563702,
        size.width * 0.06565156,
        size.height * 0.6563182,
        size.width * 0.06575467,
        size.height * 0.6563030);
    path.cubicTo(
        size.width * 0.06585733,
        size.height * 0.6562880,
        size.width * 0.06596533,
        size.height * 0.6563137,
        size.width * 0.06601778,
        size.height * 0.6563660);
    path.cubicTo(
        size.width * 0.06697378,
        size.height * 0.6573185,
        size.width * 0.06910311,
        size.height * 0.6594352,
        size.width * 0.06913644,
        size.height * 0.6594030);
    path.lineTo(size.width * 0.07558178, size.height * 0.6531232);
    path.cubicTo(
        size.width * 0.07558844,
        size.height * 0.6531170,
        size.width * 0.07514578,
        size.height * 0.6493350,
        size.width * 0.07500667,
        size.height * 0.6481472);
    path.cubicTo(
        size.width * 0.07500400,
        size.height * 0.6481157,
        size.width * 0.07504133,
        size.height * 0.6480875,
        size.width * 0.07509600,
        size.height * 0.6480800);
    path.cubicTo(
        size.width * 0.07515022,
        size.height * 0.6480725,
        size.width * 0.07520667,
        size.height * 0.6480877,
        size.width * 0.07523022,
        size.height * 0.6481165);
    path.cubicTo(
        size.width * 0.07587422,
        size.height * 0.6488977,
        size.width * 0.07751067,
        size.height * 0.6508837,
        size.width * 0.07809822,
        size.height * 0.6515970);
    path.cubicTo(
        size.width * 0.07822667,
        size.height * 0.6517530,
        size.width * 0.07851556,
        size.height * 0.6518467,
        size.width * 0.07882000,
        size.height * 0.6518312);
    path.cubicTo(
        size.width * 0.08021156,
        size.height * 0.6517607,
        size.width * 0.08408489,
        size.height * 0.6515645,
        size.width * 0.08560978,
        size.height * 0.6514870);
    path.cubicTo(
        size.width * 0.08566533,
        size.height * 0.6514842,
        size.width * 0.08571733,
        size.height * 0.6515042,
        size.width * 0.08573289,
        size.height * 0.6515345);
    path.cubicTo(
        size.width * 0.08574844,
        size.height * 0.6515647,
        size.width * 0.08572400,
        size.height * 0.6515972,
        size.width * 0.08567422,
        size.height * 0.6516117);
    path.cubicTo(
        size.width * 0.08377600,
        size.height * 0.6521380,
        size.width * 0.07773467,
        size.height * 0.6538140,
        size.width * 0.07772844,
        size.height * 0.6538205);
    path.lineTo(size.width * 0.07128267, size.height * 0.6601002);
    path.cubicTo(
        size.width * 0.07124978,
        size.height * 0.6601322,
        size.width * 0.07557111,
        size.height * 0.6601107,
        size.width * 0.07751467,
        size.height * 0.6600995);
    path.cubicTo(
        size.width * 0.07762133,
        size.height * 0.6600987,
        size.width * 0.07771556,
        size.height * 0.6601387,
        size.width * 0.07774400,
        size.height * 0.6601965);
    path.cubicTo(
        size.width * 0.07777244,
        size.height * 0.6602542,
        size.width * 0.07772800,
        size.height * 0.6603157,
        size.width * 0.07763556,
        size.height * 0.6603460);
    path.cubicTo(
        size.width * 0.07517111,
        size.height * 0.6611155,
        size.width * 0.06790489,
        size.height * 0.6633912,
        size.width * 0.06781200,
        size.height * 0.6634817);
    path.lineTo(size.width * 0.06323378, size.height * 0.6679422);
    path.lineTo(size.width * 0.07404711, size.height * 0.6682447);
    path.lineTo(size.width * 0.06872800, size.height * 0.6740782);
    path.lineTo(size.width * 0.07846756, size.height * 0.6740782);
    path.cubicTo(
        size.width * 0.07865333,
        size.height * 0.6740782,
        size.width * 0.08579067,
        size.height * 0.6716750,
        size.width * 0.08820800,
        size.height * 0.6708590);
    path.cubicTo(
        size.width * 0.08830044,
        size.height * 0.6708292,
        size.width * 0.08841689,
        size.height * 0.6708382,
        size.width * 0.08849156,
        size.height * 0.6708810);
    path.cubicTo(
        size.width * 0.08856622,
        size.height * 0.6709235,
        size.width * 0.08858044,
        size.height * 0.6709890,
        size.width * 0.08852622,
        size.height * 0.6710405);
    path.cubicTo(
        size.width * 0.08753778,
        size.height * 0.6719825,
        size.width * 0.08534356,
        size.height * 0.6740782,
        size.width * 0.08540933,
        size.height * 0.6740782);
    path.lineTo(size.width * 0.09830044, size.height * 0.6740782);
    path.cubicTo(
        size.width * 0.09831333,
        size.height * 0.6740782,
        size.width * 0.1039147,
        size.height * 0.6719720,
        size.width * 0.1056742,
        size.height * 0.6713100);
    path.cubicTo(
        size.width * 0.1057213,
        size.height * 0.6712930,
        size.width * 0.1057836,
        size.height * 0.6712972,
        size.width * 0.1058222,
        size.height * 0.6713200);
    path.cubicTo(
        size.width * 0.1058609,
        size.height * 0.6713427,
        size.width * 0.1058658,
        size.height * 0.6713777,
        size.width * 0.1058333,
        size.height * 0.6714035);
    path.cubicTo(
        size.width * 0.1049524,
        size.height * 0.6721080,
        size.width * 0.1027129,
        size.height * 0.6738982,
        size.width * 0.1019089,
        size.height * 0.6745410);
    path.cubicTo(
        size.width * 0.1017329,
        size.height * 0.6746817,
        size.width * 0.1017329,
        size.height * 0.6748692,
        size.width * 0.1019089,
        size.height * 0.6750097);
    path.cubicTo(
        size.width * 0.1027133,
        size.height * 0.6756522,
        size.width * 0.1049524,
        size.height * 0.6774410,
        size.width * 0.1058338,
        size.height * 0.6781450);
    path.cubicTo(
        size.width * 0.1058658,
        size.height * 0.6781710,
        size.width * 0.1058613,
        size.height * 0.6782060,
        size.width * 0.1058222,
        size.height * 0.6782290);
    path.cubicTo(
        size.width * 0.1057836,
        size.height * 0.6782517,
        size.width * 0.1057213,
        size.height * 0.6782560,
        size.width * 0.1056742,
        size.height * 0.6782390);
    path.cubicTo(
        size.width * 0.1039151,
        size.height * 0.6775775,
        size.width * 0.09831378,
        size.height * 0.6754725,
        size.width * 0.09830044,
        size.height * 0.6754725);
    path.lineTo(size.width * 0.08540933, size.height * 0.6754725);
    path.cubicTo(
        size.width * 0.08534356,
        size.height * 0.6754725,
        size.width * 0.08753733,
        size.height * 0.6775667,
        size.width * 0.08852667,
        size.height * 0.6785080);
    path.cubicTo(
        size.width * 0.08858089,
        size.height * 0.6785597,
        size.width * 0.08856667,
        size.height * 0.6786255,
        size.width * 0.08849200,
        size.height * 0.6786682);
    path.cubicTo(
        size.width * 0.08841689,
        size.height * 0.6787110,
        size.width * 0.08830044,
        size.height * 0.6787200,
        size.width * 0.08820756,
        size.height * 0.6786902);
    path.cubicTo(
        size.width * 0.08579067,
        size.height * 0.6778745,
        size.width * 0.07865333,
        size.height * 0.6754725,
        size.width * 0.07846756,
        size.height * 0.6754725);
    path.lineTo(size.width * 0.06910622, size.height * 0.6754725);
    path.lineTo(size.width * 0.07404711, size.height * 0.6808915);
    path.lineTo(size.width * 0.06260578, size.height * 0.6812115);
    path.lineTo(size.width * 0.06748089, size.height * 0.6859615);
    path.cubicTo(
        size.width * 0.06757378,
        size.height * 0.6860520,
        size.width * 0.07484311,
        size.height * 0.6883272,
        size.width * 0.07730756,
        size.height * 0.6890970);
    path.cubicTo(
        size.width * 0.07739956,
        size.height * 0.6891270,
        size.width * 0.07744400,
        size.height * 0.6891882,
        size.width * 0.07741556,
        size.height * 0.6892457);
    path.cubicTo(
        size.width * 0.07738756,
        size.height * 0.6893035,
        size.width * 0.07729378,
        size.height * 0.6893432,
        size.width * 0.07718756,
        size.height * 0.6893427);
    path.cubicTo(
        size.width * 0.07524267,
        size.height * 0.6893320,
        size.width * 0.07091911,
        size.height * 0.6893110,
        size.width * 0.07095200,
        size.height * 0.6893432);
    path.lineTo(size.width * 0.07739778, size.height * 0.6956230);
    path.cubicTo(
        size.width * 0.07740400,
        size.height * 0.6956292,
        size.width * 0.08344800,
        size.height * 0.6973047,
        size.width * 0.08534667,
        size.height * 0.6978310);
    path.cubicTo(
        size.width * 0.08539600,
        size.height * 0.6978455,
        size.width * 0.08542089,
        size.height * 0.6978777,
        size.width * 0.08540533,
        size.height * 0.6979080);
    path.cubicTo(
        size.width * 0.08538933,
        size.height * 0.6979382,
        size.width * 0.08533778,
        size.height * 0.6979580,
        size.width * 0.08528222,
        size.height * 0.6979552);
    path.cubicTo(
        size.width * 0.08375689,
        size.height * 0.6978782,
        size.width * 0.07988133,
        size.height * 0.6976825,
        size.width * 0.07848933,
        size.height * 0.6976120);
    path.cubicTo(
        size.width * 0.07818489,
        size.height * 0.6975967,
        size.width * 0.07789600,
        size.height * 0.6976905,
        size.width * 0.07776756,
        size.height * 0.6978465);
    path.cubicTo(
        size.width * 0.07718044,
        size.height * 0.6985595,
        size.width * 0.07554622,
        size.height * 0.7005447,
        size.width * 0.07490267,
        size.height * 0.7013260);
    path.cubicTo(
        size.width * 0.07487911,
        size.height * 0.7013547,
        size.width * 0.07482267,
        size.height * 0.7013700,
        size.width * 0.07476844,
        size.height * 0.7013625);
    path.cubicTo(
        size.width * 0.07471378,
        size.height * 0.7013550,
        size.width * 0.07467600,
        size.height * 0.7013267,
        size.width * 0.07467867,
        size.height * 0.7012952);
    path.cubicTo(
        size.width * 0.07481733,
        size.height * 0.7001075,
        size.width * 0.07525778,
        size.height * 0.6963265,
        size.width * 0.07525111,
        size.height * 0.6963200);
    path.lineTo(size.width * 0.06880578, size.height * 0.6900402);
    path.cubicTo(
        size.width * 0.06877244,
        size.height * 0.6900082,
        size.width * 0.06664533,
        size.height * 0.6921240,
        size.width * 0.06569067,
        size.height * 0.6930765);
    path.cubicTo(
        size.width * 0.06563822,
        size.height * 0.6931290,
        size.width * 0.06552978,
        size.height * 0.6931547,
        size.width * 0.06542667,
        size.height * 0.6931397);
    path.cubicTo(
        size.width * 0.06532356,
        size.height * 0.6931245,
        size.width * 0.06525111,
        size.height * 0.6930722,
        size.width * 0.06525067,
        size.height * 0.6930122);
    path.cubicTo(
        size.width * 0.06529822,
        size.height * 0.6914270,
        size.width * 0.06542756,
        size.height * 0.6867492,
        size.width * 0.06533467,
        size.height * 0.6866587);
    path.lineTo(size.width * 0.06055733, size.height * 0.6820040);
    path.lineTo(size.width * 0.05457644, size.height * 0.6872147);
    path.lineTo(size.width * 0.04847111, size.height * 0.6818955);
    path.lineTo(size.width * 0.04369244, size.height * 0.6865512);
    path.cubicTo(
        size.width * 0.04359956,
        size.height * 0.6866417,
        size.width * 0.04373111,
        size.height * 0.6913205,
        size.width * 0.04377867,
        size.height * 0.6929060);
    path.cubicTo(
        size.width * 0.04377822,
        size.height * 0.6929657,
        size.width * 0.04370622,
        size.height * 0.6930180,
        size.width * 0.04360311,
        size.height * 0.6930330);
    path.cubicTo(
        size.width * 0.04350044,
        size.height * 0.6930480,
        size.width * 0.04339244,
        size.height * 0.6930222,
        size.width * 0.04334000,
        size.height * 0.6929700);
    path.cubicTo(
        size.width * 0.04238400,
        size.height * 0.6920175,
        size.width * 0.04025467,
        size.height * 0.6899007,
        size.width * 0.04022133,
        size.height * 0.6899330);
    path.lineTo(size.width * 0.03377600, size.height * 0.6962127);
    path.cubicTo(
        size.width * 0.03376933,
        size.height * 0.6962190,
        size.width * 0.03421200,
        size.height * 0.7000010,
        size.width * 0.03435111,
        size.height * 0.7011887);
    path.cubicTo(
        size.width * 0.03435378,
        size.height * 0.7012202,
        size.width * 0.03431644,
        size.height * 0.7012485,
        size.width * 0.03426178,
        size.height * 0.7012560);
    path.cubicTo(
        size.width * 0.03420756,
        size.height * 0.7012635,
        size.width * 0.03415111,
        size.height * 0.7012482,
        size.width * 0.03412756,
        size.height * 0.7012195);
    path.cubicTo(
        size.width * 0.03348356,
        size.height * 0.7004382,
        size.width * 0.03184711,
        size.height * 0.6984522,
        size.width * 0.03125956,
        size.height * 0.6977390);
    path.cubicTo(
        size.width * 0.03113111,
        size.height * 0.6975830,
        size.width * 0.03084222,
        size.height * 0.6974892,
        size.width * 0.03053778,
        size.height * 0.6975047);
    path.cubicTo(
        size.width * 0.02914622,
        size.height * 0.6975752,
        size.width * 0.02527289,
        size.height * 0.6977717,
        size.width * 0.02374800,
        size.height * 0.6978490);
    path.cubicTo(
        size.width * 0.02369200,
        size.height * 0.6978517,
        size.width * 0.02364044,
        size.height * 0.6978320,
        size.width * 0.02362489,
        size.height * 0.6978015);
    path.cubicTo(
        size.width * 0.02360889,
        size.height * 0.6977712,
        size.width * 0.02363378,
        size.height * 0.6977387,
        size.width * 0.02368356,
        size.height * 0.6977242);
    path.cubicTo(
        size.width * 0.02558133,
        size.height * 0.6971980,
        size.width * 0.03162311,
        size.height * 0.6955220,
        size.width * 0.03162933,
        size.height * 0.6955155);
    path.lineTo(size.width * 0.03807511, size.height * 0.6892357);
    path.cubicTo(
        size.width * 0.03810800,
        size.height * 0.6892037,
        size.width * 0.03378667,
        size.height * 0.6892252,
        size.width * 0.03184311,
        size.height * 0.6892365);
    path.cubicTo(
        size.width * 0.03173644,
        size.height * 0.6892372,
        size.width * 0.03164222,
        size.height * 0.6891975,
        size.width * 0.03161378,
        size.height * 0.6891395);
    path.cubicTo(
        size.width * 0.03158533,
        size.height * 0.6890817,
        size.width * 0.03162978,
        size.height * 0.6890202,
        size.width * 0.03172222,
        size.height * 0.6889900);
    path.cubicTo(
        size.width * 0.03418622,
        size.height * 0.6882205,
        size.width * 0.04145289,
        size.height * 0.6859447,
        size.width * 0.04154578,
        size.height * 0.6858542);
    path.lineTo(size.width * 0.04631778, size.height * 0.6812052);
    path.lineTo(size.width * 0.03510578, size.height * 0.6808915);
    path.lineTo(size.width * 0.04024267, size.height * 0.6752577);
    path.lineTo(size.width * 0.03089022, size.height * 0.6752577);
    path.cubicTo(
        size.width * 0.03070444,
        size.height * 0.6752577,
        size.width * 0.02356711,
        size.height * 0.6776612,
        size.width * 0.02114978,
        size.height * 0.6784770);
    path.cubicTo(
        size.width * 0.02105733,
        size.height * 0.6785067,
        size.width * 0.02094089,
        size.height * 0.6784977,
        size.width * 0.02086622,
        size.height * 0.6784550);
    path.cubicTo(
        size.width * 0.02079156,
        size.height * 0.6784125,
        size.width * 0.02077733,
        size.height * 0.6783470,
        size.width * 0.02083156,
        size.height * 0.6782955);
    path.cubicTo(
        size.width * 0.02182044,
        size.height * 0.6773535,
        size.width * 0.02401422,
        size.height * 0.6752577,
        size.width * 0.02394844,
        size.height * 0.6752577);
    path.lineTo(size.width * 0.01105733, size.height * 0.6752577);
    path.cubicTo(
        size.width * 0.01104444,
        size.height * 0.6752577,
        size.width * 0.005442667,
        size.height * 0.6773642,
        size.width * 0.003683556,
        size.height * 0.6780260);
    path.cubicTo(
        size.width * 0.003636444,
        size.height * 0.6780430,
        size.width * 0.003574222,
        size.height * 0.6780387,
        size.width * 0.003535556,
        size.height * 0.6780160);
    path.cubicTo(
        size.width * 0.003496889,
        size.height * 0.6779932,
        size.width * 0.003492000,
        size.height * 0.6779582,
        size.width * 0.003524444,
        size.height * 0.6779325);
    path.cubicTo(
        size.width * 0.004405333,
        size.height * 0.6772280,
        size.width * 0.006644889,
        size.height * 0.6754377,
        size.width * 0.007448889,
        size.height * 0.6747950);
    path.cubicTo(
        size.width * 0.007624889,
        size.height * 0.6746545,
        size.width * 0.007624889,
        size.height * 0.6744667,
        size.width * 0.007448889,
        size.height * 0.6743262);
    path.cubicTo(
        size.width * 0.006644444,
        size.height * 0.6736837,
        size.width * 0.004405333,
        size.height * 0.6718950,
        size.width * 0.003524000,
        size.height * 0.6711910);
    path.cubicTo(
        size.width * 0.003492000,
        size.height * 0.6711650,
        size.width * 0.003496889,
        size.height * 0.6711300,
        size.width * 0.003535556,
        size.height * 0.6711072);
    path.cubicTo(
        size.width * 0.003574222,
        size.height * 0.6710842,
        size.width * 0.003636444,
        size.height * 0.6710802,
        size.width * 0.003684000,
        size.height * 0.6710972);
    path.cubicTo(
        size.width * 0.005443111,
        size.height * 0.6717587,
        size.width * 0.01104400,
        size.height * 0.6738635,
        size.width * 0.01105733,
        size.height * 0.6738635);
    path.lineTo(size.width * 0.02394844, size.height * 0.6738635);
    path.cubicTo(
        size.width * 0.02401422,
        size.height * 0.6738635,
        size.width * 0.02182044,
        size.height * 0.6717692,
        size.width * 0.02083111,
        size.height * 0.6708280);
    path.cubicTo(
        size.width * 0.02077689,
        size.height * 0.6707762,
        size.width * 0.02079111,
        size.height * 0.6707105,
        size.width * 0.02086622,
        size.height * 0.6706680);
    path.cubicTo(
        size.width * 0.02094089,
        size.height * 0.6706252,
        size.width * 0.02105778,
        size.height * 0.6706160,
        size.width * 0.02115022,
        size.height * 0.6706460);
    path.cubicTo(
        size.width * 0.02356711,
        size.height * 0.6714615,
        size.width * 0.03070444,
        size.height * 0.6738635,
        size.width * 0.03089022,
        size.height * 0.6738635);
    path.lineTo(size.width * 0.04022889, size.height * 0.6738635);
    path.lineTo(size.width * 0.03510578, size.height * 0.6682447);
    path.lineTo(size.width * 0.04654711, size.height * 0.6679247);
    path.close();
    path.moveTo(size.width * 0.02674089, size.height * 0.7006270);
    path.cubicTo(
        size.width * 0.02653556,
        size.height * 0.7008267,
        size.width * 0.02665778,
        size.height * 0.7010827,
        size.width * 0.02701289,
        size.height * 0.7011982);
    path.lineTo(size.width * 0.02733511, size.height * 0.7013027);
    path.cubicTo(
        size.width * 0.02769067,
        size.height * 0.7014182,
        size.width * 0.02814578,
        size.height * 0.7013497,
        size.width * 0.02835067,
        size.height * 0.7011497);
    path.lineTo(size.width * 0.03000667, size.height * 0.6995365);
    path.cubicTo(
        size.width * 0.03021200,
        size.height * 0.6993365,
        size.width * 0.03008978,
        size.height * 0.6990805,
        size.width * 0.02973467,
        size.height * 0.6989650);
    path.lineTo(size.width * 0.02941244, size.height * 0.6988605);
    path.cubicTo(
        size.width * 0.02905733,
        size.height * 0.6987450,
        size.width * 0.02860222,
        size.height * 0.6988137,
        size.width * 0.02839689,
        size.height * 0.6990135);
    path.lineTo(size.width * 0.02674089, size.height * 0.7006270);
    path.close();
    path.moveTo(size.width * 0.1531213, size.height * 0.6746745);
    path.cubicTo(
        size.width * 0.1534213,
        size.height * 0.6746210,
        size.width * 0.1537493,
        size.height * 0.6746637,
        size.width * 0.1539769,
        size.height * 0.6747860);
    path.cubicTo(
        size.width * 0.1542044,
        size.height * 0.6749085,
        size.width * 0.1542951,
        size.height * 0.6750907,
        size.width * 0.1542138,
        size.height * 0.6752617);
    path.cubicTo(
        size.width * 0.1536964,
        size.height * 0.6763475,
        size.width * 0.1527978,
        size.height * 0.6782342,
        size.width * 0.1521867,
        size.height * 0.6795172);
    path.cubicTo(
        size.width * 0.1518302,
        size.height * 0.6802657,
        size.width * 0.1526200,
        size.height * 0.6810352,
        size.width * 0.1539507,
        size.height * 0.6812357);
    path.cubicTo(
        size.width * 0.1540116,
        size.height * 0.6812450,
        size.width * 0.1540729,
        size.height * 0.6812542,
        size.width * 0.1541338,
        size.height * 0.6812635);
    path.cubicTo(
        size.width * 0.1554649,
        size.height * 0.6814640,
        size.width * 0.1568324,
        size.height * 0.6810197,
        size.width * 0.1571893,
        size.height * 0.6802712);
    path.cubicTo(
        size.width * 0.1577942,
        size.height * 0.6790012,
        size.width * 0.1586809,
        size.height * 0.6771395,
        size.width * 0.1592004,
        size.height * 0.6760490);
    path.cubicTo(
        size.width * 0.1592831,
        size.height * 0.6758752,
        size.width * 0.1595302,
        size.height * 0.6757417,
        size.width * 0.1598418,
        size.height * 0.6757017);
    path.cubicTo(
        size.width * 0.1601533,
        size.height * 0.6756620,
        size.width * 0.1604787,
        size.height * 0.6757225,
        size.width * 0.1606867,
        size.height * 0.6758590);
    path.cubicTo(
        size.width * 0.1621880,
        size.height * 0.6768437,
        size.width * 0.1649236,
        size.height * 0.6786387,
        size.width * 0.1665276,
        size.height * 0.6796910);
    path.cubicTo(
        size.width * 0.1666573,
        size.height * 0.6797762,
        size.width * 0.1668756,
        size.height * 0.6797992,
        size.width * 0.1670511,
        size.height * 0.6797460);
    path.cubicTo(
        size.width * 0.1672271,
        size.height * 0.6796927,
        size.width * 0.1673133,
        size.height * 0.6795777,
        size.width * 0.1672587,
        size.height * 0.6794697);
    path.cubicTo(
        size.width * 0.1660120,
        size.height * 0.6770190,
        size.width * 0.1629640,
        size.height * 0.6710257,
        size.width * 0.1622231,
        size.height * 0.6695682);
    path.cubicTo(
        size.width * 0.1621156,
        size.height * 0.6693570,
        size.width * 0.1621151,
        size.height * 0.6691330,
        size.width * 0.1622218,
        size.height * 0.6689215);
    path.cubicTo(
        size.width * 0.1630431,
        size.height * 0.6672947,
        size.width * 0.1667404,
        size.height * 0.6599702,
        size.width * 0.1682338,
        size.height * 0.6570110);
    path.cubicTo(
        size.width * 0.1683449,
        size.height * 0.6567910,
        size.width * 0.1686756,
        size.height * 0.6566277,
        size.width * 0.1690782,
        size.height * 0.6565947);
    path.cubicTo(
        size.width * 0.1694813,
        size.height * 0.6565615,
        size.width * 0.1698809,
        size.height * 0.6566645,
        size.width * 0.1700996,
        size.height * 0.6568577);
    path.cubicTo(
        size.width * 0.1729400,
        size.height * 0.6593667,
        size.width * 0.1799724,
        size.height * 0.6655785,
        size.width * 0.1837022,
        size.height * 0.6688730);
    path.cubicTo(
        size.width * 0.1838578,
        size.height * 0.6690105,
        size.width * 0.1841707,
        size.height * 0.6690615,
        size.width * 0.1844329,
        size.height * 0.6689922);
    path.cubicTo(
        size.width * 0.1846947,
        size.height * 0.6689227,
        size.width * 0.1848244,
        size.height * 0.6687547,
        size.width * 0.1847356,
        size.height * 0.6685997);
    path.cubicTo(
        size.width * 0.1818053,
        size.height * 0.6634905,
        size.width * 0.1750729,
        size.height * 0.6517527,
        size.width * 0.1732098,
        size.height * 0.6485050);
    path.cubicTo(
        size.width * 0.1728929,
        size.height * 0.6479522,
        size.width * 0.1728667,
        size.height * 0.6473600,
        size.width * 0.1731338,
        size.height * 0.6467992);
    path.cubicTo(
        size.width * 0.1743222,
        size.height * 0.6443040,
        size.width * 0.1777827,
        size.height * 0.6370397,
        size.width * 0.1792431,
        size.height * 0.6339742);
    path.cubicTo(
        size.width * 0.1796089,
        size.height * 0.6332062,
        size.width * 0.1787987,
        size.height * 0.6324170,
        size.width * 0.1774333,
        size.height * 0.6322112);
    path.cubicTo(
        size.width * 0.1774138,
        size.height * 0.6322082,
        size.width * 0.1773942,
        size.height * 0.6322052,
        size.width * 0.1773747,
        size.height * 0.6322025);
    path.cubicTo(
        size.width * 0.1760093,
        size.height * 0.6319965,
        size.width * 0.1746062,
        size.height * 0.6324522,
        size.width * 0.1742404,
        size.height * 0.6332202);
    path.cubicTo(
        size.width * 0.1727844,
        size.height * 0.6362765,
        size.width * 0.1693404,
        size.height * 0.6435067,
        size.width * 0.1681418,
        size.height * 0.6460230);
    path.cubicTo(
        size.width * 0.1678680,
        size.height * 0.6465977,
        size.width * 0.1672978,
        size.height * 0.6471140,
        size.width * 0.1665031,
        size.height * 0.6475067);
    path.cubicTo(
        size.width * 0.1618658,
        size.height * 0.6497995,
        size.width * 0.1452173,
        size.height * 0.6580292,
        size.width * 0.1380173,
        size.height * 0.6615887);
    path.cubicTo(
        size.width * 0.1377996,
        size.height * 0.6616962,
        size.width * 0.1377582,
        size.height * 0.6618777,
        size.width * 0.1379196,
        size.height * 0.6620127);
    path.cubicTo(
        size.width * 0.1380813,
        size.height * 0.6621480,
        size.width * 0.1383964,
        size.height * 0.6621942,
        size.width * 0.1386551,
        size.height * 0.6621212);
    path.cubicTo(
        size.width * 0.1449609,
        size.height * 0.6603425,
        size.width * 0.1569969,
        size.height * 0.6569472,
        size.width * 0.1618031,
        size.height * 0.6555915);
    path.cubicTo(
        size.width * 0.1621671,
        size.height * 0.6554887,
        size.width * 0.1626040,
        size.height * 0.6555160,
        size.width * 0.1629196,
        size.height * 0.6556605);
    path.cubicTo(
        size.width * 0.1632347,
        size.height * 0.6558050,
        size.width * 0.1633698,
        size.height * 0.6560405,
        size.width * 0.1632644,
        size.height * 0.6562615);
    path.cubicTo(
        size.width * 0.1618498,
        size.height * 0.6592320,
        size.width * 0.1583462,
        size.height * 0.6665862,
        size.width * 0.1575680,
        size.height * 0.6682200);
    path.cubicTo(
        size.width * 0.1574671,
        size.height * 0.6684322,
        size.width * 0.1572622,
        size.height * 0.6686247,
        size.width * 0.1569773,
        size.height * 0.6687750);
    path.cubicTo(
        size.width * 0.1549871,
        size.height * 0.6698252,
        size.width * 0.1467236,
        size.height * 0.6741862,
        size.width * 0.1434298,
        size.height * 0.6759242);
    path.cubicTo(
        size.width * 0.1432853,
        size.height * 0.6760005,
        size.width * 0.1432538,
        size.height * 0.6761230,
        size.width * 0.1433538,
        size.height * 0.6762195);
    path.cubicTo(
        size.width * 0.1434542,
        size.height * 0.6763157,
        size.width * 0.1436596,
        size.height * 0.6763600,
        size.width * 0.1438489,
        size.height * 0.6763262);
    path.cubicTo(
        size.width * 0.1463347,
        size.height * 0.6758835,
        size.width * 0.1507973,
        size.height * 0.6750885,
        size.width * 0.1531213,
        size.height * 0.6746745);
    path.close();
    path.moveTo(size.width * 0.1086142, size.height * 0.6752982);
    path.cubicTo(
        size.width * 0.1090244,
        size.height * 0.6752982,
        size.width * 0.1093578,
        size.height * 0.6751107,
        size.width * 0.1093578,
        size.height * 0.6748800);
    path.lineTo(size.width * 0.1093578, size.height * 0.6746707);
    path.cubicTo(
        size.width * 0.1093578,
        size.height * 0.6744400,
        size.width * 0.1090244,
        size.height * 0.6742525,
        size.width * 0.1086142,
        size.height * 0.6742525);
    path.lineTo(size.width * 0.1053022, size.height * 0.6742525);
    path.cubicTo(
        size.width * 0.1048920,
        size.height * 0.6742525,
        size.width * 0.1045587,
        size.height * 0.6744400,
        size.width * 0.1045587,
        size.height * 0.6746707);
    path.lineTo(size.width * 0.1045587, size.height * 0.6748800);
    path.cubicTo(
        size.width * 0.1045587,
        size.height * 0.6751107,
        size.width * 0.1048920,
        size.height * 0.6752982,
        size.width * 0.1053022,
        size.height * 0.6752982);
    path.lineTo(size.width * 0.1086142, size.height * 0.6752982);
    path.close();
    path.moveTo(size.width * 0.0007435556, size.height * 0.6740377);
    path.cubicTo(
        size.width * 0.0003333333,
        size.height * 0.6740377,
        size.width * -2.447425e-17,
        size.height * 0.6742252,
        size.width * -2.447425e-17,
        size.height * 0.6744560);
    path.lineTo(size.width * -2.447425e-17, size.height * 0.6746652);
    path.cubicTo(
        size.width * -2.447425e-17,
        size.height * 0.6748960,
        size.width * 0.0003333333,
        size.height * 0.6750835,
        size.width * 0.0007435556,
        size.height * 0.6750835);
    path.lineTo(size.width * 0.004055556, size.height * 0.6750835);
    path.cubicTo(
        size.width * 0.004465778,
        size.height * 0.6750835,
        size.width * 0.004799111,
        size.height * 0.6748960,
        size.width * 0.004799111,
        size.height * 0.6746652);
    path.lineTo(size.width * 0.004799111, size.height * 0.6744560);
    path.cubicTo(
        size.width * 0.004799111,
        size.height * 0.6742252,
        size.width * 0.004465778,
        size.height * 0.6740377,
        size.width * 0.004055556,
        size.height * 0.6740377);
    path.lineTo(size.width * 0.0007435556, size.height * 0.6740377);
    path.close();
    path.moveTo(size.width * 0.2635196, size.height * 0.6603147);
    path.cubicTo(
        size.width * 0.2635876,
        size.height * 0.6601420,
        size.width * 0.2638173,
        size.height * 0.6600035,
        size.width * 0.2641196,
        size.height * 0.6599540);
    path.cubicTo(
        size.width * 0.2644218,
        size.height * 0.6599042,
        size.width * 0.2647476,
        size.height * 0.6599512,
        size.width * 0.2649702,
        size.height * 0.6600765);
    path.cubicTo(
        size.width * 0.2663831,
        size.height * 0.6608712,
        size.width * 0.2688387,
        size.height * 0.6622522,
        size.width * 0.2705084,
        size.height * 0.6631915);
    path.cubicTo(
        size.width * 0.2714827,
        size.height * 0.6637395,
        size.width * 0.2730622,
        size.height * 0.6637395,
        size.width * 0.2740364,
        size.height * 0.6631915);
    path.cubicTo(
        size.width * 0.2740809,
        size.height * 0.6631665,
        size.width * 0.2741258,
        size.height * 0.6631412,
        size.width * 0.2741707,
        size.height * 0.6631160);
    path.cubicTo(
        size.width * 0.2751449,
        size.height * 0.6625680,
        size.width * 0.2751449,
        size.height * 0.6616795,
        size.width * 0.2741707,
        size.height * 0.6611315);
    path.cubicTo(
        size.width * 0.2725178,
        size.height * 0.6602020,
        size.width * 0.2700951,
        size.height * 0.6588390,
        size.width * 0.2686756,
        size.height * 0.6580407);
    path.cubicTo(
        size.width * 0.2684493,
        size.height * 0.6579135,
        size.width * 0.2683671,
        size.height * 0.6577265,
        size.width * 0.2684618,
        size.height * 0.6575547);
    path.cubicTo(
        size.width * 0.2685560,
        size.height * 0.6573830,
        size.width * 0.2688120,
        size.height * 0.6572547,
        size.width * 0.2691262,
        size.height * 0.6572217);
    path.cubicTo(
        size.width * 0.2713929,
        size.height * 0.6569830,
        size.width * 0.2755244,
        size.height * 0.6565477,
        size.width * 0.2779467,
        size.height * 0.6562925);
    path.cubicTo(
        size.width * 0.2781427,
        size.height * 0.6562720,
        size.width * 0.2782871,
        size.height * 0.6561770,
        size.width * 0.2782929,
        size.height * 0.6560647);
    path.cubicTo(
        size.width * 0.2782991,
        size.height * 0.6559525,
        size.width * 0.2781649,
        size.height * 0.6558530,
        size.width * 0.2779711,
        size.height * 0.6558257);
    path.cubicTo(
        size.width * 0.2735747,
        size.height * 0.6552075,
        size.width * 0.2628236,
        size.height * 0.6536957,
        size.width * 0.2602093,
        size.height * 0.6533280);
    path.cubicTo(
        size.width * 0.2598302,
        size.height * 0.6532747,
        size.width * 0.2594849,
        size.height * 0.6531630,
        size.width * 0.2592129,
        size.height * 0.6530052);
    path.cubicTo(
        size.width * 0.2571191,
        size.height * 0.6517917,
        size.width * 0.2476907,
        size.height * 0.6463285,
        size.width * 0.2438818,
        size.height * 0.6441212);
    path.cubicTo(
        size.width * 0.2435982,
        size.height * 0.6439570,
        size.width * 0.2435124,
        size.height * 0.6437145,
        size.width * 0.2436627,
        size.height * 0.6435017);
    path.cubicTo(
        size.width * 0.2438133,
        size.height * 0.6432890,
        size.width * 0.2441716,
        size.height * 0.6431457,
        size.width * 0.2445782,
        size.height * 0.6431357);
    path.cubicTo(
        size.width * 0.2498613,
        size.height * 0.6430065,
        size.width * 0.2629413,
        size.height * 0.6426867,
        size.width * 0.2698787,
        size.height * 0.6425170);
    path.cubicTo(
        size.width * 0.2701680,
        size.height * 0.6425100,
        size.width * 0.2704027,
        size.height * 0.6423830,
        size.width * 0.2704271,
        size.height * 0.6422207);
    path.cubicTo(
        size.width * 0.2704516,
        size.height * 0.6420582,
        size.width * 0.2702573,
        size.height * 0.6419112,
        size.width * 0.2699742,
        size.height * 0.6418770);
    path.cubicTo(
        size.width * 0.2606427,
        size.height * 0.6407500,
        size.width * 0.2392053,
        size.height * 0.6381605,
        size.width * 0.2332733,
        size.height * 0.6374442);
    path.cubicTo(
        size.width * 0.2322644,
        size.height * 0.6373222,
        size.width * 0.2313391,
        size.height * 0.6370390,
        size.width * 0.2306093,
        size.height * 0.6366285);
    path.cubicTo(
        size.width * 0.2273618,
        size.height * 0.6348017,
        size.width * 0.2179080,
        size.height * 0.6294840,
        size.width * 0.2139187,
        size.height * 0.6272400);
    path.cubicTo(
        size.width * 0.2129191,
        size.height * 0.6266777,
        size.width * 0.2112987,
        size.height * 0.6266777,
        size.width * 0.2102991,
        size.height * 0.6272400);
    path.cubicTo(
        size.width * 0.2102849,
        size.height * 0.6272480,
        size.width * 0.2102707,
        size.height * 0.6272560,
        size.width * 0.2102564,
        size.height * 0.6272640);
    path.cubicTo(
        size.width * 0.2092569,
        size.height * 0.6278262,
        size.width * 0.2092569,
        size.height * 0.6287377,
        size.width * 0.2102564,
        size.height * 0.6293000);
    path.cubicTo(
        size.width * 0.2142342,
        size.height * 0.6315372,
        size.width * 0.2236436,
        size.height * 0.6368302,
        size.width * 0.2269182,
        size.height * 0.6386720);
    path.cubicTo(
        size.width * 0.2276662,
        size.height * 0.6390927,
        size.width * 0.2281760,
        size.height * 0.6396287,
        size.width * 0.2283836,
        size.height * 0.6402122);
    path.cubicTo(
        size.width * 0.2295942,
        size.height * 0.6436177,
        size.width * 0.2339409,
        size.height * 0.6558427,
        size.width * 0.2358209,
        size.height * 0.6611297);
    path.cubicTo(
        size.width * 0.2358778,
        size.height * 0.6612895,
        size.width * 0.2361364,
        size.height * 0.6614007,
        size.width * 0.2364253,
        size.height * 0.6613892);
    path.cubicTo(
        size.width * 0.2367138,
        size.height * 0.6613780,
        size.width * 0.2369431,
        size.height * 0.6612480,
        size.width * 0.2369600,
        size.height * 0.6610852);
    path.cubicTo(
        size.width * 0.2373742,
        size.height * 0.6571242,
        size.width * 0.2381649,
        size.height * 0.6495632,
        size.width * 0.2384804,
        size.height * 0.6465440);
    path.cubicTo(
        size.width * 0.2385044,
        size.height * 0.6463155,
        size.width * 0.2387644,
        size.height * 0.6461162,
        size.width * 0.2391449,
        size.height * 0.6460350);
    path.cubicTo(
        size.width * 0.2395253,
        size.height * 0.6459535,
        size.width * 0.2399551,
        size.height * 0.6460052,
        size.width * 0.2402427,
        size.height * 0.6461672);
    path.cubicTo(
        size.width * 0.2441084,
        size.height * 0.6483417,
        size.width * 0.2536796,
        size.height * 0.6537255,
        size.width * 0.2558058,
        size.height * 0.6549215);
    path.cubicTo(
        size.width * 0.2560822,
        size.height * 0.6550770,
        size.width * 0.2562760,
        size.height * 0.6552727,
        size.width * 0.2563649,
        size.height * 0.6554867);
    path.cubicTo(
        size.width * 0.2569871,
        size.height * 0.6569815,
        size.width * 0.2595689,
        size.height * 0.6631875,
        size.width * 0.2605982,
        size.height * 0.6656610);
    path.cubicTo(
        size.width * 0.2606436,
        size.height * 0.6657695,
        size.width * 0.2608164,
        size.height * 0.6658462,
        size.width * 0.2610147,
        size.height * 0.6658455);
    path.cubicTo(
        size.width * 0.2612129,
        size.height * 0.6658447,
        size.width * 0.2613840,
        size.height * 0.6657667,
        size.width * 0.2614267,
        size.height * 0.6656580);
    path.cubicTo(
        size.width * 0.2619880,
        size.height * 0.6642255,
        size.width * 0.2629951,
        size.height * 0.6616540,
        size.width * 0.2635196,
        size.height * 0.6603147);
    path.close();
    path.moveTo(size.width * 0.1854293, size.height * 0.6522062);
    path.cubicTo(
        size.width * 0.1853871,
        size.height * 0.6524922,
        size.width * 0.1855547,
        size.height * 0.6527752,
        size.width * 0.1858929,
        size.height * 0.6529900);
    path.cubicTo(
        size.width * 0.1876573,
        size.height * 0.6541092,
        size.width * 0.1933707,
        size.height * 0.6577332,
        size.width * 0.1960000,
        size.height * 0.6594010);
    path.cubicTo(
        size.width * 0.1962547,
        size.height * 0.6595630,
        size.width * 0.1966507,
        size.height * 0.6596297,
        size.width * 0.1970218,
        size.height * 0.6595737);
    path.cubicTo(
        size.width * 0.1973929,
        size.height * 0.6595177,
        size.width * 0.1976764,
        size.height * 0.6593487,
        size.width * 0.1977533,
        size.height * 0.6591367);
    path.cubicTo(
        size.width * 0.1985476,
        size.height * 0.6569530,
        size.width * 0.2002742,
        size.height * 0.6522075,
        size.width * 0.2008071,
        size.height * 0.6507420);
    path.cubicTo(
        size.width * 0.2009093,
        size.height * 0.6504610,
        size.width * 0.2008031,
        size.height * 0.6501685,
        size.width * 0.2005124,
        size.height * 0.6499330);
    path.cubicTo(
        size.width * 0.1986440,
        size.height * 0.6484177,
        size.width * 0.1915236,
        size.height * 0.6426437,
        size.width * 0.1886031,
        size.height * 0.6402752);
    path.cubicTo(
        size.width * 0.1884120,
        size.height * 0.6401202,
        size.width * 0.1880684,
        size.height * 0.6400495,
        size.width * 0.1877444,
        size.height * 0.6400982);
    path.cubicTo(
        size.width * 0.1874204,
        size.height * 0.6401470,
        size.width * 0.1871862,
        size.height * 0.6403050,
        size.width * 0.1871582,
        size.height * 0.6404930);
    path.cubicTo(
        size.width * 0.1867342,
        size.height * 0.6433657,
        size.width * 0.1857004,
        size.height * 0.6503685,
        size.width * 0.1854293,
        size.height * 0.6522062);
    path.close();
    path.moveTo(size.width * 0.2211053, size.height * 0.6468290);
    path.cubicTo(
        size.width * 0.2213960,
        size.height * 0.6470647,
        size.width * 0.2215027,
        size.height * 0.6473572,
        size.width * 0.2214004,
        size.height * 0.6476382);
    path.cubicTo(
        size.width * 0.2208671,
        size.height * 0.6491037,
        size.width * 0.2191409,
        size.height * 0.6538492,
        size.width * 0.2183462,
        size.height * 0.6560330);
    path.cubicTo(
        size.width * 0.2182693,
        size.height * 0.6562447,
        size.width * 0.2179858,
        size.height * 0.6564140,
        size.width * 0.2176147,
        size.height * 0.6564700);
    path.cubicTo(
        size.width * 0.2172436,
        size.height * 0.6565260,
        size.width * 0.2168480,
        size.height * 0.6564590,
        size.width * 0.2165929,
        size.height * 0.6562972);
    path.cubicTo(
        size.width * 0.2139636,
        size.height * 0.6546295,
        size.width * 0.2082502,
        size.height * 0.6510055,
        size.width * 0.2064858,
        size.height * 0.6498862);
    path.cubicTo(
        size.width * 0.2061476,
        size.height * 0.6496715,
        size.width * 0.2059800,
        size.height * 0.6493883,
        size.width * 0.2060222,
        size.height * 0.6491025);
    path.cubicTo(
        size.width * 0.2062933,
        size.height * 0.6472647,
        size.width * 0.2073271,
        size.height * 0.6402617,
        size.width * 0.2077511,
        size.height * 0.6373892);
    path.cubicTo(
        size.width * 0.2077791,
        size.height * 0.6372012,
        size.width * 0.2080138,
        size.height * 0.6370432,
        size.width * 0.2083373,
        size.height * 0.6369945);
    path.cubicTo(
        size.width * 0.2086613,
        size.height * 0.6369457,
        size.width * 0.2090049,
        size.height * 0.6370165,
        size.width * 0.2091960,
        size.height * 0.6371715);
    path.cubicTo(
        size.width * 0.2121169,
        size.height * 0.6395400,
        size.width * 0.2192369,
        size.height * 0.6453140,
        size.width * 0.2211053,
        size.height * 0.6468290);
    path.close();
    path.moveTo(size.width * 0.1526769, size.height * 0.6472697);
    path.cubicTo(
        size.width * 0.1524591,
        size.height * 0.6475292,
        size.width * 0.1520622,
        size.height * 0.6477272,
        size.width * 0.1515787,
        size.height * 0.6478180);
    path.cubicTo(
        size.width * 0.1490556,
        size.height * 0.6482910,
        size.width * 0.1408862,
        size.height * 0.6498227,
        size.width * 0.1371271,
        size.height * 0.6505277);
    path.cubicTo(
        size.width * 0.1367622,
        size.height * 0.6505960,
        size.width * 0.1363600,
        size.height * 0.6505427,
        size.width * 0.1360884,
        size.height * 0.6503897);
    path.cubicTo(
        size.width * 0.1358164,
        size.height * 0.6502370,
        size.width * 0.1357218,
        size.height * 0.6500107,
        size.width * 0.1358431,
        size.height * 0.6498057);
    path.cubicTo(
        size.width * 0.1370964,
        size.height * 0.6476910,
        size.width * 0.1398196,
        size.height * 0.6430957,
        size.width * 0.1406604,
        size.height * 0.6416765);
    path.cubicTo(
        size.width * 0.1408218,
        size.height * 0.6414045,
        size.width * 0.1411738,
        size.height * 0.6411812,
        size.width * 0.1416351,
        size.height * 0.6410587);
    path.cubicTo(
        size.width * 0.1446000,
        size.height * 0.6402722,
        size.width * 0.1558987,
        size.height * 0.6372742,
        size.width * 0.1605333,
        size.height * 0.6360445);
    path.cubicTo(
        size.width * 0.1608369,
        size.height * 0.6359640,
        size.width * 0.1611973,
        size.height * 0.6359995,
        size.width * 0.1614342,
        size.height * 0.6361328);
    path.cubicTo(
        size.width * 0.1616716,
        size.height * 0.6362663,
        size.width * 0.1617342,
        size.height * 0.6364688,
        size.width * 0.1615911,
        size.height * 0.6366395);
    path.cubicTo(
        size.width * 0.1594049,
        size.height * 0.6392465,
        size.width * 0.1540756,
        size.height * 0.6456020,
        size.width * 0.1526769,
        size.height * 0.6472698);
    path.close();
    path.moveTo(size.width * 0.08261689, size.height * 0.6487090);
    path.cubicTo(
        size.width * 0.08282222,
        size.height * 0.6485092,
        size.width * 0.08270000,
        size.height * 0.6482532,
        size.width * 0.08234489,
        size.height * 0.6481377);
    path.lineTo(size.width * 0.08202267, size.height * 0.6480332);
    path.cubicTo(
        size.width * 0.08166711,
        size.height * 0.6479177,
        size.width * 0.08121200,
        size.height * 0.6479862,
        size.width * 0.08100711,
        size.height * 0.6481862);
    path.lineTo(size.width * 0.07935111, size.height * 0.6497997);
    path.cubicTo(
        size.width * 0.07914578,
        size.height * 0.6499995,
        size.width * 0.07926800,
        size.height * 0.6502555,
        size.width * 0.07962311,
        size.height * 0.6503710);
    path.lineTo(size.width * 0.07994533, size.height * 0.6504755);
    path.cubicTo(
        size.width * 0.08030044,
        size.height * 0.6505910,
        size.width * 0.08075556,
        size.height * 0.6505222,
        size.width * 0.08096089,
        size.height * 0.6503225);
    path.lineTo(size.width * 0.08261689, size.height * 0.6487090);
    path.close();
    path.moveTo(size.width * 0.02868133, size.height * 0.6480790);
    path.cubicTo(
        size.width * 0.02847644,
        size.height * 0.6478790,
        size.width * 0.02802133,
        size.height * 0.6478102,
        size.width * 0.02766578,
        size.height * 0.6479257);
    path.lineTo(size.width * 0.02734400, size.height * 0.6480302);
    path.cubicTo(
        size.width * 0.02698844,
        size.height * 0.6481457,
        size.width * 0.02686667,
        size.height * 0.6484017,
        size.width * 0.02707156,
        size.height * 0.6486017);
    path.lineTo(size.width * 0.02872756, size.height * 0.6502150);
    path.cubicTo(
        size.width * 0.02893289,
        size.height * 0.6504150,
        size.width * 0.02938800,
        size.height * 0.6504835,
        size.width * 0.02974311,
        size.height * 0.6503682);
    path.lineTo(size.width * 0.03006533, size.height * 0.6502635);
    path.cubicTo(
        size.width * 0.03042089,
        size.height * 0.6501482,
        size.width * 0.03054267,
        size.height * 0.6498922,
        size.width * 0.03033733,
        size.height * 0.6496922);
    path.lineTo(size.width * 0.02868133, size.height * 0.6480790);
    path.close();
    path.moveTo(size.width * 0.1265600, size.height * 0.6325790);
    path.cubicTo(
        size.width * 0.1260987,
        size.height * 0.6327015,
        size.width * 0.1257467,
        size.height * 0.6329247,
        size.width * 0.1255853,
        size.height * 0.6331970);
    path.cubicTo(
        size.width * 0.1247444,
        size.height * 0.6346160,
        size.width * 0.1220213,
        size.height * 0.6392112,
        size.width * 0.1207680,
        size.height * 0.6413260);
    path.cubicTo(
        size.width * 0.1206467,
        size.height * 0.6415310,
        size.width * 0.1207413,
        size.height * 0.6417572,
        size.width * 0.1210133,
        size.height * 0.6419100);
    path.cubicTo(
        size.width * 0.1212853,
        size.height * 0.6420630,
        size.width * 0.1216871,
        size.height * 0.6421162,
        size.width * 0.1220520,
        size.height * 0.6420480);
    path.cubicTo(
        size.width * 0.1258111,
        size.height * 0.6413430,
        size.width * 0.1339804,
        size.height * 0.6398112,
        size.width * 0.1365036,
        size.height * 0.6393382);
    path.cubicTo(
        size.width * 0.1369871,
        size.height * 0.6392475,
        size.width * 0.1373840,
        size.height * 0.6390495,
        size.width * 0.1376018,
        size.height * 0.6387900);
    path.cubicTo(
        size.width * 0.1390004,
        size.height * 0.6371222,
        size.width * 0.1443298,
        size.height * 0.6307667,
        size.width * 0.1465160,
        size.height * 0.6281597);
    path.cubicTo(
        size.width * 0.1466591,
        size.height * 0.6279892,
        size.width * 0.1465964,
        size.height * 0.6277865,
        size.width * 0.1463591,
        size.height * 0.6276530);
    path.cubicTo(
        size.width * 0.1461222,
        size.height * 0.6275197,
        size.width * 0.1457618,
        size.height * 0.6274842,
        size.width * 0.1454582,
        size.height * 0.6275647);
    path.cubicTo(
        size.width * 0.1408236,
        size.height * 0.6287945,
        size.width * 0.1295249,
        size.height * 0.6317925,
        size.width * 0.1265600,
        size.height * 0.6325790);
    path.close();
    path.moveTo(size.width * 0.07581422, size.height * 0.6280747);
    path.cubicTo(
        size.width * 0.07604667,
        size.height * 0.6281942,
        size.width * 0.07614444,
        size.height * 0.6283755,
        size.width * 0.07607022,
        size.height * 0.6285475);
    path.cubicTo(
        size.width * 0.07599556,
        size.height * 0.6287195,
        size.width * 0.07576000,
        size.height * 0.6288547,
        size.width * 0.07545600,
        size.height * 0.6289007);
    path.cubicTo(
        size.width * 0.07352578,
        size.height * 0.6291915,
        size.width * 0.07017156,
        size.height * 0.6296970,
        size.width * 0.06789111,
        size.height * 0.6300407);
    path.cubicTo(
        size.width * 0.06656000,
        size.height * 0.6302415,
        size.width * 0.06577022,
        size.height * 0.6310110,
        size.width * 0.06612711,
        size.height * 0.6317595);
    path.cubicTo(
        size.width * 0.06614311,
        size.height * 0.6317937,
        size.width * 0.06615956,
        size.height * 0.6318282,
        size.width * 0.06617600,
        size.height * 0.6318625);
    path.cubicTo(
        size.width * 0.06653244,
        size.height * 0.6326112,
        size.width * 0.06790044,
        size.height * 0.6330555,
        size.width * 0.06923111,
        size.height * 0.6328547);
    path.cubicTo(
        size.width * 0.07148933,
        size.height * 0.6325145,
        size.width * 0.07479867,
        size.height * 0.6320157,
        size.width * 0.07673778,
        size.height * 0.6317235);
    path.cubicTo(
        size.width * 0.07704622,
        size.height * 0.6316770,
        size.width * 0.07737556,
        size.height * 0.6317302,
        size.width * 0.07759244,
        size.height * 0.6318622);
    path.cubicTo(
        size.width * 0.07780978,
        size.height * 0.6319942,
        size.width * 0.07787911,
        size.height * 0.6321827,
        size.width * 0.07777333,
        size.height * 0.6323525);
    path.cubicTo(
        size.width * 0.07700756,
        size.height * 0.6335760,
        size.width * 0.07561200,
        size.height * 0.6358062,
        size.width * 0.07479378,
        size.height * 0.6371137);
    path.cubicTo(
        size.width * 0.07472711,
        size.height * 0.6372197,
        size.width * 0.07480089,
        size.height * 0.6373372,
        size.width * 0.07497111,
        size.height * 0.6373965);
    path.cubicTo(
        size.width * 0.07514089,
        size.height * 0.6374555,
        size.width * 0.07536089,
        size.height * 0.6374400,
        size.width * 0.07549956,
        size.height * 0.6373592);
    path.cubicTo(
        size.width * 0.07864978,
        size.height * 0.6355265,
        size.width * 0.08635333,
        size.height * 0.6310452,
        size.width * 0.08822622,
        size.height * 0.6299555);
    path.cubicTo(
        size.width * 0.08849778,
        size.height * 0.6297975,
        size.width * 0.08884267,
        size.height * 0.6296852,
        size.width * 0.08922178,
        size.height * 0.6296315);
    path.cubicTo(
        size.width * 0.09213644,
        size.height * 0.6292182,
        size.width * 0.1052622,
        size.height * 0.6273570,
        size.width * 0.1105649,
        size.height * 0.6266050);
    path.cubicTo(
        size.width * 0.1109596,
        size.height * 0.6265490,
        size.width * 0.1113760,
        size.height * 0.6266287,
        size.width * 0.1116280,
        size.height * 0.6268082);
    path.cubicTo(
        size.width * 0.1118804,
        size.height * 0.6269877,
        size.width * 0.1119218,
        size.height * 0.6272340,
        size.width * 0.1117338,
        size.height * 0.6274372);
    path.cubicTo(
        size.width * 0.1092911,
        size.height * 0.6300755,
        size.width * 0.1032436,
        size.height * 0.6366072,
        size.width * 0.1000364,
        size.height * 0.6400712);
    path.cubicTo(
        size.width * 0.09990267,
        size.height * 0.6402157,
        size.width * 0.09998044,
        size.height * 0.6403937,
        size.width * 0.1002182,
        size.height * 0.6404867);
    path.cubicTo(
        size.width * 0.1004560,
        size.height * 0.6405797,
        size.width * 0.1007796,
        size.height * 0.6405587,
        size.width * 0.1009738,
        size.height * 0.6404380);
    path.cubicTo(
        size.width * 0.1073751,
        size.height * 0.6364557,
        size.width * 0.1220800,
        size.height * 0.6273075,
        size.width * 0.1261489,
        size.height * 0.6247760);
    path.cubicTo(
        size.width * 0.1268413,
        size.height * 0.6243452,
        size.width * 0.1277400,
        size.height * 0.6240362,
        size.width * 0.1287369,
        size.height * 0.6238860);
    path.cubicTo(
        size.width * 0.1331729,
        size.height * 0.6232175,
        size.width * 0.1460871,
        size.height * 0.6212710,
        size.width * 0.1515369,
        size.height * 0.6204495);
    path.cubicTo(
        size.width * 0.1529022,
        size.height * 0.6202437,
        size.width * 0.1537124,
        size.height * 0.6194545,
        size.width * 0.1533467,
        size.height * 0.6186865);
    path.cubicTo(
        size.width * 0.1533413,
        size.height * 0.6186755,
        size.width * 0.1533360,
        size.height * 0.6186645,
        size.width * 0.1533307,
        size.height * 0.6186535);
    path.cubicTo(
        size.width * 0.1529649,
        size.height * 0.6178855,
        size.width * 0.1515618,
        size.height * 0.6174300,
        size.width * 0.1501964,
        size.height * 0.6176357);
    path.cubicTo(
        size.width * 0.1447631,
        size.height * 0.6184545,
        size.width * 0.1319093,
        size.height * 0.6203920,
        size.width * 0.1274364,
        size.height * 0.6210660);
    path.cubicTo(
        size.width * 0.1264142,
        size.height * 0.6212200,
        size.width * 0.1253342,
        size.height * 0.6212005,
        size.width * 0.1243324,
        size.height * 0.6210097);
    path.cubicTo(
        size.width * 0.1184840,
        size.height * 0.6198970,
        size.width * 0.09748889,
        size.height * 0.6159020,
        size.width * 0.08840889,
        size.height * 0.6141740);
    path.cubicTo(
        size.width * 0.08813467,
        size.height * 0.6141220,
        size.width * 0.08783422,
        size.height * 0.6141925,
        size.width * 0.08770711,
        size.height * 0.6143387);
    path.cubicTo(
        size.width * 0.08758000,
        size.height * 0.6144850,
        size.width * 0.08766622,
        size.height * 0.6146617,
        size.width * 0.08790800,
        size.height * 0.6147512);
    path.cubicTo(
        size.width * 0.09379911,
        size.height * 0.6169335,
        size.width * 0.1050449,
        size.height * 0.6210992,
        size.width * 0.1095351,
        size.height * 0.6227627);
    path.cubicTo(
        size.width * 0.1098751,
        size.height * 0.6228885,
        size.width * 0.1100520,
        size.height * 0.6231150,
        size.width * 0.1099871,
        size.height * 0.6233407);
    path.cubicTo(
        size.width * 0.1099222,
        size.height * 0.6235667,
        size.width * 0.1096276,
        size.height * 0.6237502,
        size.width * 0.1092342,
        size.height * 0.6238095);
    path.cubicTo(
        size.width * 0.1039538,
        size.height * 0.6246055,
        size.width * 0.09087911,
        size.height * 0.6265760,
        size.width * 0.08797467,
        size.height * 0.6270137);
    path.cubicTo(
        size.width * 0.08759733,
        size.height * 0.6270707,
        size.width * 0.08719911,
        size.height * 0.6270670,
        size.width * 0.08682489,
        size.height * 0.6270035);
    path.cubicTo(
        size.width * 0.08421244,
        size.height * 0.6265590,
        size.width * 0.07336711,
        size.height * 0.6247140,
        size.width * 0.06904400,
        size.height * 0.6239785);
    path.cubicTo(
        size.width * 0.06885422,
        size.height * 0.6239462,
        size.width * 0.06864978,
        size.height * 0.6239922,
        size.width * 0.06855200,
        size.height * 0.6240892);
    path.cubicTo(
        size.width * 0.06845378,
        size.height * 0.6241862,
        size.width * 0.06848800,
        size.height * 0.6243085,
        size.width * 0.06863467,
        size.height * 0.6243837);
    path.cubicTo(
        size.width * 0.07055911,
        size.height * 0.6253732,
        size.width * 0.07401467,
        size.height * 0.6271497,
        size.width * 0.07581422,
        size.height * 0.6280747);
    path.close();
    path.moveTo(size.width * 0.2450818, size.height * 0.6333422);
    path.cubicTo(
        size.width * 0.2455009,
        size.height * 0.6335057,
        size.width * 0.2460204,
        size.height * 0.6335657,
        size.width * 0.2465200,
        size.height * 0.6335082);
    path.cubicTo(
        size.width * 0.2491253,
        size.height * 0.6332085,
        size.width * 0.2575618,
        size.height * 0.6322372,
        size.width * 0.2614440,
        size.height * 0.6317905);
    path.cubicTo(
        size.width * 0.2618209,
        size.height * 0.6317470,
        size.width * 0.2621213,
        size.height * 0.6315877,
        size.width * 0.2622209,
        size.height * 0.6313790);
    path.cubicTo(
        size.width * 0.2623204,
        size.height * 0.6311700,
        size.width * 0.2622018,
        size.height * 0.6309475,
        size.width * 0.2619142,
        size.height * 0.6308040);
    path.cubicTo(
        size.width * 0.2589493,
        size.height * 0.6293252,
        size.width * 0.2525062,
        size.height * 0.6261115,
        size.width * 0.2505164,
        size.height * 0.6251190);
    path.cubicTo(
        size.width * 0.2501347,
        size.height * 0.6249287,
        size.width * 0.2496316,
        size.height * 0.6248345,
        size.width * 0.2491231,
        size.height * 0.6248582);
    path.cubicTo(
        size.width * 0.2458560,
        size.height * 0.6250107,
        size.width * 0.2334067,
        size.height * 0.6255922,
        size.width * 0.2282996,
        size.height * 0.6258307);
    path.cubicTo(
        size.width * 0.2279653,
        size.height * 0.6258465,
        size.width * 0.2276849,
        size.height * 0.6259782,
        size.width * 0.2275978,
        size.height * 0.6261605);
    path.cubicTo(
        size.width * 0.2275111,
        size.height * 0.6263427,
        size.width * 0.2276369,
        size.height * 0.6265360,
        size.width * 0.2279124,
        size.height * 0.6266435);
    path.cubicTo(
        size.width * 0.2321231,
        size.height * 0.6282862,
        size.width * 0.2423880,
        size.height * 0.6322912,
        size.width * 0.2450818,
        size.height * 0.6333422);
    path.close();
    path.moveTo(size.width * 0.1942551, size.height * 0.5968317);
    path.cubicTo(
        size.width * 0.2108209,
        size.height * 0.5993285,
        size.width * 0.2206667,
        size.height * 0.6089208,
        size.width * 0.2162280,
        size.height * 0.6182393);
    path.cubicTo(
        size.width * 0.2117889,
        size.height * 0.6275575,
        size.width * 0.1947360,
        size.height * 0.6330957,
        size.width * 0.1781702,
        size.height * 0.6305987);
    path.cubicTo(
        size.width * 0.1616040,
        size.height * 0.6281020,
        size.width * 0.1517587,
        size.height * 0.6185095,
        size.width * 0.1561973,
        size.height * 0.6091912);
    path.cubicTo(
        size.width * 0.1606360,
        size.height * 0.5998730,
        size.width * 0.1776893,
        size.height * 0.5943348,
        size.width * 0.1942551,
        size.height * 0.5968317);
    path.close();
    path.moveTo(size.width * 0.2546409, size.height * 0.6132745);
    path.cubicTo(
        size.width * 0.2551493,
        size.height * 0.6132508,
        size.width * 0.2556529,
        size.height * 0.6133450,
        size.width * 0.2560342,
        size.height * 0.6135355);
    path.cubicTo(
        size.width * 0.2580240,
        size.height * 0.6145280,
        size.width * 0.2644671,
        size.height * 0.6177417,
        size.width * 0.2674320,
        size.height * 0.6192205);
    path.cubicTo(
        size.width * 0.2677196,
        size.height * 0.6193640,
        size.width * 0.2678382,
        size.height * 0.6195865,
        size.width * 0.2677387,
        size.height * 0.6197955);
    path.cubicTo(
        size.width * 0.2676396,
        size.height * 0.6200042,
        size.width * 0.2673387,
        size.height * 0.6201635,
        size.width * 0.2669622,
        size.height * 0.6202070);
    path.cubicTo(
        size.width * 0.2630800,
        size.height * 0.6206537,
        size.width * 0.2546436,
        size.height * 0.6216247,
        size.width * 0.2520382,
        size.height * 0.6219248);
    path.cubicTo(
        size.width * 0.2515382,
        size.height * 0.6219823,
        size.width * 0.2510187,
        size.height * 0.6219223,
        size.width * 0.2505996,
        size.height * 0.6217587);
    path.cubicTo(
        size.width * 0.2479058,
        size.height * 0.6207077,
        size.width * 0.2376409,
        size.height * 0.6167027,
        size.width * 0.2334302,
        size.height * 0.6150598);
    path.cubicTo(
        size.width * 0.2331547,
        size.height * 0.6149523,
        size.width * 0.2330289,
        size.height * 0.6147592,
        size.width * 0.2331156,
        size.height * 0.6145770);
    path.cubicTo(
        size.width * 0.2332027,
        size.height * 0.6143947,
        size.width * 0.2334831,
        size.height * 0.6142627,
        size.width * 0.2338173,
        size.height * 0.6142473);
    path.cubicTo(
        size.width * 0.2389244,
        size.height * 0.6140087,
        size.width * 0.2513742,
        size.height * 0.6134272,
        size.width * 0.2546409,
        size.height * 0.6132745);
    path.close();
    path.moveTo(size.width * 0.1177840, size.height * 0.6141560);
    path.cubicTo(
        size.width * 0.1172760,
        size.height * 0.6141795,
        size.width * 0.1167724,
        size.height * 0.6140853,
        size.width * 0.1163907,
        size.height * 0.6138950);
    path.cubicTo(
        size.width * 0.1144013,
        size.height * 0.6129025,
        size.width * 0.1079582,
        size.height * 0.6096888,
        size.width * 0.1049933,
        size.height * 0.6082100);
    path.cubicTo(
        size.width * 0.1047058,
        size.height * 0.6080665,
        size.width * 0.1045867,
        size.height * 0.6078440,
        size.width * 0.1046862,
        size.height * 0.6076350);
    path.cubicTo(
        size.width * 0.1047858,
        size.height * 0.6074262,
        size.width * 0.1050867,
        size.height * 0.6072670,
        size.width * 0.1054631,
        size.height * 0.6072235);
    path.cubicTo(
        size.width * 0.1093453,
        size.height * 0.6067767,
        size.width * 0.1177818,
        size.height * 0.6058055,
        size.width * 0.1203871,
        size.height * 0.6055057);
    path.cubicTo(
        size.width * 0.1208867,
        size.height * 0.6054482,
        size.width * 0.1214067,
        size.height * 0.6055082,
        size.width * 0.1218258,
        size.height * 0.6056717);
    path.cubicTo(
        size.width * 0.1245191,
        size.height * 0.6067227,
        size.width * 0.1347840,
        size.height * 0.6107278,
        size.width * 0.1389947,
        size.height * 0.6123705);
    path.cubicTo(
        size.width * 0.1392702,
        size.height * 0.6124780,
        size.width * 0.1393960,
        size.height * 0.6126713,
        size.width * 0.1393093,
        size.height * 0.6128535);
    path.cubicTo(
        size.width * 0.1392227,
        size.height * 0.6130357,
        size.width * 0.1389418,
        size.height * 0.6131677,
        size.width * 0.1386076,
        size.height * 0.6131832);
    path.cubicTo(
        size.width * 0.1335009,
        size.height * 0.6134217,
        size.width * 0.1210511,
        size.height * 0.6140033,
        size.width * 0.1177840,
        size.height * 0.6141560);
    path.close();
    path.moveTo(size.width * 0.2966107, size.height * 0.5993557);
    path.cubicTo(
        size.width * 0.2963787,
        size.height * 0.5992362,
        size.width * 0.2962804,
        size.height * 0.5990550,
        size.width * 0.2963551,
        size.height * 0.5988830);
    path.cubicTo(
        size.width * 0.2964298,
        size.height * 0.5987110,
        size.width * 0.2966649,
        size.height * 0.5985757,
        size.width * 0.2969689,
        size.height * 0.5985297);
    path.cubicTo(
        size.width * 0.2988991,
        size.height * 0.5982390,
        size.width * 0.3022533,
        size.height * 0.5977335,
        size.width * 0.3045342,
        size.height * 0.5973895);
    path.cubicTo(
        size.width * 0.3058649,
        size.height * 0.5971890,
        size.width * 0.3066547,
        size.height * 0.5964195,
        size.width * 0.3062982,
        size.height * 0.5956710);
    path.cubicTo(
        size.width * 0.3062818,
        size.height * 0.5956367,
        size.width * 0.3062653,
        size.height * 0.5956022,
        size.width * 0.3062493,
        size.height * 0.5955680);
    path.cubicTo(
        size.width * 0.3058924,
        size.height * 0.5948193,
        size.width * 0.3045244,
        size.height * 0.5943750,
        size.width * 0.3031938,
        size.height * 0.5945757);
    path.cubicTo(
        size.width * 0.3009360,
        size.height * 0.5949160,
        size.width * 0.2976267,
        size.height * 0.5954147,
        size.width * 0.2956876,
        size.height * 0.5957070);
    path.cubicTo(
        size.width * 0.2953787,
        size.height * 0.5957535,
        size.width * 0.2950498,
        size.height * 0.5957000,
        size.width * 0.2948324,
        size.height * 0.5955683);
    path.cubicTo(
        size.width * 0.2946156,
        size.height * 0.5954363,
        size.width * 0.2945458,
        size.height * 0.5952475,
        size.width * 0.2946520,
        size.height * 0.5950780);
    path.cubicTo(
        size.width * 0.2954178,
        size.height * 0.5938545,
        size.width * 0.2968133,
        size.height * 0.5916243,
        size.width * 0.2976316,
        size.height * 0.5903168);
    path.cubicTo(
        size.width * 0.2976978,
        size.height * 0.5902108,
        size.width * 0.2976240,
        size.height * 0.5900930,
        size.width * 0.2974542,
        size.height * 0.5900340);
    path.cubicTo(
        size.width * 0.2972844,
        size.height * 0.5899750,
        size.width * 0.2970644,
        size.height * 0.5899905,
        size.width * 0.2969253,
        size.height * 0.5900713);
    path.cubicTo(
        size.width * 0.2937751,
        size.height * 0.5919038,
        size.width * 0.2860720,
        size.height * 0.5963853,
        size.width * 0.2841987,
        size.height * 0.5974750);
    path.cubicTo(
        size.width * 0.2839271,
        size.height * 0.5976330,
        size.width * 0.2835827,
        size.height * 0.5977453,
        size.width * 0.2832036,
        size.height * 0.5977990);
    path.cubicTo(
        size.width * 0.2802884,
        size.height * 0.5982122,
        size.width * 0.2671631,
        size.height * 0.6000735,
        size.width * 0.2618604,
        size.height * 0.6008255);
    path.cubicTo(
        size.width * 0.2614658,
        size.height * 0.6008815,
        size.width * 0.2610493,
        size.height * 0.6008018,
        size.width * 0.2607969,
        size.height * 0.6006223);
    path.cubicTo(
        size.width * 0.2605444,
        size.height * 0.6004425,
        size.width * 0.2605031,
        size.height * 0.6001965,
        size.width * 0.2606911,
        size.height * 0.5999933);
    path.cubicTo(
        size.width * 0.2631338,
        size.height * 0.5973550,
        size.width * 0.2691813,
        size.height * 0.5908233,
        size.width * 0.2723889,
        size.height * 0.5873592);
    path.cubicTo(
        size.width * 0.2725227,
        size.height * 0.5872148,
        size.width * 0.2724444,
        size.height * 0.5870367,
        size.width * 0.2722067,
        size.height * 0.5869437);
    path.cubicTo(
        size.width * 0.2719689,
        size.height * 0.5868508,
        size.width * 0.2716453,
        size.height * 0.5868718,
        size.width * 0.2714511,
        size.height * 0.5869925);
    path.cubicTo(
        size.width * 0.2650502,
        size.height * 0.5909748,
        size.width * 0.2503449,
        size.height * 0.6001230,
        size.width * 0.2462760,
        size.height * 0.6026545);
    path.cubicTo(
        size.width * 0.2455840,
        size.height * 0.6030853,
        size.width * 0.2446853,
        size.height * 0.6033943,
        size.width * 0.2436884,
        size.height * 0.6035445);
    path.cubicTo(
        size.width * 0.2392520,
        size.height * 0.6042130,
        size.width * 0.2263378,
        size.height * 0.6061595,
        size.width * 0.2208884,
        size.height * 0.6069810);
    path.cubicTo(
        size.width * 0.2195231,
        size.height * 0.6071868,
        size.width * 0.2187129,
        size.height * 0.6079760,
        size.width * 0.2190787,
        size.height * 0.6087440);
    path.cubicTo(
        size.width * 0.2190840,
        size.height * 0.6087550,
        size.width * 0.2190889,
        size.height * 0.6087660,
        size.width * 0.2190942,
        size.height * 0.6087770);
    path.cubicTo(
        size.width * 0.2194600,
        size.height * 0.6095448,
        size.width * 0.2208636,
        size.height * 0.6100005,
        size.width * 0.2222289,
        size.height * 0.6097948);
    path.cubicTo(
        size.width * 0.2276622,
        size.height * 0.6089760,
        size.width * 0.2405160,
        size.height * 0.6070385,
        size.width * 0.2449889,
        size.height * 0.6063643);
    path.cubicTo(
        size.width * 0.2460107,
        size.height * 0.6062103,
        size.width * 0.2470907,
        size.height * 0.6062300,
        size.width * 0.2480929,
        size.height * 0.6064205);
    path.cubicTo(
        size.width * 0.2539413,
        size.height * 0.6075335,
        size.width * 0.2749364,
        size.height * 0.6115285,
        size.width * 0.2840164,
        size.height * 0.6132565);
    path.cubicTo(
        size.width * 0.2842907,
        size.height * 0.6133085,
        size.width * 0.2845911,
        size.height * 0.6132380,
        size.width * 0.2847182,
        size.height * 0.6130918);
    path.cubicTo(
        size.width * 0.2848449,
        size.height * 0.6129455,
        size.width * 0.2847591,
        size.height * 0.6127688,
        size.width * 0.2845173,
        size.height * 0.6126793);
    path.cubicTo(
        size.width * 0.2786258,
        size.height * 0.6104970,
        size.width * 0.2673804,
        size.height * 0.6063313,
        size.width * 0.2628898,
        size.height * 0.6046678);
    path.cubicTo(
        size.width * 0.2625502,
        size.height * 0.6045420,
        size.width * 0.2623733,
        size.height * 0.6043155,
        size.width * 0.2624382,
        size.height * 0.6040898);
    path.cubicTo(
        size.width * 0.2625031,
        size.height * 0.6038638,
        size.width * 0.2627978,
        size.height * 0.6036803,
        size.width * 0.2631907,
        size.height * 0.6036210);
    path.cubicTo(
        size.width * 0.2684716,
        size.height * 0.6028250,
        size.width * 0.2815458,
        size.height * 0.6008545,
        size.width * 0.2844502,
        size.height * 0.6004168);
    path.cubicTo(
        size.width * 0.2848280,
        size.height * 0.6003598,
        size.width * 0.2852262,
        size.height * 0.6003633,
        size.width * 0.2856004,
        size.height * 0.6004270);
    path.cubicTo(
        size.width * 0.2882124,
        size.height * 0.6008715,
        size.width * 0.2990582,
        size.height * 0.6027165,
        size.width * 0.3033809,
        size.height * 0.6034520);
    path.cubicTo(
        size.width * 0.3035711,
        size.height * 0.6034843,
        size.width * 0.3037751,
        size.height * 0.6034383,
        size.width * 0.3038733,
        size.height * 0.6033413);
    path.cubicTo(
        size.width * 0.3039716,
        size.height * 0.6032443,
        size.width * 0.3039369,
        size.height * 0.6031220,
        size.width * 0.3037907,
        size.height * 0.6030468);
    path.cubicTo(
        size.width * 0.3018658,
        size.height * 0.6020573,
        size.width * 0.2984102,
        size.height * 0.6002808,
        size.width * 0.2966107,
        size.height * 0.5993558);
    path.close();
    path.moveTo(size.width * 0.1273436, size.height * 0.5940882);
    path.cubicTo(
        size.width * 0.1269244,
        size.height * 0.5939245,
        size.width * 0.1264049,
        size.height * 0.5938647,
        size.width * 0.1259049,
        size.height * 0.5939222);
    path.cubicTo(
        size.width * 0.1232996,
        size.height * 0.5942220,
        size.width * 0.1148631,
        size.height * 0.5951932,
        size.width * 0.1109809,
        size.height * 0.5956400);
    path.cubicTo(
        size.width * 0.1106044,
        size.height * 0.5956835,
        size.width * 0.1103036,
        size.height * 0.5958427,
        size.width * 0.1102040,
        size.height * 0.5960515);
    path.cubicTo(
        size.width * 0.1101049,
        size.height * 0.5962605,
        size.width * 0.1102236,
        size.height * 0.5964830,
        size.width * 0.1105111,
        size.height * 0.5966265);
    path.cubicTo(
        size.width * 0.1134760,
        size.height * 0.5981052,
        size.width * 0.1199191,
        size.height * 0.6013190,
        size.width * 0.1219089,
        size.height * 0.6023115);
    path.cubicTo(
        size.width * 0.1222902,
        size.height * 0.6025017,
        size.width * 0.1227938,
        size.height * 0.6025960,
        size.width * 0.1233022,
        size.height * 0.6025722);
    path.cubicTo(
        size.width * 0.1265689,
        size.height * 0.6024197,
        size.width * 0.1390187,
        size.height * 0.6018382,
        size.width * 0.1441253,
        size.height * 0.6015997);
    path.cubicTo(
        size.width * 0.1444596,
        size.height * 0.6015840,
        size.width * 0.1447404,
        size.height * 0.6014522,
        size.width * 0.1448271,
        size.height * 0.6012700);
    path.cubicTo(
        size.width * 0.1449142,
        size.height * 0.6010878,
        size.width * 0.1447880,
        size.height * 0.6008945,
        size.width * 0.1445124,
        size.height * 0.6007870);
    path.cubicTo(
        size.width * 0.1403018,
        size.height * 0.5991443,
        size.width * 0.1300373,
        size.height * 0.5951390,
        size.width * 0.1273436,
        size.height * 0.5940882);
    path.close();
    path.moveTo(size.width * 0.1089053, size.height * 0.5671157);
    path.cubicTo(
        size.width * 0.1088378,
        size.height * 0.5672885,
        size.width * 0.1086076,
        size.height * 0.5674270,
        size.width * 0.1083058,
        size.height * 0.5674765);
    path.cubicTo(
        size.width * 0.1080036,
        size.height * 0.5675263,
        size.width * 0.1076773,
        size.height * 0.5674792,
        size.width * 0.1074547,
        size.height * 0.5673540);
    path.cubicTo(
        size.width * 0.1060418,
        size.height * 0.5665593,
        size.width * 0.1035867,
        size.height * 0.5651780,
        size.width * 0.1019169,
        size.height * 0.5642390);
    path.cubicTo(
        size.width * 0.1009427,
        size.height * 0.5636910,
        size.width * 0.09936311,
        size.height * 0.5636910,
        size.width * 0.09838889,
        size.height * 0.5642390);
    path.cubicTo(
        size.width * 0.09834400,
        size.height * 0.5642640,
        size.width * 0.09829956,
        size.height * 0.5642893,
        size.width * 0.09825467,
        size.height * 0.5643145);
    path.cubicTo(
        size.width * 0.09728044,
        size.height * 0.5648625,
        size.width * 0.09728044,
        size.height * 0.5657508,
        size.width * 0.09825467,
        size.height * 0.5662988);
    path.cubicTo(
        size.width * 0.09990756,
        size.height * 0.5672285,
        size.width * 0.1023302,
        size.height * 0.5685913,
        size.width * 0.1037498,
        size.height * 0.5693898);
    path.cubicTo(
        size.width * 0.1039756,
        size.height * 0.5695170,
        size.width * 0.1040578,
        size.height * 0.5697040,
        size.width * 0.1039636,
        size.height * 0.5698758);
    path.cubicTo(
        size.width * 0.1038689,
        size.height * 0.5700475,
        size.width * 0.1036133,
        size.height * 0.5701757,
        size.width * 0.1032991,
        size.height * 0.5702088);
    path.cubicTo(
        size.width * 0.1010320,
        size.height * 0.5704475,
        size.width * 0.09690089,
        size.height * 0.5708827,
        size.width * 0.09447867,
        size.height * 0.5711380);
    path.cubicTo(
        size.width * 0.09428222,
        size.height * 0.5711585,
        size.width * 0.09413822,
        size.height * 0.5712535,
        size.width * 0.09413244,
        size.height * 0.5713658);
    path.cubicTo(
        size.width * 0.09412622,
        size.height * 0.5714780,
        size.width * 0.09426000,
        size.height * 0.5715775,
        size.width * 0.09445378,
        size.height * 0.5716048);
    path.cubicTo(
        size.width * 0.09885022,
        size.height * 0.5722230,
        size.width * 0.1096018,
        size.height * 0.5737348,
        size.width * 0.1122160,
        size.height * 0.5741025);
    path.cubicTo(
        size.width * 0.1125951,
        size.height * 0.5741558,
        size.width * 0.1129400,
        size.height * 0.5742675,
        size.width * 0.1132124,
        size.height * 0.5744253);
    path.cubicTo(
        size.width * 0.1153062,
        size.height * 0.5756388,
        size.width * 0.1247347,
        size.height * 0.5811020,
        size.width * 0.1285436,
        size.height * 0.5833093);
    path.cubicTo(
        size.width * 0.1288271,
        size.height * 0.5834735,
        size.width * 0.1289129,
        size.height * 0.5837160,
        size.width * 0.1287622,
        size.height * 0.5839288);
    path.cubicTo(
        size.width * 0.1286120,
        size.height * 0.5841415,
        size.width * 0.1282538,
        size.height * 0.5842848,
        size.width * 0.1278471,
        size.height * 0.5842948);
    path.cubicTo(
        size.width * 0.1225636,
        size.height * 0.5844240,
        size.width * 0.1094836,
        size.height * 0.5847438,
        size.width * 0.1025467,
        size.height * 0.5849135);
    path.cubicTo(
        size.width * 0.1022573,
        size.height * 0.5849205,
        size.width * 0.1020222,
        size.height * 0.5850475,
        size.width * 0.1019982,
        size.height * 0.5852098);
    path.cubicTo(
        size.width * 0.1019738,
        size.height * 0.5853720,
        size.width * 0.1021676,
        size.height * 0.5855193,
        size.width * 0.1024507,
        size.height * 0.5855535);
    path.cubicTo(
        size.width * 0.1117822,
        size.height * 0.5866805,
        size.width * 0.1332200,
        size.height * 0.5892698,
        size.width * 0.1391516,
        size.height * 0.5899863);
    path.cubicTo(
        size.width * 0.1401609,
        size.height * 0.5901083,
        size.width * 0.1410858,
        size.height * 0.5903915,
        size.width * 0.1418156,
        size.height * 0.5908020);
    path.cubicTo(
        size.width * 0.1450631,
        size.height * 0.5926288,
        size.width * 0.1545173,
        size.height * 0.5979465,
        size.width * 0.1585067,
        size.height * 0.6001905);
    path.cubicTo(
        size.width * 0.1595058,
        size.height * 0.6007528,
        size.width * 0.1611262,
        size.height * 0.6007528,
        size.width * 0.1621258,
        size.height * 0.6001905);
    path.cubicTo(
        size.width * 0.1621400,
        size.height * 0.6001825,
        size.width * 0.1621542,
        size.height * 0.6001745,
        size.width * 0.1621684,
        size.height * 0.6001665);
    path.cubicTo(
        size.width * 0.1631680,
        size.height * 0.5996043,
        size.width * 0.1631680,
        size.height * 0.5986928,
        size.width * 0.1621684,
        size.height * 0.5981305);
    path.cubicTo(
        size.width * 0.1581911,
        size.height * 0.5958933,
        size.width * 0.1487813,
        size.height * 0.5906003,
        size.width * 0.1455071,
        size.height * 0.5887585);
    path.cubicTo(
        size.width * 0.1447591,
        size.height * 0.5883378,
        size.width * 0.1442489,
        size.height * 0.5878018,
        size.width * 0.1440418,
        size.height * 0.5872183);
    path.cubicTo(
        size.width * 0.1428307,
        size.height * 0.5838128,
        size.width * 0.1384840,
        size.height * 0.5715878,
        size.width * 0.1366044,
        size.height * 0.5663005);
    path.cubicTo(
        size.width * 0.1365476,
        size.height * 0.5661410,
        size.width * 0.1362889,
        size.height * 0.5660298,
        size.width * 0.1360000,
        size.height * 0.5660410);
    path.cubicTo(
        size.width * 0.1357111,
        size.height * 0.5660525,
        size.width * 0.1354822,
        size.height * 0.5661825,
        size.width * 0.1354653,
        size.height * 0.5663450);
    path.cubicTo(
        size.width * 0.1350511,
        size.height * 0.5703063,
        size.width * 0.1342604,
        size.height * 0.5778673,
        size.width * 0.1339444,
        size.height * 0.5808865);
    path.cubicTo(
        size.width * 0.1339204,
        size.height * 0.5811150,
        size.width * 0.1336604,
        size.height * 0.5813143,
        size.width * 0.1332800,
        size.height * 0.5813955);
    path.cubicTo(
        size.width * 0.1329000,
        size.height * 0.5814770,
        size.width * 0.1324702,
        size.height * 0.5814250,
        size.width * 0.1321822,
        size.height * 0.5812633);
    path.cubicTo(
        size.width * 0.1283164,
        size.height * 0.5790888,
        size.width * 0.1187453,
        size.height * 0.5737050,
        size.width * 0.1166191,
        size.height * 0.5725090);
    path.cubicTo(
        size.width * 0.1163427,
        size.height * 0.5723535,
        size.width * 0.1161493,
        size.height * 0.5721578,
        size.width * 0.1160600,
        size.height * 0.5719435);
    path.cubicTo(
        size.width * 0.1154382,
        size.height * 0.5704490,
        size.width * 0.1128560,
        size.height * 0.5642430,
        size.width * 0.1118271,
        size.height * 0.5617695);
    path.cubicTo(
        size.width * 0.1117818,
        size.height * 0.5616610,
        size.width * 0.1116089,
        size.height * 0.5615843,
        size.width * 0.1114107,
        size.height * 0.5615850);
    path.cubicTo(
        size.width * 0.1112120,
        size.height * 0.5615858,
        size.width * 0.1110409,
        size.height * 0.5616635,
        size.width * 0.1109982,
        size.height * 0.5617725);
    path.cubicTo(
        size.width * 0.1104373,
        size.height * 0.5632050,
        size.width * 0.1094298,
        size.height * 0.5657765,
        size.width * 0.1089053,
        size.height * 0.5671158);
    path.close();
    path.moveTo(size.width * 0.2458649, size.height * 0.5948512);
    path.cubicTo(
        size.width * 0.2463262,
        size.height * 0.5947290,
        size.width * 0.2466787,
        size.height * 0.5945057,
        size.width * 0.2468400,
        size.height * 0.5942335);
    path.cubicTo(
        size.width * 0.2476809,
        size.height * 0.5928145,
        size.width * 0.2504040,
        size.height * 0.5882192,
        size.width * 0.2516569,
        size.height * 0.5861045);
    path.cubicTo(
        size.width * 0.2517787,
        size.height * 0.5858995,
        size.width * 0.2516836,
        size.height * 0.5856732,
        size.width * 0.2514120,
        size.height * 0.5855205);
    path.cubicTo(
        size.width * 0.2511400,
        size.height * 0.5853675,
        size.width * 0.2507378,
        size.height * 0.5853140,
        size.width * 0.2503733,
        size.height * 0.5853825);
    path.cubicTo(
        size.width * 0.2466138,
        size.height * 0.5860872,
        size.width * 0.2384444,
        size.height * 0.5876192,
        size.width * 0.2359218,
        size.height * 0.5880922);
    path.cubicTo(
        size.width * 0.2354378,
        size.height * 0.5881830,
        size.width * 0.2350409,
        size.height * 0.5883810,
        size.width * 0.2348236,
        size.height * 0.5886405);
    path.cubicTo(
        size.width * 0.2334249,
        size.height * 0.5903082,
        size.width * 0.2280956,
        size.height * 0.5966637,
        size.width * 0.2259093,
        size.height * 0.5992708);
    path.cubicTo(
        size.width * 0.2257662,
        size.height * 0.5994412,
        size.width * 0.2258289,
        size.height * 0.5996440,
        size.width * 0.2260658,
        size.height * 0.5997775);
    path.cubicTo(
        size.width * 0.2263031,
        size.height * 0.5999108,
        size.width * 0.2266636,
        size.height * 0.5999460,
        size.width * 0.2269667,
        size.height * 0.5998658);
    path.cubicTo(
        size.width * 0.2316013,
        size.height * 0.5986360,
        size.width * 0.2429000,
        size.height * 0.5956380,
        size.width * 0.2458649,
        size.height * 0.5948513);
    path.close();
    path.moveTo(size.width * 0.2193036, size.height * 0.5527560);
    path.cubicTo(
        size.width * 0.2190036,
        size.height * 0.5528095,
        size.width * 0.2186756,
        size.height * 0.5527667,
        size.width * 0.2184480,
        size.height * 0.5526445);
    path.cubicTo(
        size.width * 0.2182209,
        size.height * 0.5525220,
        size.width * 0.2181298,
        size.height * 0.5523398,
        size.width * 0.2182116,
        size.height * 0.5521688);
    path.cubicTo(
        size.width * 0.2187284,
        size.height * 0.5510830,
        size.width * 0.2196271,
        size.height * 0.5491963,
        size.width * 0.2202387,
        size.height * 0.5479133);
    path.cubicTo(
        size.width * 0.2205951,
        size.height * 0.5471647,
        size.width * 0.2198053,
        size.height * 0.5463952,
        size.width * 0.2184747,
        size.height * 0.5461948);
    path.cubicTo(
        size.width * 0.2184133,
        size.height * 0.5461855,
        size.width * 0.2183524,
        size.height * 0.5461763,
        size.width * 0.2182911,
        size.height * 0.5461670);
    path.cubicTo(
        size.width * 0.2169604,
        size.height * 0.5459665,
        size.width * 0.2155924,
        size.height * 0.5464108,
        size.width * 0.2152360,
        size.height * 0.5471593);
    path.cubicTo(
        size.width * 0.2146311,
        size.height * 0.5484293,
        size.width * 0.2137440,
        size.height * 0.5502910,
        size.width * 0.2132244,
        size.height * 0.5513815);
    path.cubicTo(
        size.width * 0.2131418,
        size.height * 0.5515553,
        size.width * 0.2128951,
        size.height * 0.5516888,
        size.width * 0.2125836,
        size.height * 0.5517288);
    path.cubicTo(
        size.width * 0.2122716,
        size.height * 0.5517685,
        size.width * 0.2119467,
        size.height * 0.5517080,
        size.width * 0.2117382,
        size.height * 0.5515715);
    path.cubicTo(
        size.width * 0.2102373,
        size.height * 0.5505868,
        size.width * 0.2075018,
        size.height * 0.5487918,
        size.width * 0.2058978,
        size.height * 0.5477395);
    path.cubicTo(
        size.width * 0.2057676,
        size.height * 0.5476540,
        size.width * 0.2055498,
        size.height * 0.5476313,
        size.width * 0.2053738,
        size.height * 0.5476845);
    path.cubicTo(
        size.width * 0.2051978,
        size.height * 0.5477378,
        size.width * 0.2051120,
        size.height * 0.5478528,
        size.width * 0.2051667,
        size.height * 0.5479608);
    path.cubicTo(
        size.width * 0.2064129,
        size.height * 0.5504115,
        size.width * 0.2094609,
        size.height * 0.5564048,
        size.width * 0.2102022,
        size.height * 0.5578620);
    path.cubicTo(
        size.width * 0.2103098,
        size.height * 0.5580735,
        size.width * 0.2103098,
        size.height * 0.5582975,
        size.width * 0.2102031,
        size.height * 0.5585090);
    path.cubicTo(
        size.width * 0.2093822,
        size.height * 0.5601358,
        size.width * 0.2056849,
        size.height * 0.5674603,
        size.width * 0.2041911,
        size.height * 0.5704193);
    path.cubicTo(
        size.width * 0.2040800,
        size.height * 0.5706395,
        size.width * 0.2037493,
        size.height * 0.5708025,
        size.width * 0.2033467,
        size.height * 0.5708358);
    path.cubicTo(
        size.width * 0.2029440,
        size.height * 0.5708688,
        size.width * 0.2025444,
        size.height * 0.5707660,
        size.width * 0.2023258,
        size.height * 0.5705728);
    path.cubicTo(
        size.width * 0.1994849,
        size.height * 0.5680638,
        size.width * 0.1924524,
        size.height * 0.5618520,
        size.width * 0.1887227,
        size.height * 0.5585575);
    path.cubicTo(
        size.width * 0.1885671,
        size.height * 0.5584200,
        size.width * 0.1882547,
        size.height * 0.5583690,
        size.width * 0.1879924,
        size.height * 0.5584383);
    path.cubicTo(
        size.width * 0.1877302,
        size.height * 0.5585078,
        size.width * 0.1876004,
        size.height * 0.5586758,
        size.width * 0.1876893,
        size.height * 0.5588308);
    path.cubicTo(
        size.width * 0.1906200,
        size.height * 0.5639400,
        size.width * 0.1973524,
        size.height * 0.5756778,
        size.width * 0.1992151,
        size.height * 0.5789255);
    path.cubicTo(
        size.width * 0.1995320,
        size.height * 0.5794780,
        size.width * 0.1995587,
        size.height * 0.5800705,
        size.width * 0.1992916,
        size.height * 0.5806313);
    path.cubicTo(
        size.width * 0.1981027,
        size.height * 0.5831265,
        size.width * 0.1946422,
        size.height * 0.5903908,
        size.width * 0.1931822,
        size.height * 0.5934563);
    path.cubicTo(
        size.width * 0.1928164,
        size.height * 0.5942243,
        size.width * 0.1936267,
        size.height * 0.5950135,
        size.width * 0.1949920,
        size.height * 0.5952193);
    path.cubicTo(
        size.width * 0.1950116,
        size.height * 0.5952223,
        size.width * 0.1950307,
        size.height * 0.5952253,
        size.width * 0.1950502,
        size.height * 0.5952280);
    path.cubicTo(
        size.width * 0.1964156,
        size.height * 0.5954338,
        size.width * 0.1978191,
        size.height * 0.5949780,
        size.width * 0.1981849,
        size.height * 0.5942103);
    path.cubicTo(
        size.width * 0.1996404,
        size.height * 0.5911538,
        size.width * 0.2030849,
        size.height * 0.5839238,
        size.width * 0.2042836,
        size.height * 0.5814075);
    path.cubicTo(
        size.width * 0.2045573,
        size.height * 0.5808328,
        size.width * 0.2051271,
        size.height * 0.5803165,
        size.width * 0.2059218,
        size.height * 0.5799235);
    path.cubicTo(
        size.width * 0.2105596,
        size.height * 0.5776310,
        size.width * 0.2272080,
        size.height * 0.5694010,
        size.width * 0.2344080,
        size.height * 0.5658418);
    path.cubicTo(
        size.width * 0.2346253,
        size.height * 0.5657343,
        size.width * 0.2346671,
        size.height * 0.5655528,
        size.width * 0.2345053,
        size.height * 0.5654178);
    path.cubicTo(
        size.width * 0.2343436,
        size.height * 0.5652825,
        size.width * 0.2340289,
        size.height * 0.5652363,
        size.width * 0.2337698,
        size.height * 0.5653093);
    path.cubicTo(
        size.width * 0.2274644,
        size.height * 0.5670880,
        size.width * 0.2154280,
        size.height * 0.5704833,
        size.width * 0.2106218,
        size.height * 0.5718390);
    path.cubicTo(
        size.width * 0.2102582,
        size.height * 0.5719415,
        size.width * 0.2098213,
        size.height * 0.5719145,
        size.width * 0.2095058,
        size.height * 0.5717700);
    path.cubicTo(
        size.width * 0.2091902,
        size.height * 0.5716253,
        size.width * 0.2090551,
        size.height * 0.5713900,
        size.width * 0.2091604,
        size.height * 0.5711690);
    path.cubicTo(
        size.width * 0.2105756,
        size.height * 0.5681985,
        size.width * 0.2140787,
        size.height * 0.5608443,
        size.width * 0.2148569,
        size.height * 0.5592105);
    path.cubicTo(
        size.width * 0.2149582,
        size.height * 0.5589980,
        size.width * 0.2151627,
        size.height * 0.5588058,
        size.width * 0.2154480,
        size.height * 0.5586555);
    path.cubicTo(
        size.width * 0.2174382,
        size.height * 0.5576050,
        size.width * 0.2257018,
        size.height * 0.5532443,
        size.width * 0.2289956,
        size.height * 0.5515063);
    path.cubicTo(
        size.width * 0.2291400,
        size.height * 0.5514298,
        size.width * 0.2291716,
        size.height * 0.5513073,
        size.width * 0.2290711,
        size.height * 0.5512110);
    path.cubicTo(
        size.width * 0.2289711,
        size.height * 0.5511148,
        size.width * 0.2287653,
        size.height * 0.5510705,
        size.width * 0.2285764,
        size.height * 0.5511040);
    path.cubicTo(
        size.width * 0.2260907,
        size.height * 0.5515470,
        size.width * 0.2216280,
        size.height * 0.5523420,
        size.width * 0.2193036,
        size.height * 0.5527560);
    path.close();
    path.moveTo(size.width * 0.2197484, size.height * 0.5801608);
    path.cubicTo(
        size.width * 0.2199658,
        size.height * 0.5799013,
        size.width * 0.2203627,
        size.height * 0.5797033,
        size.width * 0.2208467,
        size.height * 0.5796125);
    path.cubicTo(
        size.width * 0.2233693,
        size.height * 0.5791395,
        size.width * 0.2315391,
        size.height * 0.5776077,
        size.width * 0.2352982,
        size.height * 0.5769028);
    path.cubicTo(
        size.width * 0.2356631,
        size.height * 0.5768345,
        size.width * 0.2360649,
        size.height * 0.5768878,
        size.width * 0.2363369,
        size.height * 0.5770407);
    path.cubicTo(
        size.width * 0.2366084,
        size.height * 0.5771935,
        size.width * 0.2367036,
        size.height * 0.5774198,
        size.width * 0.2365818,
        size.height * 0.5776247);
    path.cubicTo(
        size.width * 0.2353289,
        size.height * 0.5797395,
        size.width * 0.2326058,
        size.height * 0.5843348,
        size.width * 0.2317649,
        size.height * 0.5857537);
    path.cubicTo(
        size.width * 0.2316036,
        size.height * 0.5860260,
        size.width * 0.2312511,
        size.height * 0.5862492,
        size.width * 0.2307898,
        size.height * 0.5863715);
    path.cubicTo(
        size.width * 0.2278249,
        size.height * 0.5871582,
        size.width * 0.2165262,
        size.height * 0.5901563,
        size.width * 0.2118916,
        size.height * 0.5913860);
    path.cubicTo(
        size.width * 0.2115884,
        size.height * 0.5914662,
        size.width * 0.2112280,
        size.height * 0.5914310,
        size.width * 0.2109907,
        size.height * 0.5912977);
    path.cubicTo(
        size.width * 0.2107538,
        size.height * 0.5911642,
        size.width * 0.2106911,
        size.height * 0.5909615,
        size.width * 0.2108342,
        size.height * 0.5907910);
    path.cubicTo(
        size.width * 0.2130204,
        size.height * 0.5881840,
        size.width * 0.2183498,
        size.height * 0.5818285,
        size.width * 0.2197484,
        size.height * 0.5801607);
    path.close();
    path.moveTo(size.width * 0.1513200, size.height * 0.5806015);
    path.cubicTo(
        size.width * 0.1510293,
        size.height * 0.5803657,
        size.width * 0.1509227,
        size.height * 0.5800732,
        size.width * 0.1510249,
        size.height * 0.5797923);
    path.cubicTo(
        size.width * 0.1515582,
        size.height * 0.5783268,
        size.width * 0.1532844,
        size.height * 0.5735812,
        size.width * 0.1540787,
        size.height * 0.5713975);
    path.cubicTo(
        size.width * 0.1541560,
        size.height * 0.5711855,
        size.width * 0.1544391,
        size.height * 0.5710165,
        size.width * 0.1548107,
        size.height * 0.5709605);
    path.cubicTo(
        size.width * 0.1551818,
        size.height * 0.5709045,
        size.width * 0.1555773,
        size.height * 0.5709715,
        size.width * 0.1558324,
        size.height * 0.5711332);
    path.cubicTo(
        size.width * 0.1584613,
        size.height * 0.5728010,
        size.width * 0.1641747,
        size.height * 0.5764250,
        size.width * 0.1659391,
        size.height * 0.5775442);
    path.cubicTo(
        size.width * 0.1662778,
        size.height * 0.5777590,
        size.width * 0.1664453,
        size.height * 0.5780422,
        size.width * 0.1664031,
        size.height * 0.5783280);
    path.cubicTo(
        size.width * 0.1661316,
        size.height * 0.5801657,
        size.width * 0.1650978,
        size.height * 0.5871687,
        size.width * 0.1646738,
        size.height * 0.5900412);
    path.cubicTo(
        size.width * 0.1646462,
        size.height * 0.5902292,
        size.width * 0.1644116,
        size.height * 0.5903872,
        size.width * 0.1640876,
        size.height * 0.5904360);
    path.cubicTo(
        size.width * 0.1637640,
        size.height * 0.5904848,
        size.width * 0.1634204,
        size.height * 0.5904140,
        size.width * 0.1632293,
        size.height * 0.5902590);
    path.cubicTo(
        size.width * 0.1603084,
        size.height * 0.5878905,
        size.width * 0.1531884,
        size.height * 0.5821165,
        size.width * 0.1513200,
        size.height * 0.5806015);
    path.close();
    path.moveTo(size.width * 0.1869960, size.height * 0.5752242);
    path.cubicTo(
        size.width * 0.1870382,
        size.height * 0.5749382,
        size.width * 0.1868707,
        size.height * 0.5746553,
        size.width * 0.1865320,
        size.height * 0.5744405);
    path.cubicTo(
        size.width * 0.1847680,
        size.height * 0.5733213,
        size.width * 0.1790547,
        size.height * 0.5696970,
        size.width * 0.1764253,
        size.height * 0.5680292);
    path.cubicTo(
        size.width * 0.1761702,
        size.height * 0.5678675,
        size.width * 0.1757747,
        size.height * 0.5678007,
        size.width * 0.1754036,
        size.height * 0.5678567);
    path.cubicTo(
        size.width * 0.1750320,
        size.height * 0.5679127,
        size.width * 0.1747489,
        size.height * 0.5680817,
        size.width * 0.1746720,
        size.height * 0.5682937);
    path.cubicTo(
        size.width * 0.1738773,
        size.height * 0.5704775,
        size.width * 0.1721511,
        size.height * 0.5752230,
        size.width * 0.1716178,
        size.height * 0.5766885);
    path.cubicTo(
        size.width * 0.1715156,
        size.height * 0.5769695,
        size.width * 0.1716222,
        size.height * 0.5772618,
        size.width * 0.1719129,
        size.height * 0.5774975);
    path.cubicTo(
        size.width * 0.1737813,
        size.height * 0.5790127,
        size.width * 0.1809013,
        size.height * 0.5847868,
        size.width * 0.1838222,
        size.height * 0.5871552);
    path.cubicTo(
        size.width * 0.1840133,
        size.height * 0.5873102,
        size.width * 0.1843569,
        size.height * 0.5873810,
        size.width * 0.1846804,
        size.height * 0.5873322);
    path.cubicTo(
        size.width * 0.1850044,
        size.height * 0.5872835,
        size.width * 0.1852391,
        size.height * 0.5871255,
        size.width * 0.1852667,
        size.height * 0.5869375);
    path.cubicTo(
        size.width * 0.1856907,
        size.height * 0.5840647,
        size.width * 0.1867244,
        size.height * 0.5770620,
        size.width * 0.1869960,
        size.height * 0.5752242);
    path.close();
    path.moveTo(size.width * 0.1241618, size.height * 0.5416070);
    path.cubicTo(
        size.width * 0.1243360,
        size.height * 0.5414997,
        size.width * 0.1246004,
        size.height * 0.5414545,
        size.width * 0.1248516,
        size.height * 0.5414890);
    path.cubicTo(
        size.width * 0.1251022,
        size.height * 0.5415235,
        size.width * 0.1253000,
        size.height * 0.5416320,
        size.width * 0.1253667,
        size.height * 0.5417725);
    path.cubicTo(
        size.width * 0.1257911,
        size.height * 0.5426635,
        size.width * 0.1265289,
        size.height * 0.5442120,
        size.width * 0.1270302,
        size.height * 0.5452650);
    path.cubicTo(
        size.width * 0.1273231,
        size.height * 0.5458795,
        size.width * 0.1284458,
        size.height * 0.5462440,
        size.width * 0.1295378,
        size.height * 0.5460792);
    path.cubicTo(
        size.width * 0.1295880,
        size.height * 0.5460717,
        size.width * 0.1296382,
        size.height * 0.5460642,
        size.width * 0.1296884,
        size.height * 0.5460567);
    path.cubicTo(
        size.width * 0.1307804,
        size.height * 0.5458920,
        size.width * 0.1314289,
        size.height * 0.5452605,
        size.width * 0.1311360,
        size.height * 0.5446462);
    path.cubicTo(
        size.width * 0.1306396,
        size.height * 0.5436037,
        size.width * 0.1299120,
        size.height * 0.5420760,
        size.width * 0.1294853,
        size.height * 0.5411807);
    path.cubicTo(
        size.width * 0.1294173,
        size.height * 0.5410382,
        size.width * 0.1294956,
        size.height * 0.5408862,
        size.width * 0.1296880,
        size.height * 0.5407860);
    path.cubicTo(
        size.width * 0.1298804,
        size.height * 0.5406857,
        size.width * 0.1301556,
        size.height * 0.5406537,
        size.width * 0.1304031,
        size.height * 0.5407027);
    path.cubicTo(
        size.width * 0.1321884,
        size.height * 0.5410562,
        size.width * 0.1354427,
        size.height * 0.5417005,
        size.width * 0.1373502,
        size.height * 0.5420782);
    path.cubicTo(
        size.width * 0.1375049,
        size.height * 0.5421090,
        size.width * 0.1376764,
        size.height * 0.5420747,
        size.width * 0.1377627,
        size.height * 0.5419965);
    path.cubicTo(
        size.width * 0.1378489,
        size.height * 0.5419180,
        size.width * 0.1378262,
        size.height * 0.5418165,
        size.width * 0.1377084,
        size.height * 0.5417522);
    path.cubicTo(
        size.width * 0.1350347,
        size.height * 0.5402980,
        size.width * 0.1284960,
        size.height * 0.5367417,
        size.width * 0.1269058,
        size.height * 0.5358770);
    path.cubicTo(
        size.width * 0.1266756,
        size.height * 0.5357515,
        size.width * 0.1265116,
        size.height * 0.5355925,
        size.width * 0.1264333,
        size.height * 0.5354175);
    path.cubicTo(
        size.width * 0.1258302,
        size.height * 0.5340717,
        size.width * 0.1231142,
        size.height * 0.5280120,
        size.width * 0.1220173,
        size.height * 0.5255640);
    path.cubicTo(
        size.width * 0.1219356,
        size.height * 0.5253820,
        size.width * 0.1220516,
        size.height * 0.5251897,
        size.width * 0.1223138,
        size.height * 0.5250732);
    path.cubicTo(
        size.width * 0.1225760,
        size.height * 0.5249567,
        size.width * 0.1229351,
        size.height * 0.5249375,
        size.width * 0.1232316,
        size.height * 0.5250245);
    path.cubicTo(
        size.width * 0.1270809,
        size.height * 0.5261520,
        size.width * 0.1366111,
        size.height * 0.5289440,
        size.width * 0.1416658,
        size.height * 0.5304247);
    path.cubicTo(
        size.width * 0.1418764,
        size.height * 0.5304865,
        size.width * 0.1421360,
        size.height * 0.5304505,
        size.width * 0.1422716,
        size.height * 0.5303407);
    path.cubicTo(
        size.width * 0.1424076,
        size.height * 0.5302310,
        size.width * 0.1423769,
        size.height * 0.5300815,
        size.width * 0.1422004,
        size.height * 0.5299917);
    path.cubicTo(
        size.width * 0.1363902,
        size.height * 0.5270367,
        size.width * 0.1230422,
        size.height * 0.5202480,
        size.width * 0.1193484,
        size.height * 0.5183695);
    path.cubicTo(
        size.width * 0.1187200,
        size.height * 0.5180500,
        size.width * 0.1182693,
        size.height * 0.5176350,
        size.width * 0.1180502,
        size.height * 0.5171747);
    path.cubicTo(
        size.width * 0.1170747,
        size.height * 0.5151267,
        size.width * 0.1142342,
        size.height * 0.5091647,
        size.width * 0.1130360,
        size.height * 0.5066490);
    path.cubicTo(
        size.width * 0.1127356,
        size.height * 0.5060185,
        size.width * 0.1115840,
        size.height * 0.5056445,
        size.width * 0.1104636,
        size.height * 0.5058135);
    path.cubicTo(
        size.width * 0.1104476,
        size.height * 0.5058157,
        size.width * 0.1104316,
        size.height * 0.5058182,
        size.width * 0.1104156,
        size.height * 0.5058207);
    path.cubicTo(
        size.width * 0.1092951,
        size.height * 0.5059895,
        size.width * 0.1086302,
        size.height * 0.5066375,
        size.width * 0.1089302,
        size.height * 0.5072677);
    path.cubicTo(
        size.width * 0.1101253,
        size.height * 0.5097760,
        size.width * 0.1129520,
        size.height * 0.5157102,
        size.width * 0.1139356,
        size.height * 0.5177752);
    path.cubicTo(
        size.width * 0.1141604,
        size.height * 0.5182470,
        size.width * 0.1141316,
        size.height * 0.5187455,
        size.width * 0.1138533,
        size.height * 0.5192082);
    path.cubicTo(
        size.width * 0.1122298,
        size.height * 0.5219082,
        size.width * 0.1064004,
        size.height * 0.5316007,
        size.width * 0.1038796,
        size.height * 0.5357927);
    path.cubicTo(
        size.width * 0.1038036,
        size.height * 0.5359192,
        size.width * 0.1039062,
        size.height * 0.5360580,
        size.width * 0.1041196,
        size.height * 0.5361165);
    path.cubicTo(
        size.width * 0.1043333,
        size.height * 0.5361752,
        size.width * 0.1045911,
        size.height * 0.5361355,
        size.width * 0.1047218,
        size.height * 0.5360240);
    path.cubicTo(
        size.width * 0.1079058,
        size.height * 0.5333040,
        size.width * 0.1139840,
        size.height * 0.5281125,
        size.width * 0.1164111,
        size.height * 0.5260395);
    path.cubicTo(
        size.width * 0.1165947,
        size.height * 0.5258825,
        size.width * 0.1169249,
        size.height * 0.5258010,
        size.width * 0.1172547,
        size.height * 0.5258307);
    path.cubicTo(
        size.width * 0.1175844,
        size.height * 0.5258607,
        size.width * 0.1178520,
        size.height * 0.5259967,
        size.width * 0.1179382,
        size.height * 0.5261782);
    path.cubicTo(
        size.width * 0.1190996,
        size.height * 0.5286162,
        size.width * 0.1219751,
        size.height * 0.5346522,
        size.width * 0.1226138,
        size.height * 0.5359930);
    path.cubicTo(
        size.width * 0.1226969,
        size.height * 0.5361672,
        size.width * 0.1226916,
        size.height * 0.5363512,
        size.width * 0.1225987,
        size.height * 0.5365240);
    path.cubicTo(
        size.width * 0.1219502,
        size.height * 0.5377300,
        size.width * 0.1192582,
        size.height * 0.5427370,
        size.width * 0.1181849,
        size.height * 0.5447325);
    path.cubicTo(
        size.width * 0.1181378,
        size.height * 0.5448202,
        size.width * 0.1182049,
        size.height * 0.5449145,
        size.width * 0.1183462,
        size.height * 0.5449600);
    path.cubicTo(
        size.width * 0.1184880,
        size.height * 0.5450052,
        size.width * 0.1186662,
        size.height * 0.5449892,
        size.width * 0.1187760,
        size.height * 0.5449217);
    path.cubicTo(
        size.width * 0.1202200,
        size.height * 0.5440332,
        size.width * 0.1228120,
        size.height * 0.5424377,
        size.width * 0.1241618,
        size.height * 0.5416070);
    path.close();
    path.moveTo(size.width * 0.03521778, size.height * 0.5263302);
    path.cubicTo(
        size.width * 0.03546978,
        size.height * 0.5263615,
        size.width * 0.03567200,
        size.height * 0.5264675,
        size.width * 0.03574444,
        size.height * 0.5266070);
    path.cubicTo(
        size.width * 0.03581689,
        size.height * 0.5267465,
        size.width * 0.03574800,
        size.height * 0.5268970,
        size.width * 0.03556533,
        size.height * 0.5269997);
    path.cubicTo(
        size.width * 0.03440578,
        size.height * 0.5276522,
        size.width * 0.03239067,
        size.height * 0.5287857,
        size.width * 0.03102044,
        size.height * 0.5295565);
    path.cubicTo(
        size.width * 0.03022089,
        size.height * 0.5300062,
        size.width * 0.03022089,
        size.height * 0.5307355,
        size.width * 0.03102044,
        size.height * 0.5311852);
    path.cubicTo(
        size.width * 0.03105689,
        size.height * 0.5312060,
        size.width * 0.03109378,
        size.height * 0.5312265,
        size.width * 0.03113022,
        size.height * 0.5312472);
    path.cubicTo(
        size.width * 0.03192978,
        size.height * 0.5316970,
        size.width * 0.03322622,
        size.height * 0.5316970,
        size.width * 0.03402578,
        size.height * 0.5312472);
    path.cubicTo(
        size.width * 0.03538222,
        size.height * 0.5304842,
        size.width * 0.03737067,
        size.height * 0.5293657,
        size.width * 0.03853556,
        size.height * 0.5287105);
    path.cubicTo(
        size.width * 0.03872133,
        size.height * 0.5286060,
        size.width * 0.03899422,
        size.height * 0.5285680,
        size.width * 0.03924489,
        size.height * 0.5286117);
    path.cubicTo(
        size.width * 0.03949556,
        size.height * 0.5286552,
        size.width * 0.03968222,
        size.height * 0.5287735,
        size.width * 0.03973067,
        size.height * 0.5289185);
    path.cubicTo(
        size.width * 0.04007911,
        size.height * 0.5299650,
        size.width * 0.04071422,
        size.height * 0.5318722,
        size.width * 0.04108667,
        size.height * 0.5329905);
    path.cubicTo(
        size.width * 0.04111644,
        size.height * 0.5330810,
        size.width * 0.04125511,
        size.height * 0.5331477,
        size.width * 0.04141867,
        size.height * 0.5331505);
    path.cubicTo(
        size.width * 0.04158267,
        size.height * 0.5331532,
        size.width * 0.04172756,
        size.height * 0.5330912,
        size.width * 0.04176756,
        size.height * 0.5330020);
    path.cubicTo(
        size.width * 0.04266933,
        size.height * 0.5309722,
        size.width * 0.04487556,
        size.height * 0.5260087,
        size.width * 0.04541200,
        size.height * 0.5248020);
    path.cubicTo(
        size.width * 0.04548978,
        size.height * 0.5246267,
        size.width * 0.04565289,
        size.height * 0.5244675,
        size.width * 0.04588311,
        size.height * 0.5243420);
    path.cubicTo(
        size.width * 0.04765333,
        size.height * 0.5233752,
        size.width * 0.05562489,
        size.height * 0.5190225,
        size.width * 0.05884533,
        size.height * 0.5172640);
    path.cubicTo(
        size.width * 0.05908489,
        size.height * 0.5171332,
        size.width * 0.05943867,
        size.height * 0.5170935,
        size.width * 0.05974933,
        size.height * 0.5171630);
    path.cubicTo(
        size.width * 0.06005956,
        size.height * 0.5172325,
        size.width * 0.06026889,
        size.height * 0.5173980,
        size.width * 0.06028311,
        size.height * 0.5175855);
    path.cubicTo(
        size.width * 0.06047156,
        size.height * 0.5200247,
        size.width * 0.06093867,
        size.height * 0.5260632,
        size.width * 0.06118622,
        size.height * 0.5292657);
    path.cubicTo(
        size.width * 0.06119644,
        size.height * 0.5293992,
        size.width * 0.06138133,
        size.height * 0.5295077,
        size.width * 0.06161822,
        size.height * 0.5295190);
    path.cubicTo(
        size.width * 0.06185511,
        size.height * 0.5295302,
        size.width * 0.06207022,
        size.height * 0.5294407,
        size.width * 0.06212000,
        size.height * 0.5293100);
    path.cubicTo(
        size.width * 0.06376444,
        size.height * 0.5250020,
        size.width * 0.06754222,
        size.height * 0.5151052,
        size.width * 0.06858756,
        size.height * 0.5123667);
    path.cubicTo(
        size.width * 0.06876578,
        size.height * 0.5119007,
        size.width * 0.06917867,
        size.height * 0.5114737,
        size.width * 0.06977778,
        size.height * 0.5111367);
    path.cubicTo(
        size.width * 0.07244311,
        size.height * 0.5096375,
        size.width * 0.08020222,
        size.height * 0.5052730,
        size.width * 0.08347644,
        size.height * 0.5034312);
    path.cubicTo(
        size.width * 0.08429689,
        size.height * 0.5029700,
        size.width * 0.08429689,
        size.height * 0.5022217,
        size.width * 0.08347644,
        size.height * 0.5017605);
    path.cubicTo(
        size.width * 0.08346489,
        size.height * 0.5017537,
        size.width * 0.08345289,
        size.height * 0.5017472,
        size.width * 0.08344133,
        size.height * 0.5017407);
    path.cubicTo(
        size.width * 0.08262089,
        size.height * 0.5012792,
        size.width * 0.08129111,
        size.height * 0.5012792,
        size.width * 0.08047067,
        size.height * 0.5017407);
    path.cubicTo(
        size.width * 0.07720622,
        size.height * 0.5035770,
        size.width * 0.06948356,
        size.height * 0.5079210,
        size.width * 0.06679600,
        size.height * 0.5094327);
    path.cubicTo(
        size.width * 0.06618222,
        size.height * 0.5097780,
        size.width * 0.06540044,
        size.height * 0.5100135,
        size.width * 0.06454889,
        size.height * 0.5101092);
    path.cubicTo(
        size.width * 0.05958000,
        size.height * 0.5106682,
        size.width * 0.04174267,
        size.height * 0.5126747,
        size.width * 0.03402844,
        size.height * 0.5135427);
    path.cubicTo(
        size.width * 0.03379556,
        size.height * 0.5135690,
        size.width * 0.03363333,
        size.height * 0.5136885,
        size.width * 0.03364978,
        size.height * 0.5138217);
    path.cubicTo(
        size.width * 0.03366622,
        size.height * 0.5139550,
        size.width * 0.03385600,
        size.height * 0.5140607,
        size.width * 0.03409333,
        size.height * 0.5140685);
    path.cubicTo(
        size.width * 0.03987289,
        size.height * 0.5142597,
        size.width * 0.05090489,
        size.height * 0.5146247,
        size.width * 0.05531022,
        size.height * 0.5147705);
    path.cubicTo(
        size.width * 0.05564356,
        size.height * 0.5147817,
        size.width * 0.05593467,
        size.height * 0.5149017,
        size.width * 0.05605333,
        size.height * 0.5150772);
    path.cubicTo(
        size.width * 0.05617200,
        size.height * 0.5152530,
        size.width * 0.05609644,
        size.height * 0.5154512,
        size.width * 0.05586000,
        size.height * 0.5155842);
    path.cubicTo(
        size.width * 0.05268756,
        size.height * 0.5173687,
        size.width * 0.04483200,
        size.height * 0.5217875,
        size.width * 0.04308711,
        size.height * 0.5227690);
    path.cubicTo(
        size.width * 0.04286000,
        size.height * 0.5228965,
        size.width * 0.04257422,
        size.height * 0.5229860,
        size.width * 0.04226222,
        size.height * 0.5230272);
    path.cubicTo(
        size.width * 0.04008133,
        size.height * 0.5233142,
        size.width * 0.03102622,
        size.height * 0.5245062,
        size.width * 0.02741733,
        size.height * 0.5249815);
    path.cubicTo(
        size.width * 0.02725867,
        size.height * 0.5250022,
        size.width * 0.02714711,
        size.height * 0.5250822,
        size.width * 0.02714800,
        size.height * 0.5251737);
    path.cubicTo(
        size.width * 0.02714889,
        size.height * 0.5252652,
        size.width * 0.02726267,
        size.height * 0.5253442,
        size.width * 0.02742178,
        size.height * 0.5253640);
    path.cubicTo(
        size.width * 0.02951156,
        size.height * 0.5256230,
        size.width * 0.03326356,
        size.height * 0.5260880,
        size.width * 0.03521778,
        size.height * 0.5263302);
    path.close();
    path.moveTo(size.width * 0.1038529, size.height * 0.5222312);
    path.cubicTo(
        size.width * 0.1038876,
        size.height * 0.5224660,
        size.width * 0.1037502,
        size.height * 0.5226982,
        size.width * 0.1034724,
        size.height * 0.5228745);
    path.cubicTo(
        size.width * 0.1020244,
        size.height * 0.5237930,
        size.width * 0.09733511,
        size.height * 0.5267675,
        size.width * 0.09517733,
        size.height * 0.5281362);
    path.cubicTo(
        size.width * 0.09496800,
        size.height * 0.5282690,
        size.width * 0.09464356,
        size.height * 0.5283240,
        size.width * 0.09433867,
        size.height * 0.5282780);
    path.cubicTo(
        size.width * 0.09403378,
        size.height * 0.5282320,
        size.width * 0.09380133,
        size.height * 0.5280932,
        size.width * 0.09373822,
        size.height * 0.5279195);
    path.cubicTo(
        size.width * 0.09308622,
        size.height * 0.5261270,
        size.width * 0.09166933,
        size.height * 0.5222322,
        size.width * 0.09123156,
        size.height * 0.5210295);
    path.cubicTo(
        size.width * 0.09114800,
        size.height * 0.5207987,
        size.width * 0.09123511,
        size.height * 0.5205590,
        size.width * 0.09147378,
        size.height * 0.5203655);
    path.cubicTo(
        size.width * 0.09300756,
        size.height * 0.5191220,
        size.width * 0.09885111,
        size.height * 0.5143830,
        size.width * 0.1012480,
        size.height * 0.5124390);
    path.cubicTo(
        size.width * 0.1014049,
        size.height * 0.5123120,
        size.width * 0.1016871,
        size.height * 0.5122537,
        size.width * 0.1019529,
        size.height * 0.5122937);
    path.cubicTo(
        size.width * 0.1022187,
        size.height * 0.5123340,
        size.width * 0.1024111,
        size.height * 0.5124635,
        size.width * 0.1024338,
        size.height * 0.5126177);
    path.cubicTo(
        size.width * 0.1027818,
        size.height * 0.5149755,
        size.width * 0.1036302,
        size.height * 0.5207230,
        size.width * 0.1038529,
        size.height * 0.5222312);
    path.close();
    path.moveTo(size.width * 0.07457244, size.height * 0.5178180);
    path.cubicTo(
        size.width * 0.07433422,
        size.height * 0.5180115,
        size.width * 0.07424667,
        size.height * 0.5182515,
        size.width * 0.07433022,
        size.height * 0.5184823);
    path.cubicTo(
        size.width * 0.07476800,
        size.height * 0.5196850,
        size.width * 0.07618489,
        size.height * 0.5235798,
        size.width * 0.07683689,
        size.height * 0.5253720);
    path.cubicTo(
        size.width * 0.07690000,
        size.height * 0.5255458,
        size.width * 0.07713244,
        size.height * 0.5256848,
        size.width * 0.07743733,
        size.height * 0.5257305);
    path.cubicTo(
        size.width * 0.07774222,
        size.height * 0.5257765,
        size.width * 0.07806667,
        size.height * 0.5257218,
        size.width * 0.07827600,
        size.height * 0.5255890);
    path.cubicTo(
        size.width * 0.08043378,
        size.height * 0.5242203,
        size.width * 0.08512311,
        size.height * 0.5212458,
        size.width * 0.08657111,
        size.height * 0.5203270);
    path.cubicTo(
        size.width * 0.08684889,
        size.height * 0.5201510,
        size.width * 0.08698622,
        size.height * 0.5199185,
        size.width * 0.08695156,
        size.height * 0.5196838);
    path.cubicTo(
        size.width * 0.08672889,
        size.height * 0.5181755,
        size.width * 0.08588044,
        size.height * 0.5124280,
        size.width * 0.08553244,
        size.height * 0.5100705);
    path.cubicTo(
        size.width * 0.08550978,
        size.height * 0.5099163,
        size.width * 0.08531733,
        size.height * 0.5097865,
        size.width * 0.08505156,
        size.height * 0.5097465);
    path.cubicTo(
        size.width * 0.08478578,
        size.height * 0.5097065,
        size.width * 0.08450356,
        size.height * 0.5097645,
        size.width * 0.08434667,
        size.height * 0.5098918);
    path.cubicTo(
        size.width * 0.08194978,
        size.height * 0.5118358,
        size.width * 0.07610622,
        size.height * 0.5165745,
        size.width * 0.07457244,
        size.height * 0.5178180);
    path.close();
    path.moveTo(size.width * 0.1307338, size.height * 0.5181798);
    path.cubicTo(
        size.width * 0.1309124,
        size.height * 0.5183927,
        size.width * 0.1312382,
        size.height * 0.5185553,
        size.width * 0.1316351,
        size.height * 0.5186298);
    path.cubicTo(
        size.width * 0.1337058,
        size.height * 0.5190180,
        size.width * 0.1404107,
        size.height * 0.5202750,
        size.width * 0.1434960,
        size.height * 0.5208535);
    path.cubicTo(
        size.width * 0.1437956,
        size.height * 0.5209098,
        size.width * 0.1441253,
        size.height * 0.5208660,
        size.width * 0.1443484,
        size.height * 0.5207405);
    path.cubicTo(
        size.width * 0.1445716,
        size.height * 0.5206150,
        size.width * 0.1446493,
        size.height * 0.5204293,
        size.width * 0.1445498,
        size.height * 0.5202610);
    path.cubicTo(
        size.width * 0.1435213,
        size.height * 0.5185255,
        size.width * 0.1412862,
        size.height * 0.5147540,
        size.width * 0.1405960,
        size.height * 0.5135892);
    path.cubicTo(
        size.width * 0.1404636,
        size.height * 0.5133660,
        size.width * 0.1401747,
        size.height * 0.5131827,
        size.width * 0.1397960,
        size.height * 0.5130823);
    path.cubicTo(
        size.width * 0.1373627,
        size.height * 0.5124365,
        size.width * 0.1280893,
        size.height * 0.5099763,
        size.width * 0.1242858,
        size.height * 0.5089668);
    path.cubicTo(
        size.width * 0.1240369,
        size.height * 0.5089008,
        size.width * 0.1237409,
        size.height * 0.5089298,
        size.width * 0.1235462,
        size.height * 0.5090393);
    path.cubicTo(
        size.width * 0.1233516,
        size.height * 0.5091488,
        size.width * 0.1233004,
        size.height * 0.5093150,
        size.width * 0.1234178,
        size.height * 0.5094550);
    path.cubicTo(
        size.width * 0.1252120,
        size.height * 0.5115947,
        size.width * 0.1295862,
        size.height * 0.5168110,
        size.width * 0.1307338,
        size.height * 0.5181798);
    path.close();
    path.moveTo(size.width * 0.1521689, size.height * 0.5061227);
    path.cubicTo(
        size.width * 0.1525471,
        size.height * 0.5062230,
        size.width * 0.1528364,
        size.height * 0.5064062,
        size.width * 0.1529689,
        size.height * 0.5066297);
    path.cubicTo(
        size.width * 0.1536587,
        size.height * 0.5077945,
        size.width * 0.1558938,
        size.height * 0.5115660,
        size.width * 0.1569222,
        size.height * 0.5133015);
    path.cubicTo(
        size.width * 0.1570222,
        size.height * 0.5134697,
        size.width * 0.1569440,
        size.height * 0.5136555,
        size.width * 0.1567209,
        size.height * 0.5137808);
    path.cubicTo(
        size.width * 0.1564982,
        size.height * 0.5139063,
        size.width * 0.1561680,
        size.height * 0.5139502,
        size.width * 0.1558689,
        size.height * 0.5138940);
    path.cubicTo(
        size.width * 0.1527836,
        size.height * 0.5133155,
        size.width * 0.1460787,
        size.height * 0.5120583,
        size.width * 0.1440080,
        size.height * 0.5116702);
    path.cubicTo(
        size.width * 0.1436107,
        size.height * 0.5115958,
        size.width * 0.1432849,
        size.height * 0.5114330,
        size.width * 0.1431067,
        size.height * 0.5112200);
    path.cubicTo(
        size.width * 0.1419587,
        size.height * 0.5098513,
        size.width * 0.1375844,
        size.height * 0.5046353,
        size.width * 0.1357902,
        size.height * 0.5024955);
    path.cubicTo(
        size.width * 0.1356729,
        size.height * 0.5023555,
        size.width * 0.1357244,
        size.height * 0.5021890,
        size.width * 0.1359191,
        size.height * 0.5020798);
    path.cubicTo(
        size.width * 0.1361133,
        size.height * 0.5019703,
        size.width * 0.1364093,
        size.height * 0.5019413,
        size.width * 0.1366582,
        size.height * 0.5020073);
    path.cubicTo(
        size.width * 0.1404622,
        size.height * 0.5030165,
        size.width * 0.1497351,
        size.height * 0.5054770,
        size.width * 0.1521689,
        size.height * 0.5061228);
    path.close();
    path.moveTo(size.width * 0.1921542, size.height * 0.5059172);
    path.cubicTo(
        size.width * 0.1920760,
        size.height * 0.5057788,
        size.width * 0.1921387,
        size.height * 0.5056275,
        size.width * 0.1923173,
        size.height * 0.5055225);
    path.cubicTo(
        size.width * 0.1924956,
        size.height * 0.5054175,
        size.width * 0.1927618,
        size.height * 0.5053755,
        size.width * 0.1930111,
        size.height * 0.5054130);
    path.cubicTo(
        size.width * 0.1945956,
        size.height * 0.5056517,
        size.width * 0.1973484,
        size.height * 0.5060668,
        size.width * 0.1992200,
        size.height * 0.5063490);
    path.cubicTo(
        size.width * 0.2003124,
        size.height * 0.5065135,
        size.width * 0.2014351,
        size.height * 0.5061490,
        size.width * 0.2017276,
        size.height * 0.5055345);
    path.cubicTo(
        size.width * 0.2017413,
        size.height * 0.5055062,
        size.width * 0.2017547,
        size.height * 0.5054783,
        size.width * 0.2017680,
        size.height * 0.5054500);
    path.cubicTo(
        size.width * 0.2020609,
        size.height * 0.5048355,
        size.width * 0.2014124,
        size.height * 0.5042040,
        size.width * 0.2003204,
        size.height * 0.5040395);
    path.cubicTo(
        size.width * 0.1984671,
        size.height * 0.5037603,
        size.width * 0.1957511,
        size.height * 0.5033507,
        size.width * 0.1941596,
        size.height * 0.5031110);
    path.cubicTo(
        size.width * 0.1939062,
        size.height * 0.5030727,
        size.width * 0.1937116,
        size.height * 0.5029588,
        size.width * 0.1936533,
        size.height * 0.5028147);
    path.cubicTo(
        size.width * 0.1935951,
        size.height * 0.5026710,
        size.width * 0.1936836,
        size.height * 0.5025208,
        size.width * 0.1938827,
        size.height * 0.5024247);
    path.cubicTo(
        size.width * 0.1953196,
        size.height * 0.5017318,
        size.width * 0.1979387,
        size.height * 0.5004688,
        size.width * 0.1994738,
        size.height * 0.4997282);
    path.cubicTo(
        size.width * 0.1995982,
        size.height * 0.4996682,
        size.width * 0.1996316,
        size.height * 0.4995677,
        size.width * 0.1995542,
        size.height * 0.4994865);
    path.cubicTo(
        size.width * 0.1994764,
        size.height * 0.4994052,
        size.width * 0.1993084,
        size.height * 0.4993655,
        size.width * 0.1991511,
        size.height * 0.4993907);
    path.cubicTo(
        size.width * 0.1955751,
        size.height * 0.4999662,
        size.width * 0.1868302,
        size.height * 0.5013732,
        size.width * 0.1847040,
        size.height * 0.5017155);
    path.cubicTo(
        size.width * 0.1843956,
        size.height * 0.5017652,
        size.width * 0.1840689,
        size.height * 0.5017652,
        size.width * 0.1837604,
        size.height * 0.5017160);
    path.cubicTo(
        size.width * 0.1813867,
        size.height * 0.5013370,
        size.width * 0.1706996,
        size.height * 0.4996300,
        size.width * 0.1663822,
        size.height * 0.4989405);
    path.cubicTo(
        size.width * 0.1660609,
        size.height * 0.4988892,
        size.width * 0.1658231,
        size.height * 0.4987365,
        size.width * 0.1657747,
        size.height * 0.4985507);
    path.cubicTo(
        size.width * 0.1657262,
        size.height * 0.4983647,
        size.width * 0.1658764,
        size.height * 0.4981802,
        size.width * 0.1661582,
        size.height * 0.4980792);
    path.cubicTo(
        size.width * 0.1698191,
        size.height * 0.4967677,
        size.width * 0.1788827,
        size.height * 0.4935212,
        size.width * 0.1836898,
        size.height * 0.4917992);
    path.cubicTo(
        size.width * 0.1838902,
        size.height * 0.4917275,
        size.width * 0.1839644,
        size.height * 0.4915832,
        size.width * 0.1838631,
        size.height * 0.4914622);
    path.cubicTo(
        size.width * 0.1837622,
        size.height * 0.4913413,
        size.width * 0.1835169,
        size.height * 0.4912813,
        size.width * 0.1832907,
        size.height * 0.4913223);
    path.cubicTo(
        size.width * 0.1758360,
        size.height * 0.4926753,
        size.width * 0.1587098,
        size.height * 0.4957833,
        size.width * 0.1539707,
        size.height * 0.4966433);
    path.cubicTo(
        size.width * 0.1531644,
        size.height * 0.4967895,
        size.width * 0.1523004,
        size.height * 0.4968018,
        size.width * 0.1514822,
        size.height * 0.4966785);
    path.cubicTo(
        size.width * 0.1478413,
        size.height * 0.4961298,
        size.width * 0.1372422,
        size.height * 0.4945323,
        size.width * 0.1327698,
        size.height * 0.4938580);
    path.cubicTo(
        size.width * 0.1316489,
        size.height * 0.4936893,
        size.width * 0.1304973,
        size.height * 0.4940633,
        size.width * 0.1301969,
        size.height * 0.4946935);
    path.cubicTo(
        size.width * 0.1301929,
        size.height * 0.4947025,
        size.width * 0.1301884,
        size.height * 0.4947115,
        size.width * 0.1301844,
        size.height * 0.4947205);
    path.cubicTo(
        size.width * 0.1298840,
        size.height * 0.4953508,
        size.width * 0.1305489,
        size.height * 0.4959988,
        size.width * 0.1316693,
        size.height * 0.4961675);
    path.cubicTo(
        size.width * 0.1361289,
        size.height * 0.4968398,
        size.width * 0.1466782,
        size.height * 0.4984298,
        size.width * 0.1503493,
        size.height * 0.4989830);
    path.cubicTo(
        size.width * 0.1511880,
        size.height * 0.4991095,
        size.width * 0.1519413,
        size.height * 0.4993728,
        size.width * 0.1525147,
        size.height * 0.4997395);
    path.cubicTo(
        size.width * 0.1558596,
        size.height * 0.5018805,
        size.width * 0.1678680,
        size.height * 0.5095665,
        size.width * 0.1730613,
        size.height * 0.5128905);
    path.cubicTo(
        size.width * 0.1732178,
        size.height * 0.5129908,
        size.width * 0.1734831,
        size.height * 0.5130100,
        size.width * 0.1736800,
        size.height * 0.5129355);
    path.cubicTo(
        size.width * 0.1738769,
        size.height * 0.5128608,
        size.width * 0.1739449,
        size.height * 0.5127153,
        size.width * 0.1738382,
        size.height * 0.5125960);
    path.cubicTo(
        size.width * 0.1712431,
        size.height * 0.5096848,
        size.width * 0.1662889,
        size.height * 0.5041282,
        size.width * 0.1643107,
        size.height * 0.5019092);
    path.cubicTo(
        size.width * 0.1641609,
        size.height * 0.5017413,
        size.width * 0.1642004,
        size.height * 0.5015397,
        size.width * 0.1644116,
        size.height * 0.5013940);
    path.cubicTo(
        size.width * 0.1646222,
        size.height * 0.5012485,
        size.width * 0.1649658,
        size.height * 0.5011860,
        size.width * 0.1652884,
        size.height * 0.5012348);
    path.cubicTo(
        size.width * 0.1696222,
        size.height * 0.5018880,
        size.width * 0.1803529,
        size.height * 0.5035053,
        size.width * 0.1827364,
        size.height * 0.5038645);
    path.cubicTo(
        size.width * 0.1830467,
        size.height * 0.5039113,
        size.width * 0.1833271,
        size.height * 0.5040058,
        size.width * 0.1835467,
        size.height * 0.5041372);
    path.cubicTo(
        size.width * 0.1850791,
        size.height * 0.5050560,
        size.width * 0.1914418,
        size.height * 0.5088710,
        size.width * 0.1939778,
        size.height * 0.5103918);
    path.cubicTo(
        size.width * 0.1940893,
        size.height * 0.5104585,
        size.width * 0.1942680,
        size.height * 0.5104730,
        size.width * 0.1944084,
        size.height * 0.5104268);
    path.cubicTo(
        size.width * 0.1945489,
        size.height * 0.5103803,
        size.width * 0.1946138,
        size.height * 0.5102855,
        size.width * 0.1945644,
        size.height * 0.5101983);
    path.cubicTo(
        size.width * 0.1939182,
        size.height * 0.5090507,
        size.width * 0.1927582,
        size.height * 0.5069902,
        size.width * 0.1921542,
        size.height * 0.5059172);
    path.close();
    path.moveTo(size.width * 0.05489422, size.height * 0.5067490);
    path.cubicTo(
        size.width * 0.05455022,
        size.height * 0.5068833,
        size.width * 0.05412400,
        size.height * 0.5069325,
        size.width * 0.05371378,
        size.height * 0.5068853);
    path.cubicTo(
        size.width * 0.05157556,
        size.height * 0.5066393,
        size.width * 0.04465156,
        size.height * 0.5058420,
        size.width * 0.04146533,
        size.height * 0.5054753);
    path.cubicTo(
        size.width * 0.04115600,
        size.height * 0.5054397,
        size.width * 0.04090933,
        size.height * 0.5053090,
        size.width * 0.04082756,
        size.height * 0.5051375);
    path.cubicTo(
        size.width * 0.04074578,
        size.height * 0.5049662,
        size.width * 0.04084356,
        size.height * 0.5047835,
        size.width * 0.04107956,
        size.height * 0.5046658);
    path.cubicTo(
        size.width * 0.04351289,
        size.height * 0.5034520,
        size.width * 0.04880089,
        size.height * 0.5008145,
        size.width * 0.05043378,
        size.height * 0.5000000);
    path.cubicTo(
        size.width * 0.05074711,
        size.height * 0.4998437,
        size.width * 0.05116044,
        size.height * 0.4997663,
        size.width * 0.05157733,
        size.height * 0.4997858);
    path.cubicTo(
        size.width * 0.05425867,
        size.height * 0.4999110,
        size.width * 0.06447644,
        size.height * 0.5003882,
        size.width * 0.06866800,
        size.height * 0.5005840);
    path.cubicTo(
        size.width * 0.06894222,
        size.height * 0.5005970,
        size.width * 0.06917244,
        size.height * 0.5007052,
        size.width * 0.06924400,
        size.height * 0.5008548);
    path.cubicTo(
        size.width * 0.06931511,
        size.height * 0.5010043,
        size.width * 0.06921156,
        size.height * 0.5011627,
        size.width * 0.06898578,
        size.height * 0.5012510);
    path.cubicTo(
        size.width * 0.06552978,
        size.height * 0.5025995,
        size.width * 0.05710533,
        size.height * 0.5058865,
        size.width * 0.05489422,
        size.height * 0.5067490);
    path.close();
    path.moveTo(size.width * 0.09660933, size.height * 0.4767835);
    path.cubicTo(
        size.width * 0.1102053,
        size.height * 0.4747343,
        size.width * 0.1242013,
        size.height * 0.4792798,
        size.width * 0.1278444,
        size.height * 0.4869275);
    path.cubicTo(
        size.width * 0.1314876,
        size.height * 0.4945752,
        size.width * 0.1234071,
        size.height * 0.5024483,
        size.width * 0.1098107,
        size.height * 0.5044973);
    path.cubicTo(
        size.width * 0.09621467,
        size.height * 0.5065465,
        size.width * 0.08221867,
        size.height * 0.5020013,
        size.width * 0.07857556,
        size.height * 0.4943535);
    path.cubicTo(
        size.width * 0.07493244,
        size.height * 0.4867055,
        size.width * 0.08301333,
        size.height * 0.4788327,
        size.width * 0.09660933,
        size.height * 0.4767835);
    path.close();
    path.moveTo(size.width * 0.04704889, size.height * 0.4902787);
    path.cubicTo(
        size.width * 0.04663156,
        size.height * 0.4902593,
        size.width * 0.04621822,
        size.height * 0.4903367,
        size.width * 0.04590533,
        size.height * 0.4904930);
    path.cubicTo(
        size.width * 0.04427200,
        size.height * 0.4913075,
        size.width * 0.03898400,
        size.height * 0.4939450,
        size.width * 0.03655067,
        size.height * 0.4951587);
    path.cubicTo(
        size.width * 0.03631467,
        size.height * 0.4952765,
        size.width * 0.03621733,
        size.height * 0.4954593,
        size.width * 0.03629911,
        size.height * 0.4956307);
    path.cubicTo(
        size.width * 0.03638044,
        size.height * 0.4958020,
        size.width * 0.03662756,
        size.height * 0.4959327,
        size.width * 0.03693644,
        size.height * 0.4959685);
    path.cubicTo(
        size.width * 0.04012267,
        size.height * 0.4963353,
        size.width * 0.04704667,
        size.height * 0.4971322,
        size.width * 0.04918489,
        size.height * 0.4973782);
    path.cubicTo(
        size.width * 0.04959511,
        size.height * 0.4974255,
        size.width * 0.05002178,
        size.height * 0.4973762,
        size.width * 0.05036578,
        size.height * 0.4972420);
    path.cubicTo(
        size.width * 0.05257644,
        size.height * 0.4963795,
        size.width * 0.06100089,
        size.height * 0.4930925,
        size.width * 0.06445689,
        size.height * 0.4917440);
    path.cubicTo(
        size.width * 0.06468311,
        size.height * 0.4916557,
        size.width * 0.06478622,
        size.height * 0.4914972,
        size.width * 0.06471511,
        size.height * 0.4913477);
    path.cubicTo(
        size.width * 0.06464400,
        size.height * 0.4911982,
        size.width * 0.06441333,
        size.height * 0.4910900,
        size.width * 0.06413911,
        size.height * 0.4910770);
    path.cubicTo(
        size.width * 0.05994800,
        size.height * 0.4908812,
        size.width * 0.04973022,
        size.height * 0.4904040,
        size.width * 0.04704889,
        size.height * 0.4902787);
    path.close();
    path.moveTo(size.width * 0.2711320, size.height * 0.4964668);
    path.cubicTo(
        size.width * 0.2709871,
        size.height * 0.4967710,
        size.width * 0.2713089,
        size.height * 0.4970843,
        size.width * 0.2718498,
        size.height * 0.4971658);
    path.lineTo(size.width * 0.2723400, size.height * 0.4972398);
    path.cubicTo(
        size.width * 0.2728813,
        size.height * 0.4973213,
        size.width * 0.2734382,
        size.height * 0.4971405,
        size.width * 0.2735831,
        size.height * 0.4968360);
    path.lineTo(size.width * 0.2747533, size.height * 0.4943798);
    path.cubicTo(
        size.width * 0.2748982,
        size.height * 0.4940755,
        size.width * 0.2745764,
        size.height * 0.4937623,
        size.width * 0.2740356,
        size.height * 0.4936805);
    path.lineTo(size.width * 0.2735453, size.height * 0.4936067);
    path.cubicTo(
        size.width * 0.2730044,
        size.height * 0.4935252,
        size.width * 0.2724471,
        size.height * 0.4937060,
        size.width * 0.2723022,
        size.height * 0.4940105);
    path.lineTo(size.width * 0.2711320, size.height * 0.4964668);
    path.close();
    path.moveTo(size.width * 0.2953862, size.height * 0.4457647);
    path.lineTo(size.width * 0.2986862, size.height * 0.4388372);
    path.cubicTo(
        size.width * 0.2987516,
        size.height * 0.4386995,
        size.width * 0.2956396,
        size.height * 0.4325567,
        size.width * 0.2945813,
        size.height * 0.4304757);
    path.cubicTo(
        size.width * 0.2945444,
        size.height * 0.4303967,
        size.width * 0.2946067,
        size.height * 0.4303138,
        size.width * 0.2947329,
        size.height * 0.4302735);
    path.cubicTo(
        size.width * 0.2948591,
        size.height * 0.4302330,
        size.width * 0.2950178,
        size.height * 0.4302457,
        size.width * 0.2951191,
        size.height * 0.4303040);
    path.cubicTo(
        size.width * 0.2969778,
        size.height * 0.4313700,
        size.width * 0.3011151,
        size.height * 0.4337378,
        size.width * 0.3011387,
        size.height * 0.4336888);
    path.lineTo(size.width * 0.3056929, size.height * 0.4241280);
    path.cubicTo(
        size.width * 0.3056973,
        size.height * 0.4241185,
        size.width * 0.3027387,
        size.height * 0.4192200,
        size.width * 0.3018093,
        size.height * 0.4176815);
    path.cubicTo(
        size.width * 0.3017858,
        size.height * 0.4176405,
        size.width * 0.3018178,
        size.height * 0.4175960,
        size.width * 0.3018849,
        size.height * 0.4175753);
    path.cubicTo(
        size.width * 0.3019516,
        size.height * 0.4175545,
        size.width * 0.3020356,
        size.height * 0.4175635,
        size.width * 0.3020844,
        size.height * 0.4175965);
    path.cubicTo(
        size.width * 0.3034244,
        size.height * 0.4184988,
        size.width * 0.3068293,
        size.height * 0.4207920,
        size.width * 0.3080520,
        size.height * 0.4216155);
    path.cubicTo(
        size.width * 0.3083196,
        size.height * 0.4217958,
        size.width * 0.3087591,
        size.height * 0.4218620,
        size.width * 0.3091507,
        size.height * 0.4217810);
    path.cubicTo(
        size.width * 0.3109409,
        size.height * 0.4214115,
        size.width * 0.3159249,
        size.height * 0.4203828,
        size.width * 0.3178867,
        size.height * 0.4199780);
    path.cubicTo(
        size.width * 0.3179587,
        size.height * 0.4199633,
        size.width * 0.3180391,
        size.height * 0.4199790,
        size.width * 0.3180791,
        size.height * 0.4200160);
    path.cubicTo(
        size.width * 0.3181187,
        size.height * 0.4200528,
        size.width * 0.3181067,
        size.height * 0.4201003,
        size.width * 0.3180502,
        size.height * 0.4201295);
    path.cubicTo(
        size.width * 0.3158782,
        size.height * 0.4212005,
        size.width * 0.3089653,
        size.height * 0.4246110,
        size.width * 0.3089609,
        size.height * 0.4246208);
    path.lineTo(size.width * 0.3044067, size.height * 0.4341813);
    path.cubicTo(
        size.width * 0.3043831,
        size.height * 0.4342303,
        size.width * 0.3100671,
        size.height * 0.4333430,
        size.width * 0.3126227,
        size.height * 0.4329418);
    path.cubicTo(
        size.width * 0.3127631,
        size.height * 0.4329198,
        size.width * 0.3129120,
        size.height * 0.4329535,
        size.width * 0.3129858,
        size.height * 0.4330242);
    path.cubicTo(
        size.width * 0.3130596,
        size.height * 0.4330950,
        size.width * 0.3130396,
        size.height * 0.4331845,
        size.width * 0.3129369,
        size.height * 0.4332428);
    path.cubicTo(
        size.width * 0.3101711,
        size.height * 0.4347473,
        size.width * 0.3020196,
        size.height * 0.4391917,
        size.width * 0.3019538,
        size.height * 0.4393297);
    path.lineTo(size.width * 0.2987231, size.height * 0.4461120);
    path.lineTo(size.width * 0.3134369, size.height * 0.4443297);
    path.lineTo(size.width * 0.3100876, size.height * 0.4530782);
    path.lineTo(size.width * 0.3226587, size.height * 0.4511835);
    path.cubicTo(
        size.width * 0.3229036,
        size.height * 0.4511465,
        size.width * 0.3308049,
        size.height * 0.4465592,
        size.width * 0.3334796,
        size.height * 0.4450032);
    path.cubicTo(
        size.width * 0.3335827,
        size.height * 0.4449457,
        size.width * 0.3337418,
        size.height * 0.4449345,
        size.width * 0.3338667,
        size.height * 0.4449758);
    path.cubicTo(
        size.width * 0.3339920,
        size.height * 0.4450170,
        size.width * 0.3340520,
        size.height * 0.4451007,
        size.width * 0.3340129,
        size.height * 0.4451793);
    path.cubicTo(
        size.width * 0.3333009,
        size.height * 0.4466177,
        size.width * 0.3317244,
        size.height * 0.4498170,
        size.width * 0.3318116,
        size.height * 0.4498040);
    path.lineTo(size.width * 0.3488080, size.height * 0.4472423);
    path.cubicTo(
        size.width * 0.3488249,
        size.height * 0.4472397,
        size.width * 0.3548876,
        size.height * 0.4433490,
        size.width * 0.3567916,
        size.height * 0.4421270);
    path.cubicTo(
        size.width * 0.3568431,
        size.height * 0.4420952,
        size.width * 0.3569276,
        size.height * 0.4420883,
        size.width * 0.3569929,
        size.height * 0.4421107);
    path.cubicTo(
        size.width * 0.3570582,
        size.height * 0.4421330,
        size.width * 0.3570867,
        size.height * 0.4421782,
        size.width * 0.3570600,
        size.height * 0.4422185);
    path.cubicTo(
        size.width * 0.3563413,
        size.height * 0.4433225,
        size.width * 0.3545129,
        size.height * 0.4461277,
        size.width * 0.3538560,
        size.height * 0.4471352);
    path.cubicTo(
        size.width * 0.3537124,
        size.height * 0.4473555,
        size.width * 0.3538302,
        size.height * 0.4476027,
        size.width * 0.3541507,
        size.height * 0.4477532);
    path.cubicTo(
        size.width * 0.3556147,
        size.height * 0.4484405,
        size.width * 0.3596907,
        size.height * 0.4503540,
        size.width * 0.3612947,
        size.height * 0.4511072);
    path.cubicTo(
        size.width * 0.3613533,
        size.height * 0.4511347,
        size.width * 0.3613689,
        size.height * 0.4511820,
        size.width * 0.3613320,
        size.height * 0.4512197);
    path.cubicTo(
        size.width * 0.3612951,
        size.height * 0.4512578,
        size.width * 0.3612160,
        size.height * 0.4512755,
        size.width * 0.3611431,
        size.height * 0.4512625);
    path.cubicTo(
        size.width * 0.3584080,
        size.height * 0.4507400,
        size.width * 0.3497009,
        size.height * 0.4490777,
        size.width * 0.3496840,
        size.height * 0.4490802);
    path.lineTo(size.width * 0.3326871, size.height * 0.4516420);
    path.cubicTo(
        size.width * 0.3326000,
        size.height * 0.4516553,
        size.width * 0.3368080,
        size.height * 0.4539805,
        size.width * 0.3387036,
        size.height * 0.4550250);
    path.cubicTo(
        size.width * 0.3388076,
        size.height * 0.4550822,
        size.width * 0.3388298,
        size.height * 0.4551717,
        size.width * 0.3387582,
        size.height * 0.4552430);
    path.cubicTo(
        size.width * 0.3386862,
        size.height * 0.4553143,
        size.width * 0.3385382,
        size.height * 0.4553492,
        size.width * 0.3383973,
        size.height * 0.4553285);
    path.cubicTo(
        size.width * 0.3346982,
        size.height * 0.4547332,
        size.width * 0.3237796,
        size.height * 0.4529848,
        size.width * 0.3235342,
        size.height * 0.4530218);
    path.lineTo(size.width * 0.3114618, size.height * 0.4548412);
    path.lineTo(size.width * 0.3213796, size.height * 0.4610043);
    path.lineTo(size.width * 0.3062364, size.height * 0.4637468);
    path.lineTo(size.width * 0.3156364, size.height * 0.4690345);
    path.cubicTo(
        size.width * 0.3158160,
        size.height * 0.4691355,
        size.width * 0.3268289,
        size.height * 0.4706908,
        size.width * 0.3305622,
        size.height * 0.4712157);
    path.cubicTo(
        size.width * 0.3307022,
        size.height * 0.4712370,
        size.width * 0.3307991,
        size.height * 0.4713090,
        size.width * 0.3307982,
        size.height * 0.4713905);
    path.cubicTo(
        size.width * 0.3307969,
        size.height * 0.4714723,
        size.width * 0.3306982,
        size.height * 0.4715433,
        size.width * 0.3305578,
        size.height * 0.4715638);
    path.cubicTo(
        size.width * 0.3279871,
        size.height * 0.4719360,
        size.width * 0.3222733,
        size.height * 0.4727675,
        size.width * 0.3223369,
        size.height * 0.4728035);
    path.lineTo(size.width * 0.3347796, size.height * 0.4798025);
    path.cubicTo(
        size.width * 0.3347916,
        size.height * 0.4798093,
        size.width * 0.3438124,
        size.height * 0.4808173,
        size.width * 0.3466462,
        size.height * 0.4811338);
    path.cubicTo(
        size.width * 0.3467213,
        size.height * 0.4811430,
        size.width * 0.3467738,
        size.height * 0.4811808,
        size.width * 0.3467724,
        size.height * 0.4812238);
    path.cubicTo(
        size.width * 0.3467707,
        size.height * 0.4812668,
        size.width * 0.3467151,
        size.height * 0.4813030,
        size.width * 0.3466396,
        size.height * 0.4813105);
    path.cubicTo(
        size.width * 0.3445804,
        size.height * 0.4815123,
        size.width * 0.3393476,
        size.height * 0.4820240,
        size.width * 0.3374680,
        size.height * 0.4822080);
    path.cubicTo(
        size.width * 0.3370569,
        size.height * 0.4822483,
        size.width * 0.3367351,
        size.height * 0.4824293,
        size.width * 0.3366640,
        size.height * 0.4826603);
    path.cubicTo(
        size.width * 0.3363378,
        size.height * 0.4837173,
        size.width * 0.3354293,
        size.height * 0.4866595,
        size.width * 0.3350720,
        size.height * 0.4878175);
    path.cubicTo(
        size.width * 0.3350591,
        size.height * 0.4878600,
        size.width * 0.3349942,
        size.height * 0.4878912,
        size.width * 0.3349173,
        size.height * 0.4878922);
    path.cubicTo(
        size.width * 0.3348409,
        size.height * 0.4878932,
        size.width * 0.3347738,
        size.height * 0.4878635,
        size.width * 0.3347569,
        size.height * 0.4878215);
    path.cubicTo(
        size.width * 0.3341942,
        size.height * 0.4862280,
        size.width * 0.3323996,
        size.height * 0.4811550,
        size.width * 0.3323871,
        size.height * 0.4811480);
    path.lineTo(size.width * 0.3199449, size.height * 0.4741493);
    path.cubicTo(
        size.width * 0.3198809,
        size.height * 0.4741133,
        size.width * 0.3184049,
        size.height * 0.4773258,
        size.width * 0.3177449,
        size.height * 0.4787715);
    path.cubicTo(
        size.width * 0.3177084,
        size.height * 0.4788508,
        size.width * 0.3175818,
        size.height * 0.4789065,
        size.width * 0.3174364,
        size.height * 0.4789070);
    path.cubicTo(
        size.width * 0.3172907,
        size.height * 0.4789078,
        size.width * 0.3171627,
        size.height * 0.4788530,
        size.width * 0.3171244,
        size.height * 0.4787740);
    path.cubicTo(
        size.width * 0.3161911,
        size.height * 0.4766745,
        size.width * 0.3134240,
        size.height * 0.4704813,
        size.width * 0.3132444,
        size.height * 0.4703803);
    path.lineTo(size.width * 0.3042089, size.height * 0.4652978);
    path.lineTo(size.width * 0.2996796, size.height * 0.4732108);
    path.lineTo(size.width * 0.2880867, size.height * 0.4673078);
    path.lineTo(size.width * 0.2846422, size.height * 0.4745395);
    path.cubicTo(
        size.width * 0.2845764,
        size.height * 0.4746772,
        size.width * 0.2876884,
        size.height * 0.4808198,
        size.width * 0.2887467,
        size.height * 0.4829007);
    path.cubicTo(
        size.width * 0.2887836,
        size.height * 0.4829798,
        size.width * 0.2887218,
        size.height * 0.4830627,
        size.width * 0.2885956,
        size.height * 0.4831032);
    path.cubicTo(
        size.width * 0.2884693,
        size.height * 0.4831435,
        size.width * 0.2883102,
        size.height * 0.4831310,
        size.width * 0.2882089,
        size.height * 0.4830727);
    path.cubicTo(
        size.width * 0.2863502,
        size.height * 0.4820065,
        size.width * 0.2822129,
        size.height * 0.4796387,
        size.width * 0.2821893,
        size.height * 0.4796880);
    path.lineTo(size.width * 0.2776351, size.height * 0.4892485);
    path.cubicTo(
        size.width * 0.2776307,
        size.height * 0.4892580,
        size.width * 0.2805893,
        size.height * 0.4941565,
        size.width * 0.2815191,
        size.height * 0.4956952);
    path.cubicTo(
        size.width * 0.2815422,
        size.height * 0.4957362,
        size.width * 0.2815107,
        size.height * 0.4957807,
        size.width * 0.2814436,
        size.height * 0.4958015);
    path.cubicTo(
        size.width * 0.2813764,
        size.height * 0.4958220,
        size.width * 0.2812929,
        size.height * 0.4958132,
        size.width * 0.2812436,
        size.height * 0.4957802);
    path.cubicTo(
        size.width * 0.2799036,
        size.height * 0.4948780,
        size.width * 0.2764987,
        size.height * 0.4925845,
        size.width * 0.2752760,
        size.height * 0.4917610);
    path.cubicTo(
        size.width * 0.2750084,
        size.height * 0.4915810,
        size.width * 0.2745689,
        size.height * 0.4915148,
        size.width * 0.2741773,
        size.height * 0.4915955);
    path.cubicTo(
        size.width * 0.2723871,
        size.height * 0.4919650,
        size.width * 0.2674031,
        size.height * 0.4929937,
        size.width * 0.2654413,
        size.height * 0.4933985);
    path.cubicTo(
        size.width * 0.2653693,
        size.height * 0.4934135,
        size.width * 0.2652889,
        size.height * 0.4933975,
        size.width * 0.2652489,
        size.height * 0.4933607);
    path.cubicTo(
        size.width * 0.2652093,
        size.height * 0.4933237,
        size.width * 0.2652213,
        size.height * 0.4932762,
        size.width * 0.2652782,
        size.height * 0.4932472);
    path.cubicTo(
        size.width * 0.2674498,
        size.height * 0.4921762,
        size.width * 0.2743627,
        size.height * 0.4887657,
        size.width * 0.2743676,
        size.height * 0.4887560);
    path.lineTo(size.width * 0.2789218, size.height * 0.4791952);
    path.cubicTo(
        size.width * 0.2789449,
        size.height * 0.4791465,
        size.width * 0.2732609,
        size.height * 0.4800335,
        size.width * 0.2707053,
        size.height * 0.4804348);
    path.cubicTo(
        size.width * 0.2705649,
        size.height * 0.4804567,
        size.width * 0.2704160,
        size.height * 0.4804230,
        size.width * 0.2703422,
        size.height * 0.4803523);
    path.cubicTo(
        size.width * 0.2702684,
        size.height * 0.4802818,
        size.width * 0.2702884,
        size.height * 0.4801920,
        size.width * 0.2703911,
        size.height * 0.4801338);
    path.cubicTo(
        size.width * 0.2731569,
        size.height * 0.4786295,
        size.width * 0.2813084,
        size.height * 0.4741847,
        size.width * 0.2813742,
        size.height * 0.4740468);
    path.lineTo(size.width * 0.2847498, size.height * 0.4669605);
    path.lineTo(size.width * 0.2700360, size.height * 0.4687427);
    path.lineTo(size.width * 0.2732707, size.height * 0.4602940);
    path.lineTo(size.width * 0.2606693, size.height * 0.4621932);
    path.cubicTo(
        size.width * 0.2604244,
        size.height * 0.4622300,
        size.width * 0.2525236,
        size.height * 0.4668175,
        size.width * 0.2498484,
        size.height * 0.4683735);
    path.cubicTo(
        size.width * 0.2497453,
        size.height * 0.4684310,
        size.width * 0.2495867,
        size.height * 0.4684423,
        size.width * 0.2494613,
        size.height * 0.4684007);
    path.cubicTo(
        size.width * 0.2493360,
        size.height * 0.4683595,
        size.width * 0.2492760,
        size.height * 0.4682760,
        size.width * 0.2493151,
        size.height * 0.4681972);
    path.cubicTo(
        size.width * 0.2500271,
        size.height * 0.4667587,
        size.width * 0.2516040,
        size.height * 0.4635595,
        size.width * 0.2515164,
        size.height * 0.4635727);
    path.lineTo(size.width * 0.2345200, size.height * 0.4661345);
    path.cubicTo(
        size.width * 0.2345031,
        size.height * 0.4661370,
        size.width * 0.2284404,
        size.height * 0.4700275,
        size.width * 0.2265364,
        size.height * 0.4712497);
    path.cubicTo(
        size.width * 0.2264849,
        size.height * 0.4712815,
        size.width * 0.2264004,
        size.height * 0.4712882,
        size.width * 0.2263351,
        size.height * 0.4712660);
    path.cubicTo(
        size.width * 0.2262698,
        size.height * 0.4712437,
        size.width * 0.2262418,
        size.height * 0.4711985,
        size.width * 0.2262680,
        size.height * 0.4711580);
    path.cubicTo(
        size.width * 0.2269871,
        size.height * 0.4700540,
        size.width * 0.2288156,
        size.height * 0.4672487,
        size.width * 0.2294720,
        size.height * 0.4662412);
    path.cubicTo(
        size.width * 0.2296156,
        size.height * 0.4660210,
        size.width * 0.2294978,
        size.height * 0.4657737,
        size.width * 0.2291773,
        size.height * 0.4656235);
    path.cubicTo(
        size.width * 0.2277133,
        size.height * 0.4649360,
        size.width * 0.2236378,
        size.height * 0.4630225,
        size.width * 0.2220338,
        size.height * 0.4622695);
    path.cubicTo(
        size.width * 0.2219747,
        size.height * 0.4622417,
        size.width * 0.2219587,
        size.height * 0.4621945,
        size.width * 0.2219956,
        size.height * 0.4621568);
    path.cubicTo(
        size.width * 0.2220324,
        size.height * 0.4621190,
        size.width * 0.2221120,
        size.height * 0.4621010,
        size.width * 0.2221849,
        size.height * 0.4621140);
    path.cubicTo(
        size.width * 0.2249200,
        size.height * 0.4626365,
        size.width * 0.2336271,
        size.height * 0.4642987,
        size.width * 0.2336444,
        size.height * 0.4642962);
    path.lineTo(size.width * 0.2506409, size.height * 0.4617345);
    path.cubicTo(
        size.width * 0.2507280,
        size.height * 0.4617215,
        size.width * 0.2465200,
        size.height * 0.4593962,
        size.width * 0.2446244,
        size.height * 0.4583518);
    path.cubicTo(
        size.width * 0.2445204,
        size.height * 0.4582945,
        size.width * 0.2444982,
        size.height * 0.4582047,
        size.width * 0.2445698,
        size.height * 0.4581335);
    path.cubicTo(
        size.width * 0.2446418,
        size.height * 0.4580622,
        size.width * 0.2447898,
        size.height * 0.4580272,
        size.width * 0.2449307,
        size.height * 0.4580482);
    path.cubicTo(
        size.width * 0.2486298,
        size.height * 0.4586433,
        size.width * 0.2595489,
        size.height * 0.4603920,
        size.width * 0.2597938,
        size.height * 0.4603550);
    path.lineTo(size.width * 0.2723769, size.height * 0.4584585);
    path.lineTo(size.width * 0.2620933, size.height * 0.4520685);
    path.lineTo(size.width * 0.2767182, size.height * 0.4494195);
    path.lineTo(size.width * 0.2676916, size.height * 0.4443420);
    path.cubicTo(
        size.width * 0.2675120,
        size.height * 0.4442413,
        size.width * 0.2564991,
        size.height * 0.4426860,
        size.width * 0.2527658,
        size.height * 0.4421610);
    path.cubicTo(
        size.width * 0.2526258,
        size.height * 0.4421395,
        size.width * 0.2525289,
        size.height * 0.4420678,
        size.width * 0.2525302,
        size.height * 0.4419860);
    path.cubicTo(
        size.width * 0.2525311,
        size.height * 0.4419043,
        size.width * 0.2526298,
        size.height * 0.4418333,
        size.width * 0.2527702,
        size.height * 0.4418130);
    path.cubicTo(
        size.width * 0.2553409,
        size.height * 0.4414405,
        size.width * 0.2610551,
        size.height * 0.4406090,
        size.width * 0.2609911,
        size.height * 0.4405730);
    path.lineTo(size.width * 0.2485489, size.height * 0.4335743);
    path.cubicTo(
        size.width * 0.2485364,
        size.height * 0.4335673,
        size.width * 0.2395151,
        size.height * 0.4325593,
        size.width * 0.2366813,
        size.height * 0.4322428);
    path.cubicTo(
        size.width * 0.2366067,
        size.height * 0.4322335,
        size.width * 0.2365542,
        size.height * 0.4321960,
        size.width * 0.2365560,
        size.height * 0.4321528);
    path.cubicTo(
        size.width * 0.2365573,
        size.height * 0.4321098,
        size.width * 0.2366129,
        size.height * 0.4320735,
        size.width * 0.2366884,
        size.height * 0.4320663);
    path.cubicTo(
        size.width * 0.2387476,
        size.height * 0.4318645,
        size.width * 0.2439809,
        size.height * 0.4313525,
        size.width * 0.2458600,
        size.height * 0.4311688);
    path.cubicTo(
        size.width * 0.2462711,
        size.height * 0.4311285,
        size.width * 0.2465929,
        size.height * 0.4309475,
        size.width * 0.2466640,
        size.height * 0.4307163);
    path.cubicTo(
        size.width * 0.2469902,
        size.height * 0.4296593,
        size.width * 0.2478987,
        size.height * 0.4267170,
        size.width * 0.2482560,
        size.height * 0.4255590);
    path.cubicTo(
        size.width * 0.2482693,
        size.height * 0.4255168,
        size.width * 0.2483342,
        size.height * 0.4254853,
        size.width * 0.2484107,
        size.height * 0.4254845);
    path.cubicTo(
        size.width * 0.2484876,
        size.height * 0.4254835,
        size.width * 0.2485547,
        size.height * 0.4255133,
        size.width * 0.2485711,
        size.height * 0.4255553);
    path.cubicTo(
        size.width * 0.2491342,
        size.height * 0.4271490,
        size.width * 0.2509284,
        size.height * 0.4322215,
        size.width * 0.2509409,
        size.height * 0.4322285);
    path.lineTo(size.width * 0.2633836, size.height * 0.4392275);
    path.cubicTo(
        size.width * 0.2634471,
        size.height * 0.4392633,
        size.width * 0.2649231,
        size.height * 0.4360508,
        size.width * 0.2655831,
        size.height * 0.4346053);
    path.cubicTo(
        size.width * 0.2656196,
        size.height * 0.4345258,
        size.width * 0.2657462,
        size.height * 0.4344703,
        size.width * 0.2658920,
        size.height * 0.4344695);
    path.cubicTo(
        size.width * 0.2660373,
        size.height * 0.4344690,
        size.width * 0.2661653,
        size.height * 0.4345238,
        size.width * 0.2662040,
        size.height * 0.4346028);
    path.cubicTo(
        size.width * 0.2671369,
        size.height * 0.4367023,
        size.width * 0.2699044,
        size.height * 0.4428955,
        size.width * 0.2700836,
        size.height * 0.4429965);
    path.lineTo(size.width * 0.2790973, size.height * 0.4480665);
    path.lineTo(size.width * 0.2837938, size.height * 0.4398620);
    path.lineTo(size.width * 0.2953862, size.height * 0.4457648);
    path.close();
    path.moveTo(size.width * 0.1593716, size.height * 0.4910023);
    path.cubicTo(
        size.width * 0.1597884,
        size.height * 0.4910215,
        size.width * 0.1602018,
        size.height * 0.4909443,
        size.width * 0.1605151,
        size.height * 0.4907880);
    path.cubicTo(
        size.width * 0.1621480,
        size.height * 0.4899735,
        size.width * 0.1674360,
        size.height * 0.4873358,
        size.width * 0.1698693,
        size.height * 0.4861220);
    path.cubicTo(
        size.width * 0.1701053,
        size.height * 0.4860043,
        size.width * 0.1702027,
        size.height * 0.4858217,
        size.width * 0.1701213,
        size.height * 0.4856503);
    path.cubicTo(
        size.width * 0.1700396,
        size.height * 0.4854790,
        size.width * 0.1697929,
        size.height * 0.4853482,
        size.width * 0.1694836,
        size.height * 0.4853125);
    path.cubicTo(
        size.width * 0.1662973,
        size.height * 0.4849457,
        size.width * 0.1593733,
        size.height * 0.4841488,
        size.width * 0.1572351,
        size.height * 0.4839028);
    path.cubicTo(
        size.width * 0.1568249,
        size.height * 0.4838555,
        size.width * 0.1563982,
        size.height * 0.4839048,
        size.width * 0.1560542,
        size.height * 0.4840388);
    path.cubicTo(
        size.width * 0.1538436,
        size.height * 0.4849015,
        size.width * 0.1454191,
        size.height * 0.4881885,
        size.width * 0.1419631,
        size.height * 0.4895370);
    path.cubicTo(
        size.width * 0.1417369,
        size.height * 0.4896253,
        size.width * 0.1416338,
        size.height * 0.4897838,
        size.width * 0.1417049,
        size.height * 0.4899333);
    path.cubicTo(
        size.width * 0.1417760,
        size.height * 0.4900828,
        size.width * 0.1420067,
        size.height * 0.4901910,
        size.width * 0.1422809,
        size.height * 0.4902038);
    path.cubicTo(
        size.width * 0.1464724,
        size.height * 0.4903998,
        size.width * 0.1566902,
        size.height * 0.4908770,
        size.width * 0.1593716,
        size.height * 0.4910023);
    path.close();
    path.moveTo(size.width * 0.01426578, size.height * 0.4753635);
    path.cubicTo(
        size.width * 0.01434400,
        size.height * 0.4755020,
        size.width * 0.01428133,
        size.height * 0.4756535,
        size.width * 0.01410311,
        size.height * 0.4757585);
    path.cubicTo(
        size.width * 0.01392444,
        size.height * 0.4758635,
        size.width * 0.01365822,
        size.height * 0.4759055,
        size.width * 0.01340889,
        size.height * 0.4758677);
    path.cubicTo(
        size.width * 0.01182489,
        size.height * 0.4756290,
        size.width * 0.009072000,
        size.height * 0.4752142,
        size.width * 0.007200000,
        size.height * 0.4749320);
    path.cubicTo(
        size.width * 0.006107556,
        size.height * 0.4747675,
        size.width * 0.004984889,
        size.height * 0.4751320,
        size.width * 0.004692444,
        size.height * 0.4757465);
    path.cubicTo(
        size.width * 0.004679111,
        size.height * 0.4757745,
        size.width * 0.004665333,
        size.height * 0.4758027,
        size.width * 0.004652000,
        size.height * 0.4758310);
    path.cubicTo(
        size.width * 0.004359556,
        size.height * 0.4764455,
        size.width * 0.005007556,
        size.height * 0.4770770,
        size.width * 0.006099556,
        size.height * 0.4772415);
    path.cubicTo(
        size.width * 0.007952889,
        size.height * 0.4775207,
        size.width * 0.01066889,
        size.height * 0.4779303,
        size.width * 0.01226044,
        size.height * 0.4781700);
    path.cubicTo(
        size.width * 0.01251378,
        size.height * 0.4782082,
        size.width * 0.01270889,
        size.height * 0.4783222,
        size.width * 0.01276667,
        size.height * 0.4784660);
    path.cubicTo(
        size.width * 0.01282489,
        size.height * 0.4786100,
        size.width * 0.01273689,
        size.height * 0.4787602,
        size.width * 0.01253778,
        size.height * 0.4788562);
    path.cubicTo(
        size.width * 0.01110044,
        size.height * 0.4795492,
        size.width * 0.008481778,
        size.height * 0.4808122,
        size.width * 0.006946222,
        size.height * 0.4815525);
    path.cubicTo(
        size.width * 0.006821778,
        size.height * 0.4816127,
        size.width * 0.006788444,
        size.height * 0.4817132,
        size.width * 0.006866222,
        size.height * 0.4817945);
    path.cubicTo(
        size.width * 0.006943556,
        size.height * 0.4818757,
        size.width * 0.007111556,
        size.height * 0.4819155,
        size.width * 0.007268889,
        size.height * 0.4818900);
    path.cubicTo(
        size.width * 0.01084489,
        size.height * 0.4813148,
        size.width * 0.01958978,
        size.height * 0.4799075,
        size.width * 0.02171600,
        size.height * 0.4795655);
    path.cubicTo(
        size.width * 0.02202444,
        size.height * 0.4795157,
        size.width * 0.02235111,
        size.height * 0.4795157,
        size.width * 0.02265956,
        size.height * 0.4795650);
    path.cubicTo(
        size.width * 0.02503333,
        size.height * 0.4799440,
        size.width * 0.03572044,
        size.height * 0.4816508,
        size.width * 0.04003822,
        size.height * 0.4823405);
    path.cubicTo(
        size.width * 0.04035956,
        size.height * 0.4823918,
        size.width * 0.04059733,
        size.height * 0.4825443,
        size.width * 0.04064533,
        size.height * 0.4827303);
    path.cubicTo(
        size.width * 0.04069378,
        size.height * 0.4829162,
        size.width * 0.04054356,
        size.height * 0.4831008,
        size.width * 0.04026178,
        size.height * 0.4832017);
    path.cubicTo(
        size.width * 0.03660089,
        size.height * 0.4845130,
        size.width * 0.02753733,
        size.height * 0.4877597,
        size.width * 0.02273067,
        size.height * 0.4894815);
    path.cubicTo(
        size.width * 0.02253022,
        size.height * 0.4895535,
        size.width * 0.02245556,
        size.height * 0.4896977,
        size.width * 0.02255689,
        size.height * 0.4898187);
    path.cubicTo(
        size.width * 0.02265778,
        size.height * 0.4899397,
        size.width * 0.02290311,
        size.height * 0.4899997,
        size.width * 0.02312933,
        size.height * 0.4899587);
    path.cubicTo(
        size.width * 0.03058400,
        size.height * 0.4886057,
        size.width * 0.04771022,
        size.height * 0.4854977,
        size.width * 0.05244933,
        size.height * 0.4846377);
    path.cubicTo(
        size.width * 0.05325556,
        size.height * 0.4844912,
        size.width * 0.05411956,
        size.height * 0.4844792,
        size.width * 0.05493778,
        size.height * 0.4846025);
    path.cubicTo(
        size.width * 0.05857867,
        size.height * 0.4851512,
        size.width * 0.06917778,
        size.height * 0.4867487,
        size.width * 0.07365067,
        size.height * 0.4874227);
    path.cubicTo(
        size.width * 0.07477111,
        size.height * 0.4875917,
        size.width * 0.07592267,
        size.height * 0.4872177,
        size.width * 0.07622311,
        size.height * 0.4865875);
    path.cubicTo(
        size.width * 0.07622711,
        size.height * 0.4865785,
        size.width * 0.07623156,
        size.height * 0.4865695,
        size.width * 0.07623600,
        size.height * 0.4865605);
    path.cubicTo(
        size.width * 0.07653600,
        size.height * 0.4859302,
        size.width * 0.07587111,
        size.height * 0.4852822,
        size.width * 0.07475067,
        size.height * 0.4851135);
    path.cubicTo(
        size.width * 0.07029111,
        size.height * 0.4844412,
        size.width * 0.05974178,
        size.height * 0.4828512,
        size.width * 0.05607067,
        size.height * 0.4822980);
    path.cubicTo(
        size.width * 0.05523200,
        size.height * 0.4821715,
        size.width * 0.05447867,
        size.height * 0.4819082,
        size.width * 0.05390533,
        size.height * 0.4815415);
    path.cubicTo(
        size.width * 0.05056044,
        size.height * 0.4794005,
        size.width * 0.03855244,
        size.height * 0.4717145,
        size.width * 0.03335911,
        size.height * 0.4683905);
    path.cubicTo(
        size.width * 0.03320222,
        size.height * 0.4682902,
        size.width * 0.03293733,
        size.height * 0.4682710,
        size.width * 0.03274000,
        size.height * 0.4683455);
    path.cubicTo(
        size.width * 0.03254311,
        size.height * 0.4684202,
        size.width * 0.03247511,
        size.height * 0.4685655,
        size.width * 0.03258178,
        size.height * 0.4686850);
    path.cubicTo(
        size.width * 0.03517733,
        size.height * 0.4715962,
        size.width * 0.04013111,
        size.height * 0.4771527,
        size.width * 0.04210933,
        size.height * 0.4793717);
    path.cubicTo(
        size.width * 0.04225911,
        size.height * 0.4795395,
        size.width * 0.04221956,
        size.height * 0.4797412,
        size.width * 0.04200844,
        size.height * 0.4798870);
    path.cubicTo(
        size.width * 0.04179778,
        size.height * 0.4800325,
        size.width * 0.04145422,
        size.height * 0.4800950,
        size.width * 0.04113156,
        size.height * 0.4800462);
    path.cubicTo(
        size.width * 0.03679778,
        size.height * 0.4793930,
        size.width * 0.02606711,
        size.height * 0.4777757,
        size.width * 0.02368356,
        size.height * 0.4774165);
    path.cubicTo(
        size.width * 0.02337333,
        size.height * 0.4773697,
        size.width * 0.02309289,
        size.height * 0.4772752,
        size.width * 0.02287333,
        size.height * 0.4771437);
    path.cubicTo(
        size.width * 0.02134089,
        size.height * 0.4762247,
        size.width * 0.01497822,
        size.height * 0.4724100,
        size.width * 0.01244222,
        size.height * 0.4708892);
    path.cubicTo(
        size.width * 0.01233067,
        size.height * 0.4708225,
        size.width * 0.01215200,
        size.height * 0.4708080,
        size.width * 0.01201156,
        size.height * 0.4708542);
    path.cubicTo(
        size.width * 0.01187111,
        size.height * 0.4709005,
        size.width * 0.01180622,
        size.height * 0.4709955,
        size.width * 0.01185556,
        size.height * 0.4710827);
    path.cubicTo(
        size.width * 0.01250178,
        size.height * 0.4722302,
        size.width * 0.01366178,
        size.height * 0.4742907,
        size.width * 0.01426578,
        size.height * 0.4753635);
    path.close();
    path.moveTo(size.width * 0.3426409, size.height * 0.4865793);
    path.cubicTo(
        size.width * 0.3430369,
        size.height * 0.4868022,
        size.width * 0.3436800,
        size.height * 0.4868022,
        size.width * 0.3440764,
        size.height * 0.4865793);
    path.lineTo(size.width * 0.3444351, size.height * 0.4863775);
    path.cubicTo(
        size.width * 0.3448311,
        size.height * 0.4861547,
        size.width * 0.3448311,
        size.height * 0.4857930,
        size.width * 0.3444351,
        size.height * 0.4855700);
    path.lineTo(size.width * 0.3412387, size.height * 0.4837720);
    path.cubicTo(
        size.width * 0.3408422,
        size.height * 0.4835492,
        size.width * 0.3401991,
        size.height * 0.4835492,
        size.width * 0.3398031,
        size.height * 0.4837720);
    path.lineTo(size.width * 0.3394444, size.height * 0.4839737);
    path.cubicTo(
        size.width * 0.3390480,
        size.height * 0.4841968,
        size.width * 0.3390480,
        size.height * 0.4845585,
        size.width * 0.3394444,
        size.height * 0.4847812);
    path.lineTo(size.width * 0.3426409, size.height * 0.4865793);
    path.close();
    path.moveTo(size.width * 0.1515258, size.height * 0.4745320);
    path.cubicTo(
        size.width * 0.1518698,
        size.height * 0.4743977,
        size.width * 0.1522964,
        size.height * 0.4743485,
        size.width * 0.1527062,
        size.height * 0.4743957);
    path.cubicTo(
        size.width * 0.1548444,
        size.height * 0.4746417,
        size.width * 0.1617689,
        size.height * 0.4754387,
        size.width * 0.1649551,
        size.height * 0.4758055);
    path.cubicTo(
        size.width * 0.1652640,
        size.height * 0.4758412,
        size.width * 0.1655107,
        size.height * 0.4759720,
        size.width * 0.1655924,
        size.height * 0.4761432);
    path.cubicTo(
        size.width * 0.1656742,
        size.height * 0.4763147,
        size.width * 0.1655764,
        size.height * 0.4764975,
        size.width * 0.1653404,
        size.height * 0.4766152);
    path.cubicTo(
        size.width * 0.1629071,
        size.height * 0.4778290,
        size.width * 0.1576191,
        size.height * 0.4804665,
        size.width * 0.1559862,
        size.height * 0.4812810);
    path.cubicTo(
        size.width * 0.1556729,
        size.height * 0.4814372,
        size.width * 0.1552600,
        size.height * 0.4815147,
        size.width * 0.1548427,
        size.height * 0.4814952);
    path.cubicTo(
        size.width * 0.1521613,
        size.height * 0.4813700,
        size.width * 0.1419436,
        size.height * 0.4808927,
        size.width * 0.1377520,
        size.height * 0.4806970);
    path.cubicTo(
        size.width * 0.1374778,
        size.height * 0.4806840,
        size.width * 0.1372476,
        size.height * 0.4805757,
        size.width * 0.1371764,
        size.height * 0.4804262);
    path.cubicTo(
        size.width * 0.1371049,
        size.height * 0.4802767,
        size.width * 0.1372084,
        size.height * 0.4801182,
        size.width * 0.1374347,
        size.height * 0.4800300);
    path.cubicTo(
        size.width * 0.1408902,
        size.height * 0.4786815,
        size.width * 0.1493151,
        size.height * 0.4753945,
        size.width * 0.1515258,
        size.height * 0.4745320);
    path.close();
    path.moveTo(size.width * 0.1712022, size.height * 0.4549507);
    path.cubicTo(
        size.width * 0.1709502,
        size.height * 0.4549195,
        size.width * 0.1707484,
        size.height * 0.4548133,
        size.width * 0.1706760,
        size.height * 0.4546740);
    path.cubicTo(
        size.width * 0.1706036,
        size.height * 0.4545345,
        size.width * 0.1706720,
        size.height * 0.4543837,
        size.width * 0.1708547,
        size.height * 0.4542810);
    path.cubicTo(
        size.width * 0.1720142,
        size.height * 0.4536288,
        size.width * 0.1740293,
        size.height * 0.4524953,
        size.width * 0.1754000,
        size.height * 0.4517245);
    path.cubicTo(
        size.width * 0.1761996,
        size.height * 0.4512745,
        size.width * 0.1761996,
        size.height * 0.4505455,
        size.width * 0.1754000,
        size.height * 0.4500957);
    path.cubicTo(
        size.width * 0.1753631,
        size.height * 0.4500750,
        size.width * 0.1753262,
        size.height * 0.4500542,
        size.width * 0.1752898,
        size.height * 0.4500337);
    path.cubicTo(
        size.width * 0.1744902,
        size.height * 0.4495840,
        size.width * 0.1731938,
        size.height * 0.4495840,
        size.width * 0.1723942,
        size.height * 0.4500337);
    path.cubicTo(
        size.width * 0.1710378,
        size.height * 0.4507967,
        size.width * 0.1690493,
        size.height * 0.4519152,
        size.width * 0.1678844,
        size.height * 0.4525705);
    path.cubicTo(
        size.width * 0.1676987,
        size.height * 0.4526747,
        size.width * 0.1674258,
        size.height * 0.4527127,
        size.width * 0.1671751,
        size.height * 0.4526692);
    path.cubicTo(
        size.width * 0.1669249,
        size.height * 0.4526255,
        size.width * 0.1667378,
        size.height * 0.4525075,
        size.width * 0.1666893,
        size.height * 0.4523625);
    path.cubicTo(
        size.width * 0.1663409,
        size.height * 0.4513160,
        size.width * 0.1657058,
        size.height * 0.4494087,
        size.width * 0.1653338,
        size.height * 0.4482905);
    path.cubicTo(
        size.width * 0.1653036,
        size.height * 0.4481997,
        size.width * 0.1651653,
        size.height * 0.4481332,
        size.width * 0.1650013,
        size.height * 0.4481305);
    path.cubicTo(
        size.width * 0.1648373,
        size.height * 0.4481277,
        size.width * 0.1646924,
        size.height * 0.4481895,
        size.width * 0.1646529,
        size.height * 0.4482790);
    path.cubicTo(
        size.width * 0.1637507,
        size.height * 0.4503087,
        size.width * 0.1615444,
        size.height * 0.4552722,
        size.width * 0.1610080,
        size.height * 0.4564790);
    path.cubicTo(
        size.width * 0.1609302,
        size.height * 0.4566540,
        size.width * 0.1607671,
        size.height * 0.4568135,
        size.width * 0.1605373,
        size.height * 0.4569390);
    path.cubicTo(
        size.width * 0.1587667,
        size.height * 0.4579057,
        size.width * 0.1507951,
        size.height * 0.4622585,
        size.width * 0.1475747,
        size.height * 0.4640170);
    path.cubicTo(
        size.width * 0.1473351,
        size.height * 0.4641477,
        size.width * 0.1469813,
        size.height * 0.4641872,
        size.width * 0.1466707,
        size.height * 0.4641180);
    path.cubicTo(
        size.width * 0.1463604,
        size.height * 0.4640485,
        size.width * 0.1461516,
        size.height * 0.4638830,
        size.width * 0.1461369,
        size.height * 0.4636952);
    path.cubicTo(
        size.width * 0.1459484,
        size.height * 0.4612562,
        size.width * 0.1454818,
        size.height * 0.4552177,
        size.width * 0.1452342,
        size.height * 0.4520152);
    path.cubicTo(
        size.width * 0.1452236,
        size.height * 0.4518815,
        size.width * 0.1450387,
        size.height * 0.4517732,
        size.width * 0.1448018,
        size.height * 0.4517620);
    path.cubicTo(
        size.width * 0.1445649,
        size.height * 0.4517507,
        size.width * 0.1443502,
        size.height * 0.4518402,
        size.width * 0.1443000,
        size.height * 0.4519710);
    path.cubicTo(
        size.width * 0.1426556,
        size.height * 0.4562790,
        size.width * 0.1388778,
        size.height * 0.4661757,
        size.width * 0.1378324,
        size.height * 0.4689142);
    path.cubicTo(
        size.width * 0.1376547,
        size.height * 0.4693802,
        size.width * 0.1372413,
        size.height * 0.4698072,
        size.width * 0.1366422,
        size.height * 0.4701442);
    path.cubicTo(
        size.width * 0.1339769,
        size.height * 0.4716435,
        size.width * 0.1262178,
        size.height * 0.4760080,
        size.width * 0.1229436,
        size.height * 0.4778497);
    path.cubicTo(
        size.width * 0.1221236,
        size.height * 0.4783110,
        size.width * 0.1221236,
        size.height * 0.4790592,
        size.width * 0.1229436,
        size.height * 0.4795205);
    path.cubicTo(
        size.width * 0.1229556,
        size.height * 0.4795272,
        size.width * 0.1229671,
        size.height * 0.4795337,
        size.width * 0.1229787,
        size.height * 0.4795402);
    path.cubicTo(
        size.width * 0.1237991,
        size.height * 0.4800017,
        size.width * 0.1251289,
        size.height * 0.4800017,
        size.width * 0.1259493,
        size.height * 0.4795402);
    path.cubicTo(
        size.width * 0.1292138,
        size.height * 0.4777040,
        size.width * 0.1369364,
        size.height * 0.4733600,
        size.width * 0.1396240,
        size.height * 0.4718482);
    path.cubicTo(
        size.width * 0.1402378,
        size.height * 0.4715030,
        size.width * 0.1410200,
        size.height * 0.4712675,
        size.width * 0.1418711,
        size.height * 0.4711717);
    path.cubicTo(
        size.width * 0.1468400,
        size.height * 0.4706127,
        size.width * 0.1646773,
        size.height * 0.4686060,
        size.width * 0.1723916,
        size.height * 0.4677382);
    path.cubicTo(
        size.width * 0.1726244,
        size.height * 0.4677120,
        size.width * 0.1727867,
        size.height * 0.4675925,
        size.width * 0.1727702,
        size.height * 0.4674592);
    path.cubicTo(
        size.width * 0.1727538,
        size.height * 0.4673260,
        size.width * 0.1725640,
        size.height * 0.4672202,
        size.width * 0.1723267,
        size.height * 0.4672125);
    path.cubicTo(
        size.width * 0.1665471,
        size.height * 0.4670212,
        size.width * 0.1555151,
        size.height * 0.4666560,
        size.width * 0.1511098,
        size.height * 0.4665102);
    path.cubicTo(
        size.width * 0.1507764,
        size.height * 0.4664992,
        size.width * 0.1504858,
        size.height * 0.4663792,
        size.width * 0.1503671,
        size.height * 0.4662037);
    path.cubicTo(
        size.width * 0.1502484,
        size.height * 0.4660280,
        size.width * 0.1503240,
        size.height * 0.4658297,
        size.width * 0.1505600,
        size.height * 0.4656967);
    path.cubicTo(
        size.width * 0.1537329,
        size.height * 0.4639122,
        size.width * 0.1615880,
        size.height * 0.4594935,
        size.width * 0.1633329,
        size.height * 0.4585120);
    path.cubicTo(
        size.width * 0.1635600,
        size.height * 0.4583842,
        size.width * 0.1638458,
        size.height * 0.4582950,
        size.width * 0.1641582,
        size.height * 0.4582537);
    path.cubicTo(
        size.width * 0.1663387,
        size.height * 0.4579667,
        size.width * 0.1753938,
        size.height * 0.4567745,
        size.width * 0.1790027,
        size.height * 0.4562995);
    path.cubicTo(
        size.width * 0.1791613,
        size.height * 0.4562785,
        size.width * 0.1792733,
        size.height * 0.4561987,
        size.width * 0.1792720,
        size.height * 0.4561072);
    path.cubicTo(
        size.width * 0.1792711,
        size.height * 0.4560157,
        size.width * 0.1791573,
        size.height * 0.4559367,
        size.width * 0.1789982,
        size.height * 0.4559170);
    path.cubicTo(
        size.width * 0.1769084,
        size.height * 0.4556580,
        size.width * 0.1731564,
        size.height * 0.4551930,
        size.width * 0.1712022,
        size.height * 0.4549507);
    path.close();
    path.moveTo(size.width * 0.05425156, size.height * 0.4751582);
    path.cubicTo(
        size.width * 0.05387289,
        size.height * 0.4750577,
        size.width * 0.05358400,
        size.height * 0.4748747,
        size.width * 0.05345156,
        size.height * 0.4746512);
    path.cubicTo(
        size.width * 0.05276133,
        size.height * 0.4734865,
        size.width * 0.05052622,
        size.height * 0.4697150,
        size.width * 0.04949778,
        size.height * 0.4679795);
    path.cubicTo(
        size.width * 0.04939822,
        size.height * 0.4678112,
        size.width * 0.04947600,
        size.height * 0.4676255,
        size.width * 0.04969911,
        size.height * 0.4675000);
    path.cubicTo(
        size.width * 0.04992222,
        size.height * 0.4673745,
        size.width * 0.05025200,
        size.height * 0.4673308,
        size.width * 0.05055111,
        size.height * 0.4673870);
    path.cubicTo(
        size.width * 0.05363689,
        size.height * 0.4679655,
        size.width * 0.06034178,
        size.height * 0.4692225,
        size.width * 0.06241200,
        size.height * 0.4696108);
    path.cubicTo(
        size.width * 0.06280933,
        size.height * 0.4696852,
        size.width * 0.06313511,
        size.height * 0.4698480,
        size.width * 0.06331378,
        size.height * 0.4700607);
    path.cubicTo(
        size.width * 0.06446133,
        size.height * 0.4714298,
        size.width * 0.06883556,
        size.height * 0.4766457,
        size.width * 0.07062978,
        size.height * 0.4787855);
    path.cubicTo(
        size.width * 0.07074711,
        size.height * 0.4789255,
        size.width * 0.07069556,
        size.height * 0.4790917,
        size.width * 0.07050133,
        size.height * 0.4792012);
    path.cubicTo(
        size.width * 0.07030667,
        size.height * 0.4793108,
        size.width * 0.07001067,
        size.height * 0.4793397,
        size.width * 0.06976178,
        size.height * 0.4792737);
    path.cubicTo(
        size.width * 0.06595778,
        size.height * 0.4782645,
        size.width * 0.05668489,
        size.height * 0.4758040,
        size.width * 0.05425156,
        size.height * 0.4751582);
    path.close();
    path.moveTo(size.width * 0.08225822, size.height * 0.4396737);
    path.cubicTo(
        size.width * 0.08208400,
        size.height * 0.4397810,
        size.width * 0.08181956,
        size.height * 0.4398265,
        size.width * 0.08156889,
        size.height * 0.4397920);
    path.cubicTo(
        size.width * 0.08131778,
        size.height * 0.4397575,
        size.width * 0.08112044,
        size.height * 0.4396487,
        size.width * 0.08105333,
        size.height * 0.4395085);
    path.cubicTo(
        size.width * 0.08062889,
        size.height * 0.4386175,
        size.width * 0.07989111,
        size.height * 0.4370690,
        size.width * 0.07938978,
        size.height * 0.4360160);
    path.cubicTo(
        size.width * 0.07909689,
        size.height * 0.4354015,
        size.width * 0.07797422,
        size.height * 0.4350370,
        size.width * 0.07688222,
        size.height * 0.4352015);
    path.cubicTo(
        size.width * 0.07683200,
        size.height * 0.4352092,
        size.width * 0.07678178,
        size.height * 0.4352167,
        size.width * 0.07673156,
        size.height * 0.4352242);
    path.cubicTo(
        size.width * 0.07563956,
        size.height * 0.4353890,
        size.width * 0.07499111,
        size.height * 0.4360205,
        size.width * 0.07528400,
        size.height * 0.4366347);
    path.cubicTo(
        size.width * 0.07578044,
        size.height * 0.4376770,
        size.width * 0.07650844,
        size.height * 0.4392050,
        size.width * 0.07693467,
        size.height * 0.4401000);
    path.cubicTo(
        size.width * 0.07700267,
        size.height * 0.4402427,
        size.width * 0.07692444,
        size.height * 0.4403945,
        size.width * 0.07673200,
        size.height * 0.4404947);
    path.cubicTo(
        size.width * 0.07653956,
        size.height * 0.4405950,
        size.width * 0.07626444,
        size.height * 0.4406272,
        size.width * 0.07601689,
        size.height * 0.4405782);
    path.cubicTo(
        size.width * 0.07423156,
        size.height * 0.4402247,
        size.width * 0.07097733,
        size.height * 0.4395805,
        size.width * 0.06906978,
        size.height * 0.4392027);
    path.cubicTo(
        size.width * 0.06891511,
        size.height * 0.4391720,
        size.width * 0.06874356,
        size.height * 0.4392060,
        size.width * 0.06865733,
        size.height * 0.4392845);
    path.cubicTo(
        size.width * 0.06857111,
        size.height * 0.4393630,
        size.width * 0.06859378,
        size.height * 0.4394645,
        size.width * 0.06871156,
        size.height * 0.4395287);
    path.cubicTo(
        size.width * 0.07138533,
        size.height * 0.4409830,
        size.width * 0.07792444,
        size.height * 0.4445392,
        size.width * 0.07951422,
        size.height * 0.4454040);
    path.cubicTo(
        size.width * 0.07974489,
        size.height * 0.4455295,
        size.width * 0.07990844,
        size.height * 0.4456885,
        size.width * 0.07998667,
        size.height * 0.4458635);
    path.cubicTo(
        size.width * 0.08058978,
        size.height * 0.4472092,
        size.width * 0.08330578,
        size.height * 0.4532687,
        size.width * 0.08440267,
        size.height * 0.4557167);
    path.cubicTo(
        size.width * 0.08448444,
        size.height * 0.4558990,
        size.width * 0.08436844,
        size.height * 0.4560912,
        size.width * 0.08410622,
        size.height * 0.4562077);
    path.cubicTo(
        size.width * 0.08384444,
        size.height * 0.4563242,
        size.width * 0.08348489,
        size.height * 0.4563432,
        size.width * 0.08318889,
        size.height * 0.4562565);
    path.cubicTo(
        size.width * 0.07933911,
        size.height * 0.4551287,
        size.width * 0.06980889,
        size.height * 0.4523370,
        size.width * 0.06475467,
        size.height * 0.4508562);
    path.cubicTo(
        size.width * 0.06454356,
        size.height * 0.4507945,
        size.width * 0.06428400,
        size.height * 0.4508305,
        size.width * 0.06414844,
        size.height * 0.4509402);
    path.cubicTo(
        size.width * 0.06401289,
        size.height * 0.4510500,
        size.width * 0.06404311,
        size.height * 0.4511995,
        size.width * 0.06421956,
        size.height * 0.4512890);
    path.cubicTo(
        size.width * 0.07002978,
        size.height * 0.4542442,
        size.width * 0.08337822,
        size.height * 0.4610330,
        size.width * 0.08707156,
        size.height * 0.4629115);
    path.cubicTo(
        size.width * 0.08770000,
        size.height * 0.4632310,
        size.width * 0.08815067,
        size.height * 0.4636460,
        size.width * 0.08837022,
        size.height * 0.4641062);
    path.cubicTo(
        size.width * 0.08934578,
        size.height * 0.4661542,
        size.width * 0.09218578,
        size.height * 0.4721162,
        size.width * 0.09338400,
        size.height * 0.4746320);
    path.cubicTo(
        size.width * 0.09368444,
        size.height * 0.4752622,
        size.width * 0.09483600,
        size.height * 0.4756365,
        size.width * 0.09595644,
        size.height * 0.4754675);
    path.cubicTo(
        size.width * 0.09597244,
        size.height * 0.4754650,
        size.width * 0.09598844,
        size.height * 0.4754627,
        size.width * 0.09600444,
        size.height * 0.4754602);
    path.cubicTo(
        size.width * 0.09712533,
        size.height * 0.4752915,
        size.width * 0.09779022,
        size.height * 0.4746435,
        size.width * 0.09748978,
        size.height * 0.4740132);
    path.cubicTo(
        size.width * 0.09629511,
        size.height * 0.4715047,
        size.width * 0.09346844,
        size.height * 0.4655707,
        size.width * 0.09248444,
        size.height * 0.4635057);
    path.cubicTo(
        size.width * 0.09226000,
        size.height * 0.4630340,
        size.width * 0.09228844,
        size.height * 0.4625355,
        size.width * 0.09256667,
        size.height * 0.4620727);
    path.cubicTo(
        size.width * 0.09419022,
        size.height * 0.4593727,
        size.width * 0.1000196,
        size.height * 0.4496803,
        size.width * 0.1025404,
        size.height * 0.4454882);
    path.cubicTo(
        size.width * 0.1026169,
        size.height * 0.4453617,
        size.width * 0.1025138,
        size.height * 0.4452230,
        size.width * 0.1023004,
        size.height * 0.4451642);
    path.cubicTo(
        size.width * 0.1020867,
        size.height * 0.4451058,
        size.width * 0.1018293,
        size.height * 0.4451452,
        size.width * 0.1016987,
        size.height * 0.4452570);
    path.cubicTo(
        size.width * 0.09851422,
        size.height * 0.4479767,
        size.width * 0.09243644,
        size.height * 0.4531685,
        size.width * 0.09000933,
        size.height * 0.4552415);
    path.cubicTo(
        size.width * 0.08982533,
        size.height * 0.4553985,
        size.width * 0.08949511,
        size.height * 0.4554800,
        size.width * 0.08916533,
        size.height * 0.4554500);
    path.cubicTo(
        size.width * 0.08883600,
        size.height * 0.4554200,
        size.width * 0.08856800,
        size.height * 0.4552840,
        size.width * 0.08848178,
        size.height * 0.4551028);
    path.cubicTo(
        size.width * 0.08732044,
        size.height * 0.4526648,
        size.width * 0.08444533,
        size.height * 0.4466288,
        size.width * 0.08380622,
        size.height * 0.4452880);
    path.cubicTo(
        size.width * 0.08372356,
        size.height * 0.4451135,
        size.width * 0.08372844,
        size.height * 0.4449298,
        size.width * 0.08382133,
        size.height * 0.4447570);
    path.cubicTo(
        size.width * 0.08446978,
        size.height * 0.4435510,
        size.width * 0.08716222,
        size.height * 0.4385440,
        size.width * 0.08823511,
        size.height * 0.4365483);
    path.cubicTo(
        size.width * 0.08828222,
        size.height * 0.4364608,
        size.width * 0.08821511,
        size.height * 0.4363663,
        size.width * 0.08807378,
        size.height * 0.4363210);
    path.cubicTo(
        size.width * 0.08793200,
        size.height * 0.4362758,
        size.width * 0.08775378,
        size.height * 0.4362918,
        size.width * 0.08764400,
        size.height * 0.4363593);
    path.cubicTo(
        size.width * 0.08620000,
        size.height * 0.4372478,
        size.width * 0.08360800,
        size.height * 0.4388430,
        size.width * 0.08225822,
        size.height * 0.4396738);
    path.close();
    path.moveTo(size.width * 0.07568622, size.height * 0.4631012);
    path.cubicTo(
        size.width * 0.07550756,
        size.height * 0.4628882,
        size.width * 0.07518178,
        size.height * 0.4627257,
        size.width * 0.07478489,
        size.height * 0.4626512);
    path.cubicTo(
        size.width * 0.07271422,
        size.height * 0.4622630,
        size.width * 0.06600933,
        size.height * 0.4610057,
        size.width * 0.06292400,
        size.height * 0.4604272);
    path.cubicTo(
        size.width * 0.06262444,
        size.height * 0.4603712,
        size.width * 0.06229467,
        size.height * 0.4604150,
        size.width * 0.06207156,
        size.height * 0.4605405);
    path.cubicTo(
        size.width * 0.06184844,
        size.height * 0.4606660,
        size.width * 0.06177067,
        size.height * 0.4608515,
        size.width * 0.06187022,
        size.height * 0.4610200);
    path.cubicTo(
        size.width * 0.06289867,
        size.height * 0.4627555,
        size.width * 0.06513378,
        size.height * 0.4665270,
        size.width * 0.06582400,
        size.height * 0.4676917);
    path.cubicTo(
        size.width * 0.06595644,
        size.height * 0.4679150,
        size.width * 0.06624533,
        size.height * 0.4680982,
        size.width * 0.06662400,
        size.height * 0.4681987);
    path.cubicTo(
        size.width * 0.06905733,
        size.height * 0.4688442,
        size.width * 0.07833067,
        size.height * 0.4713047,
        size.width * 0.08213422,
        size.height * 0.4723140);
    path.cubicTo(
        size.width * 0.08238311,
        size.height * 0.4723802,
        size.width * 0.08267911,
        size.height * 0.4723512,
        size.width * 0.08287378,
        size.height * 0.4722417);
    path.cubicTo(
        size.width * 0.08306844,
        size.height * 0.4721322,
        size.width * 0.08312000,
        size.height * 0.4719657,
        size.width * 0.08300222,
        size.height * 0.4718257);
    path.cubicTo(
        size.width * 0.08120800,
        size.height * 0.4696862,
        size.width * 0.07683422,
        size.height * 0.4644700,
        size.width * 0.07568622,
        size.height * 0.4631012);
    path.close();
    path.moveTo(size.width * 0.1318476, size.height * 0.4634630);
    path.cubicTo(
        size.width * 0.1320862,
        size.height * 0.4632695,
        size.width * 0.1321738,
        size.height * 0.4630295,
        size.width * 0.1320898,
        size.height * 0.4627987);
    path.cubicTo(
        size.width * 0.1316520,
        size.height * 0.4615960,
        size.width * 0.1302351,
        size.height * 0.4577012,
        size.width * 0.1295831,
        size.height * 0.4559090);
    path.cubicTo(
        size.width * 0.1295200,
        size.height * 0.4557350,
        size.width * 0.1292876,
        size.height * 0.4555962,
        size.width * 0.1289827,
        size.height * 0.4555502);
    path.cubicTo(
        size.width * 0.1286782,
        size.height * 0.4555045,
        size.width * 0.1283533,
        size.height * 0.4555592,
        size.width * 0.1281440,
        size.height * 0.4556920);
    path.cubicTo(
        size.width * 0.1259862,
        size.height * 0.4570607,
        size.width * 0.1212969,
        size.height * 0.4600352,
        size.width * 0.1198489,
        size.height * 0.4609540);
    path.cubicTo(
        size.width * 0.1195711,
        size.height * 0.4611300,
        size.width * 0.1194338,
        size.height * 0.4613625,
        size.width * 0.1194684,
        size.height * 0.4615970);
    path.cubicTo(
        size.width * 0.1196911,
        size.height * 0.4631052,
        size.width * 0.1205396,
        size.height * 0.4688527,
        size.width * 0.1208876,
        size.height * 0.4712105);
    path.cubicTo(
        size.width * 0.1209102,
        size.height * 0.4713647,
        size.width * 0.1211027,
        size.height * 0.4714945,
        size.width * 0.1213684,
        size.height * 0.4715345);
    path.cubicTo(
        size.width * 0.1216347,
        size.height * 0.4715745,
        size.width * 0.1219164,
        size.height * 0.4715165,
        size.width * 0.1220733,
        size.height * 0.4713892);
    path.cubicTo(
        size.width * 0.1244702,
        size.height * 0.4694452,
        size.width * 0.1303142,
        size.height * 0.4647065,
        size.width * 0.1318476,
        size.height * 0.4634630);
    path.close();
    path.moveTo(size.width * 0.1025671, size.height * 0.4590497);
    path.cubicTo(
        size.width * 0.1025324,
        size.height * 0.4588150,
        size.width * 0.1026698,
        size.height * 0.4585827,
        size.width * 0.1029476,
        size.height * 0.4584065);
    path.cubicTo(
        size.width * 0.1043960,
        size.height * 0.4574880,
        size.width * 0.1090849,
        size.height * 0.4545135,
        size.width * 0.1112427,
        size.height * 0.4531447);
    path.cubicTo(
        size.width * 0.1114520,
        size.height * 0.4530120,
        size.width * 0.1117769,
        size.height * 0.4529570,
        size.width * 0.1120813,
        size.height * 0.4530030);
    path.cubicTo(
        size.width * 0.1123862,
        size.height * 0.4530490,
        size.width * 0.1126187,
        size.height * 0.4531877,
        size.width * 0.1126818,
        size.height * 0.4533615);
    path.cubicTo(
        size.width * 0.1133338,
        size.height * 0.4551537,
        size.width * 0.1147507,
        size.height * 0.4590487,
        size.width * 0.1151884,
        size.height * 0.4602515);
    path.cubicTo(
        size.width * 0.1152724,
        size.height * 0.4604820,
        size.width * 0.1151849,
        size.height * 0.4607220,
        size.width * 0.1149462,
        size.height * 0.4609155);
    path.cubicTo(
        size.width * 0.1134129,
        size.height * 0.4621590,
        size.width * 0.1075689,
        size.height * 0.4668980,
        size.width * 0.1051720,
        size.height * 0.4688417);
    path.cubicTo(
        size.width * 0.1050151,
        size.height * 0.4689690,
        size.width * 0.1047333,
        size.height * 0.4690272,
        size.width * 0.1044676,
        size.height * 0.4689870);
    path.cubicTo(
        size.width * 0.1042013,
        size.height * 0.4689470,
        size.width * 0.1040089,
        size.height * 0.4688175,
        size.width * 0.1039862,
        size.height * 0.4686632);
    path.cubicTo(
        size.width * 0.1036382,
        size.height * 0.4663055,
        size.width * 0.1027898,
        size.height * 0.4605580,
        size.width * 0.1025671,
        size.height * 0.4590497);
    path.close();
    path.moveTo(size.width * 0.2201556, size.height * 0.4665755);
    path.cubicTo(
        size.width * 0.2196142,
        size.height * 0.4666572,
        size.width * 0.2192929,
        size.height * 0.4669705,
        size.width * 0.2194378,
        size.height * 0.4672747);
    path.lineTo(size.width * 0.2195689, size.height * 0.4675505);
    path.cubicTo(
        size.width * 0.2197142,
        size.height * 0.4678550,
        size.width * 0.2202711,
        size.height * 0.4680357,
        size.width * 0.2208120,
        size.height * 0.4679542);
    path.lineTo(size.width * 0.2251787, size.height * 0.4672960);
    path.cubicTo(
        size.width * 0.2257200,
        size.height * 0.4672145,
        size.width * 0.2260413,
        size.height * 0.4669012,
        size.width * 0.2258964,
        size.height * 0.4665967);
    path.lineTo(size.width * 0.2257649, size.height * 0.4663212);
    path.cubicTo(
        size.width * 0.2256200,
        size.height * 0.4660167,
        size.width * 0.2250631,
        size.height * 0.4658360,
        size.width * 0.2245222,
        size.height * 0.4659175);
    path.lineTo(size.width * 0.2201556, size.height * 0.4665755);
    path.close();
    path.moveTo(size.width * 0.3631729, size.height * 0.4468010);
    path.cubicTo(
        size.width * 0.3637138,
        size.height * 0.4467195,
        size.width * 0.3640356,
        size.height * 0.4464062,
        size.width * 0.3638902,
        size.height * 0.4461017);
    path.lineTo(size.width * 0.3637591, size.height * 0.4458260);
    path.cubicTo(
        size.width * 0.3636142,
        size.height * 0.4455217,
        size.width * 0.3630569,
        size.height * 0.4453407,
        size.width * 0.3625160,
        size.height * 0.4454222);
    path.lineTo(size.width * 0.3581493, size.height * 0.4460805);
    path.cubicTo(
        size.width * 0.3576084,
        size.height * 0.4461620,
        size.width * 0.3572867,
        size.height * 0.4464755,
        size.width * 0.3574316,
        size.height * 0.4467797);
    path.lineTo(size.width * 0.3575631, size.height * 0.4470555);
    path.cubicTo(
        size.width * 0.3577080,
        size.height * 0.4473597,
        size.width * 0.3582649,
        size.height * 0.4475407,
        size.width * 0.3588062,
        size.height * 0.4474592);
    path.lineTo(size.width * 0.3631729, size.height * 0.4468010);
    path.close();
    path.moveTo(size.width * 0.1882364, size.height * 0.4317677);
    path.cubicTo(
        size.width * 0.1887102,
        size.height * 0.4315975,
        size.width * 0.1893107,
        size.height * 0.4315862,
        size.width * 0.1898036,
        size.height * 0.4317380);
    path.cubicTo(
        size.width * 0.1902964,
        size.height * 0.4318900,
        size.width * 0.1906031,
        size.height * 0.4321807,
        size.width * 0.1906031,
        size.height * 0.4324970);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.4345040,
        size.width * 0.1906031,
        size.height * 0.4379915,
        size.width * 0.1906031,
        size.height * 0.4403632);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.4417470,
        size.width * 0.1925973,
        size.height * 0.4428687,
        size.width * 0.1950573,
        size.height * 0.4428687);
    path.cubicTo(
        size.width * 0.1951702,
        size.height * 0.4428687,
        size.width * 0.1952831,
        size.height * 0.4428687,
        size.width * 0.1953960,
        size.height * 0.4428687);
    path.cubicTo(
        size.width * 0.1978560,
        size.height * 0.4428687,
        size.width * 0.1998502,
        size.height * 0.4417470,
        size.width * 0.1998502,
        size.height * 0.4403632);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.4380155,
        size.width * 0.1998502,
        size.height * 0.4345742,
        size.width * 0.1998502,
        size.height * 0.4325582);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.4322372,
        size.width * 0.2001662,
        size.height * 0.4319425,
        size.width * 0.2006711,
        size.height * 0.4317927);
    path.cubicTo(
        size.width * 0.2011760,
        size.height * 0.4316430,
        size.width * 0.2017867,
        size.height * 0.4316627,
        size.width * 0.2022573,
        size.height * 0.4318442);
    path.cubicTo(
        size.width * 0.2056556,
        size.height * 0.4331525,
        size.width * 0.2118484,
        size.height * 0.4355372,
        size.width * 0.2154796,
        size.height * 0.4369352);
    path.cubicTo(
        size.width * 0.2157738,
        size.height * 0.4370485,
        size.width * 0.2161684,
        size.height * 0.4370312,
        size.width * 0.2164280,
        size.height * 0.4368937);
    path.cubicTo(
        size.width * 0.2166876,
        size.height * 0.4367562,
        size.width * 0.2167418,
        size.height * 0.4365355,
        size.width * 0.2165587,
        size.height * 0.4363635);
    path.cubicTo(
        size.width * 0.2123951,
        size.height * 0.4324605,
        size.width * 0.2022147,
        size.height * 0.4229162,
        size.width * 0.1997391,
        size.height * 0.4205952);
    path.cubicTo(
        size.width * 0.1993800,
        size.height * 0.4202587,
        size.width * 0.1991956,
        size.height * 0.4198725,
        size.width * 0.1992058,
        size.height * 0.4194800);
    path.cubicTo(
        size.width * 0.1992853,
        size.height * 0.4164610,
        size.width * 0.1996444,
        size.height * 0.4028670,
        size.width * 0.1997893,
        size.height * 0.3973752);
    path.cubicTo(
        size.width * 0.1998000,
        size.height * 0.3969665,
        size.width * 0.2002364,
        size.height * 0.3965992,
        size.width * 0.2009040,
        size.height * 0.3964375);
    path.cubicTo(
        size.width * 0.2015711,
        size.height * 0.3962757,
        size.width * 0.2023453,
        size.height * 0.3963492,
        size.width * 0.2028809,
        size.height * 0.3966255);
    path.cubicTo(
        size.width * 0.2098418,
        size.height * 0.4002147,
        size.width * 0.2270742,
        size.height * 0.4091002,
        size.width * 0.2362133,
        size.height * 0.4138125);
    path.cubicTo(
        size.width * 0.2365947,
        size.height * 0.4140092,
        size.width * 0.2371760,
        size.height * 0.4140157,
        size.width * 0.2375711,
        size.height * 0.4138280);
    path.cubicTo(
        size.width * 0.2379662,
        size.height * 0.4136405,
        size.width * 0.2380520,
        size.height * 0.4133167,
        size.width * 0.2377711,
        size.height * 0.4130725);
    path.cubicTo(
        size.width * 0.2285191,
        size.height * 0.4050222,
        size.width * 0.2072644,
        size.height * 0.3865282,
        size.width * 0.2013831,
        size.height * 0.3814107);
    path.cubicTo(
        size.width * 0.2003827,
        size.height * 0.3805402,
        size.width * 0.1998502,
        size.height * 0.3795257,
        size.width * 0.1998502,
        size.height * 0.3784890);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.3738762,
        size.width * 0.1998502,
        size.height * 0.3604480,
        size.width * 0.1998502,
        size.height * 0.3547815);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.3533617,
        size.width * 0.1978044,
        size.height * 0.3522110,
        size.width * 0.1952809,
        size.height * 0.3522110);
    path.cubicTo(
        size.width * 0.1952449,
        size.height * 0.3522110,
        size.width * 0.1952084,
        size.height * 0.3522110,
        size.width * 0.1951724,
        size.height * 0.3522110);
    path.cubicTo(
        size.width * 0.1926489,
        size.height * 0.3522110,
        size.width * 0.1906031,
        size.height * 0.3533617,
        size.width * 0.1906031,
        size.height * 0.3547815);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.3604312,
        size.width * 0.1906031,
        size.height * 0.3737965,
        size.width * 0.1906031,
        size.height * 0.3784477);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.3795102,
        size.width * 0.1900440,
        size.height * 0.3805490,
        size.width * 0.1889960,
        size.height * 0.3814330);
    path.cubicTo(
        size.width * 0.1828809,
        size.height * 0.3865925,
        size.width * 0.1609289,
        size.height * 0.4051145,
        size.width * 0.1514351,
        size.height * 0.4131250);
    path.cubicTo(
        size.width * 0.1511484,
        size.height * 0.4133670,
        size.width * 0.1512258,
        size.height * 0.4136910,
        size.width * 0.1516156,
        size.height * 0.4138820);
    path.cubicTo(
        size.width * 0.1520053,
        size.height * 0.4140727,
        size.width * 0.1525867,
        size.height * 0.4140710,
        size.width * 0.1529729,
        size.height * 0.4138780);
    path.cubicTo(
        size.width * 0.1623871,
        size.height * 0.4091707,
        size.width * 0.1803564,
        size.height * 0.4001860,
        size.width * 0.1875320,
        size.height * 0.3965982);
    path.cubicTo(
        size.width * 0.1880751,
        size.height * 0.3963267,
        size.width * 0.1888511,
        size.height * 0.3962597,
        size.width * 0.1895138,
        size.height * 0.3964272);
    path.cubicTo(
        size.width * 0.1901764,
        size.height * 0.3965947,
        size.width * 0.1906031,
        size.height * 0.3969652,
        size.width * 0.1906031,
        size.height * 0.3973740);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.4028650,
        size.width * 0.1906031,
        size.height * 0.4164597,
        size.width * 0.1906031,
        size.height * 0.4194797);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.4198725,
        size.width * 0.1904080,
        size.height * 0.4202572,
        size.width * 0.1900400,
        size.height * 0.4205907);
    path.cubicTo(
        size.width * 0.1874702,
        size.height * 0.4229197,
        size.width * 0.1768004,
        size.height * 0.4325890,
        size.width * 0.1725480,
        size.height * 0.4364427);
    path.cubicTo(
        size.width * 0.1723613,
        size.height * 0.4366120,
        size.width * 0.1724076,
        size.height * 0.4368315,
        size.width * 0.1726596,
        size.height * 0.4369715);
    path.cubicTo(
        size.width * 0.1729116,
        size.height * 0.4371115,
        size.width * 0.1733022,
        size.height * 0.4371347,
        size.width * 0.1736009,
        size.height * 0.4370275);
    path.cubicTo(
        size.width * 0.1775244,
        size.height * 0.4356175,
        size.width * 0.1845684,
        size.height * 0.4330860,
        size.width * 0.1882364,
        size.height * 0.4317677);
    path.close();
    path.moveTo(size.width * 0.2406871, size.height * 0.4267972);
    path.cubicTo(
        size.width * 0.2402911,
        size.height * 0.4265745,
        size.width * 0.2396480,
        size.height * 0.4265745,
        size.width * 0.2392520,
        size.height * 0.4267972);
    path.lineTo(size.width * 0.2388929, size.height * 0.4269990);
    path.cubicTo(
        size.width * 0.2384969,
        size.height * 0.4272220,
        size.width * 0.2384969,
        size.height * 0.4275837,
        size.width * 0.2388929,
        size.height * 0.4278065);
    path.lineTo(size.width * 0.2420898, size.height * 0.4296045);
    path.cubicTo(
        size.width * 0.2424858,
        size.height * 0.4298275,
        size.width * 0.2431289,
        size.height * 0.4298275,
        size.width * 0.2435249,
        size.height * 0.4296045);
    path.lineTo(size.width * 0.2438840, size.height * 0.4294027);
    path.cubicTo(
        size.width * 0.2442800,
        size.height * 0.4291800,
        size.width * 0.2442800,
        size.height * 0.4288182,
        size.width * 0.2438840,
        size.height * 0.4285952);
    path.lineTo(size.width * 0.2406871, size.height * 0.4267972);
    path.close();
    path.moveTo(size.width * 0.3121960, size.height * 0.4169100);
    path.cubicTo(
        size.width * 0.3123409,
        size.height * 0.4166055,
        size.width * 0.3120191,
        size.height * 0.4162922,
        size.width * 0.3114782,
        size.height * 0.4162107);
    path.lineTo(size.width * 0.3109880, size.height * 0.4161367);
    path.cubicTo(
        size.width * 0.3104471,
        size.height * 0.4160552,
        size.width * 0.3098898,
        size.height * 0.4162362,
        size.width * 0.3097449,
        size.height * 0.4165405);
    path.lineTo(size.width * 0.3085751, size.height * 0.4189967);
    path.cubicTo(
        size.width * 0.3084298,
        size.height * 0.4193012,
        size.width * 0.3087516,
        size.height * 0.4196145,
        size.width * 0.3092924,
        size.height * 0.4196960);
    path.lineTo(size.width * 0.3097827, size.height * 0.4197700);
    path.cubicTo(
        size.width * 0.3103240,
        size.height * 0.4198515,
        size.width * 0.3108809,
        size.height * 0.4196705,
        size.width * 0.3110258,
        size.height * 0.4193662);
    path.lineTo(size.width * 0.3121960, size.height * 0.4169100);
    path.close();
    path.moveTo(size.width * 0.1649547, size.height * 0.3846182);
    path.cubicTo(
        size.width * 0.1647924,
        size.height * 0.3851222,
        size.width * 0.1642707,
        size.height * 0.3855670,
        size.width * 0.1635107,
        size.height * 0.3858492);
    path.cubicTo(
        size.width * 0.1595484,
        size.height * 0.3873210,
        size.width * 0.1467169,
        size.height * 0.3920865,
        size.width * 0.1408120,
        size.height * 0.3942795);
    path.cubicTo(
        size.width * 0.1402396,
        size.height * 0.3944922,
        size.width * 0.1395022,
        size.height * 0.3945047,
        size.width * 0.1389076,
        size.height * 0.3943115);
    path.cubicTo(
        size.width * 0.1383133,
        size.height * 0.3941185,
        size.width * 0.1379640,
        size.height * 0.3937532,
        size.width * 0.1380049,
        size.height * 0.3933677);
    path.cubicTo(
        size.width * 0.1384289,
        size.height * 0.3893950,
        size.width * 0.1393502,
        size.height * 0.3807615,
        size.width * 0.1396347,
        size.height * 0.3780952);
    path.cubicTo(
        size.width * 0.1396893,
        size.height * 0.3775840,
        size.width * 0.1401133,
        size.height * 0.3771075,
        size.width * 0.1408084,
        size.height * 0.3767765);
    path.cubicTo(
        size.width * 0.1452756,
        size.height * 0.3746490,
        size.width * 0.1622996,
        size.height * 0.3665415,
        size.width * 0.1692827,
        size.height * 0.3632157);
    path.cubicTo(
        size.width * 0.1697396,
        size.height * 0.3629980,
        size.width * 0.1703902,
        size.height * 0.3629652,
        size.width * 0.1709089,
        size.height * 0.3631335);
    path.cubicTo(
        size.width * 0.1714276,
        size.height * 0.3633020,
        size.width * 0.1717022,
        size.height * 0.3636352,
        size.width * 0.1715956,
        size.height * 0.3639667);
    path.cubicTo(
        size.width * 0.1699667,
        size.height * 0.3690315,
        size.width * 0.1659964,
        size.height * 0.3813782,
        size.width * 0.1649547,
        size.height * 0.3846182);
    path.close();
    path.moveTo(size.width * 0.2254987, size.height * 0.3846182);
    path.cubicTo(
        size.width * 0.2256609,
        size.height * 0.3851222,
        size.width * 0.2261827,
        size.height * 0.3855670,
        size.width * 0.2269427,
        size.height * 0.3858492);
    path.cubicTo(
        size.width * 0.2309053,
        size.height * 0.3873210,
        size.width * 0.2437364,
        size.height * 0.3920865,
        size.width * 0.2496413,
        size.height * 0.3942795);
    path.cubicTo(
        size.width * 0.2502138,
        size.height * 0.3944922,
        size.width * 0.2509511,
        size.height * 0.3945047,
        size.width * 0.2515458,
        size.height * 0.3943115);
    path.cubicTo(
        size.width * 0.2521400,
        size.height * 0.3941185,
        size.width * 0.2524893,
        size.height * 0.3937532,
        size.width * 0.2524484,
        size.height * 0.3933677);
    path.cubicTo(
        size.width * 0.2520244,
        size.height * 0.3893950,
        size.width * 0.2511031,
        size.height * 0.3807615,
        size.width * 0.2508187,
        size.height * 0.3780952);
    path.cubicTo(
        size.width * 0.2507640,
        size.height * 0.3775840,
        size.width * 0.2503400,
        size.height * 0.3771075,
        size.width * 0.2496449,
        size.height * 0.3767765);
    path.cubicTo(
        size.width * 0.2451778,
        size.height * 0.3746490,
        size.width * 0.2281538,
        size.height * 0.3665415,
        size.width * 0.2211707,
        size.height * 0.3632157);
    path.cubicTo(
        size.width * 0.2207138,
        size.height * 0.3629980,
        size.width * 0.2200631,
        size.height * 0.3629652,
        size.width * 0.2195444,
        size.height * 0.3631335);
    path.cubicTo(
        size.width * 0.2190258,
        size.height * 0.3633020,
        size.width * 0.2187511,
        size.height * 0.3636352,
        size.width * 0.2188578,
        size.height * 0.3639667);
    path.cubicTo(
        size.width * 0.2204867,
        size.height * 0.3690315,
        size.width * 0.2244569,
        size.height * 0.3813782,
        size.width * 0.2254987,
        size.height * 0.3846182);
    path.close();
    path.moveTo(size.width * 0.3668444, size.height * 0.3783032);
    path.cubicTo(
        size.width * 0.3668191,
        size.height * 0.3779875,
        size.width * 0.3671022,
        size.height * 0.3776892,
        size.width * 0.3675822,
        size.height * 0.3775250);
    path.cubicTo(
        size.width * 0.3680627,
        size.height * 0.3773610,
        size.width * 0.3686636,
        size.height * 0.3773570,
        size.width * 0.3691502,
        size.height * 0.3775152);
    path.cubicTo(
        size.width * 0.3722404,
        size.height * 0.3785187,
        size.width * 0.3776098,
        size.height * 0.3802625,
        size.width * 0.3812613,
        size.height * 0.3814482);
    path.cubicTo(
        size.width * 0.3833916,
        size.height * 0.3821402,
        size.width * 0.3861160,
        size.height * 0.3817295,
        size.width * 0.3873458,
        size.height * 0.3805312);
    path.cubicTo(
        size.width * 0.3874022,
        size.height * 0.3804762,
        size.width * 0.3874591,
        size.height * 0.3804212,
        size.width * 0.3875156,
        size.height * 0.3803662);
    path.cubicTo(
        size.width * 0.3887453,
        size.height * 0.3791677,
        size.width * 0.3880156,
        size.height * 0.3776355,
        size.width * 0.3858849,
        size.height * 0.3769435);
    path.cubicTo(
        size.width * 0.3822707,
        size.height * 0.3757697,
        size.width * 0.3769724,
        size.height * 0.3740490,
        size.width * 0.3738684,
        size.height * 0.3730410);
    path.cubicTo(
        size.width * 0.3733742,
        size.height * 0.3728805,
        size.width * 0.3730787,
        size.height * 0.3725792,
        size.width * 0.3731004,
        size.height * 0.3722585);
    path.cubicTo(
        size.width * 0.3731222,
        size.height * 0.3719377,
        size.width * 0.3734582,
        size.height * 0.3716500,
        size.width * 0.3739724,
        size.height * 0.3715112);
    path.cubicTo(
        size.width * 0.3776862,
        size.height * 0.3705102,
        size.width * 0.3844538,
        size.height * 0.3686857,
        size.width * 0.3884218,
        size.height * 0.3676160);
    path.cubicTo(
        size.width * 0.3887436,
        size.height * 0.3675292,
        size.width * 0.3889142,
        size.height * 0.3673282,
        size.width * 0.3888324,
        size.height * 0.3671330);
    path.cubicTo(
        size.width * 0.3887502,
        size.height * 0.3669380,
        size.width * 0.3884378,
        size.height * 0.3668012,
        size.width * 0.3880813,
        size.height * 0.3668045);
    path.cubicTo(
        size.width * 0.3799907,
        size.height * 0.3668810,
        size.width * 0.3602058,
        size.height * 0.3670682,
        size.width * 0.3553947,
        size.height * 0.3671137);
    path.cubicTo(
        size.width * 0.3546969,
        size.height * 0.3671205,
        size.width * 0.3540102,
        size.height * 0.3670172,
        size.width * 0.3534111,
        size.height * 0.3668160);
    path.cubicTo(
        size.width * 0.3488027,
        size.height * 0.3652677,
        size.width * 0.3280529,
        size.height * 0.3582957,
        size.width * 0.3196702,
        size.height * 0.3554792);
    path.cubicTo(
        size.width * 0.3190462,
        size.height * 0.3552695,
        size.width * 0.3186991,
        size.height * 0.3548735,
        size.width * 0.3187836,
        size.height * 0.3544675);
    path.cubicTo(
        size.width * 0.3188684,
        size.height * 0.3540615,
        size.width * 0.3193684,
        size.height * 0.3537212,
        size.width * 0.3200618,
        size.height * 0.3535982);
    path.cubicTo(
        size.width * 0.3290680,
        size.height * 0.3520020,
        size.width * 0.3513640,
        size.height * 0.3480502,
        size.width * 0.3631893,
        size.height * 0.3459542);
    path.cubicTo(
        size.width * 0.3636822,
        size.height * 0.3458670,
        size.width * 0.3639836,
        size.height * 0.3455870,
        size.width * 0.3638920,
        size.height * 0.3453007);
    path.cubicTo(
        size.width * 0.3638004,
        size.height * 0.3450145,
        size.width * 0.3633449,
        size.height * 0.3448110,
        size.width * 0.3628284,
        size.height * 0.3448255);
    path.cubicTo(
        size.width * 0.3458084,
        size.height * 0.3453075,
        size.width * 0.3067076,
        size.height * 0.3464142,
        size.width * 0.2958884,
        size.height * 0.3467207);
    path.cubicTo(
        size.width * 0.2940476,
        size.height * 0.3467727,
        size.width * 0.2922196,
        size.height * 0.3465247,
        size.width * 0.2906236,
        size.height * 0.3460065);
    path.cubicTo(
        size.width * 0.2835218,
        size.height * 0.3437000,
        size.width * 0.2628476,
        size.height * 0.3369860,
        size.width * 0.2541231,
        size.height * 0.3341527);
    path.cubicTo(
        size.width * 0.2519378,
        size.height * 0.3334427,
        size.width * 0.2491427,
        size.height * 0.3338640,
        size.width * 0.2478809,
        size.height * 0.3350935);
    path.cubicTo(
        size.width * 0.2478631,
        size.height * 0.3351110,
        size.width * 0.2478449,
        size.height * 0.3351285,
        size.width * 0.2478271,
        size.height * 0.3351462);
    path.cubicTo(
        size.width * 0.2465649,
        size.height * 0.3363755,
        size.width * 0.2473138,
        size.height * 0.3379475,
        size.width * 0.2494996,
        size.height * 0.3386575);
    path.cubicTo(
        size.width * 0.2581978,
        size.height * 0.3414822,
        size.width * 0.2787751,
        size.height * 0.3481650,
        size.width * 0.2859360,
        size.height * 0.3504905);
    path.cubicTo(
        size.width * 0.2875720,
        size.height * 0.3510217,
        size.width * 0.2888916,
        size.height * 0.3518135,
        size.width * 0.2897289,
        size.height * 0.3527660);
    path.cubicTo(
        size.width * 0.2946151,
        size.height * 0.3583247,
        size.width * 0.3121556,
        size.height * 0.3782792,
        size.width * 0.3197413,
        size.height * 0.3869095);
    path.cubicTo(
        size.width * 0.3199707,
        size.height * 0.3871702,
        size.width * 0.3205080,
        size.height * 0.3872945,
        size.width * 0.3209969,
        size.height * 0.3872000);
    path.cubicTo(
        size.width * 0.3214858,
        size.height * 0.3871055,
        size.width * 0.3217738,
        size.height * 0.3868215,
        size.width * 0.3216693,
        size.height * 0.3865367);
    path.cubicTo(
        size.width * 0.3191293,
        size.height * 0.3795970,
        size.width * 0.3142813,
        size.height * 0.3663512,
        size.width * 0.3123453,
        size.height * 0.3610617);
    path.cubicTo(
        size.width * 0.3121991,
        size.height * 0.3606615,
        size.width * 0.3124836,
        size.height * 0.3602500,
        size.width * 0.3130729,
        size.height * 0.3600110);
    path.cubicTo(
        size.width * 0.3136622,
        size.height * 0.3597717,
        size.width * 0.3144458,
        size.height * 0.3597492,
        size.width * 0.3150751,
        size.height * 0.3599537);
    path.cubicTo(
        size.width * 0.3235289,
        size.height * 0.3626992,
        size.width * 0.3444596,
        size.height * 0.3694965,
        size.width * 0.3491093,
        size.height * 0.3710065);
    path.cubicTo(
        size.width * 0.3497138,
        size.height * 0.3712030,
        size.width * 0.3502084,
        size.height * 0.3714902,
        size.width * 0.3505382,
        size.height * 0.3718365);
    path.cubicTo(
        size.width * 0.3528387,
        size.height * 0.3742527,
        size.width * 0.3623907,
        size.height * 0.3842847,
        size.width * 0.3661978,
        size.height * 0.3882835);
    path.cubicTo(
        size.width * 0.3663653,
        size.height * 0.3884590,
        size.width * 0.3667262,
        size.height * 0.3885462,
        size.width * 0.3670676,
        size.height * 0.3884935);
    path.cubicTo(
        size.width * 0.3674093,
        size.height * 0.3884405,
        size.width * 0.3676404,
        size.height * 0.3882617,
        size.width * 0.3676244,
        size.height * 0.3880627);
    path.cubicTo(
        size.width * 0.3674156,
        size.height * 0.3854465,
        size.width * 0.3670400,
        size.height * 0.3807495,
        size.width * 0.3668444,
        size.height * 0.3783032);
    path.close();
    path.moveTo(size.width * 0.01661867, size.height * 0.3714930);
    path.cubicTo(
        size.width * 0.01711733,
        size.height * 0.3716385,
        size.width * 0.01743556,
        size.height * 0.3719255,
        size.width * 0.01744800,
        size.height * 0.3722415);
    path.cubicTo(
        size.width * 0.01746089,
        size.height * 0.3725575,
        size.width * 0.01716578,
        size.height * 0.3728522,
        size.width * 0.01667911,
        size.height * 0.3730102);
    path.cubicTo(
        size.width * 0.01358933,
        size.height * 0.3740140,
        size.width * 0.008219556,
        size.height * 0.3757577,
        size.width * 0.004568444,
        size.height * 0.3769435);
    path.cubicTo(
        size.width * 0.002437778,
        size.height * 0.3776355,
        size.width * 0.001708000,
        size.height * 0.3791677,
        size.width * 0.002937778,
        size.height * 0.3803662);
    path.cubicTo(
        size.width * 0.002994222,
        size.height * 0.3804212,
        size.width * 0.003051111,
        size.height * 0.3804762,
        size.width * 0.003107556,
        size.height * 0.3805312);
    path.cubicTo(
        size.width * 0.004337333,
        size.height * 0.3817295,
        size.width * 0.007061778,
        size.height * 0.3821402,
        size.width * 0.009192000,
        size.height * 0.3814482);
    path.cubicTo(
        size.width * 0.01280667,
        size.height * 0.3802745,
        size.width * 0.01810489,
        size.height * 0.3785537,
        size.width * 0.02120889,
        size.height * 0.3775457);
    path.cubicTo(
        size.width * 0.02170311,
        size.height * 0.3773852,
        size.width * 0.02231467,
        size.height * 0.3773917,
        size.width * 0.02279733,
        size.height * 0.3775630);
    path.cubicTo(
        size.width * 0.02328044,
        size.height * 0.3777340,
        size.width * 0.02355511,
        size.height * 0.3780412,
        size.width * 0.02351156,
        size.height * 0.3783615);
    path.cubicTo(
        size.width * 0.02319600,
        size.height * 0.3806710,
        size.width * 0.02262133,
        size.height * 0.3848800,
        size.width * 0.02228444,
        size.height * 0.3873480);
    path.cubicTo(
        size.width * 0.02225689,
        size.height * 0.3875477,
        size.width * 0.02248089,
        size.height * 0.3877315,
        size.width * 0.02282267,
        size.height * 0.3877892);
    path.cubicTo(
        size.width * 0.02316400,
        size.height * 0.3878470,
        size.width * 0.02353067,
        size.height * 0.3877630,
        size.width * 0.02370400,
        size.height * 0.3875877);
    path.cubicTo(
        size.width * 0.02763156,
        size.height * 0.3836080,
        size.width * 0.03723556,
        size.height * 0.3738765,
        size.width * 0.03957111,
        size.height * 0.3715102);
    path.cubicTo(
        size.width * 0.03990978,
        size.height * 0.3711670,
        size.width * 0.04041200,
        size.height * 0.3708837,
        size.width * 0.04102133,
        size.height * 0.3706927);
    path.cubicTo(
        size.width * 0.04570933,
        size.height * 0.3692220,
        size.width * 0.06681822,
        size.height * 0.3625997,
        size.width * 0.07534578,
        size.height * 0.3599245);
    path.cubicTo(
        size.width * 0.07598044,
        size.height * 0.3597255,
        size.width * 0.07676400,
        size.height * 0.3597545,
        size.width * 0.07734667,
        size.height * 0.3599987);
    path.cubicTo(
        size.width * 0.07792978,
        size.height * 0.3602427,
        size.width * 0.07820311,
        size.height * 0.3606567,
        size.width * 0.07804578,
        size.height * 0.3610557);
    path.cubicTo(
        size.width * 0.07600044,
        size.height * 0.3662412,
        size.width * 0.07093644,
        size.height * 0.3790785,
        size.width * 0.06825111,
        size.height * 0.3858867);
    path.cubicTo(
        size.width * 0.06813911,
        size.height * 0.3861707,
        size.width * 0.06841956,
        size.height * 0.3864575,
        size.width * 0.06890578,
        size.height * 0.3865560);
    path.cubicTo(
        size.width * 0.06939244,
        size.height * 0.3866545,
        size.width * 0.06993333,
        size.height * 0.3865345,
        size.width * 0.07016889,
        size.height * 0.3862757);
    path.cubicTo(
        size.width * 0.07793733,
        size.height * 0.3777435,
        size.width * 0.09578356,
        size.height * 0.3581425,
        size.width * 0.1007218,
        size.height * 0.3527187);
    path.cubicTo(
        size.width * 0.1015618,
        size.height * 0.3517960,
        size.width * 0.1028578,
        size.height * 0.3510295,
        size.width * 0.1044538,
        size.height * 0.3505112);
    path.cubicTo(
        size.width * 0.1115556,
        size.height * 0.3482047,
        size.width * 0.1322298,
        size.height * 0.3414907,
        size.width * 0.1409538,
        size.height * 0.3386575);
    path.cubicTo(
        size.width * 0.1431396,
        size.height * 0.3379475,
        size.width * 0.1438884,
        size.height * 0.3363755,
        size.width * 0.1426262,
        size.height * 0.3351462);
    path.cubicTo(
        size.width * 0.1426084,
        size.height * 0.3351285,
        size.width * 0.1425902,
        size.height * 0.3351110,
        size.width * 0.1425724,
        size.height * 0.3350935);
    path.cubicTo(
        size.width * 0.1413107,
        size.height * 0.3338640,
        size.width * 0.1385156,
        size.height * 0.3334427,
        size.width * 0.1363302,
        size.height * 0.3341527);
    path.cubicTo(
        size.width * 0.1276320,
        size.height * 0.3369775,
        size.width * 0.1070547,
        size.height * 0.3436602,
        size.width * 0.09989378,
        size.height * 0.3459857);
    path.cubicTo(
        size.width * 0.09825778,
        size.height * 0.3465170,
        size.width * 0.09637911,
        size.height * 0.3467640,
        size.width * 0.09449378,
        size.height * 0.3466955);
    path.cubicTo(
        size.width * 0.08349244,
        size.height * 0.3462965,
        size.width * 0.04400044,
        size.height * 0.3448637,
        size.width * 0.02692000,
        size.height * 0.3442442);
    path.cubicTo(
        size.width * 0.02640444,
        size.height * 0.3442255,
        size.width * 0.02594400,
        size.height * 0.3444252,
        size.width * 0.02584533,
        size.height * 0.3447105);
    path.cubicTo(
        size.width * 0.02574622,
        size.height * 0.3449960,
        size.width * 0.02603956,
        size.height * 0.3452782,
        size.width * 0.02653022,
        size.height * 0.3453697);
    path.cubicTo(
        size.width * 0.03848444,
        size.height * 0.3476022,
        size.width * 0.06130178,
        size.height * 0.3518635,
        size.width * 0.07041333,
        size.height * 0.3535652);
    path.cubicTo(
        size.width * 0.07110311,
        size.height * 0.3536940,
        size.width * 0.07159378,
        size.height * 0.3540382,
        size.width * 0.07166756,
        size.height * 0.3544450);
    path.cubicTo(
        size.width * 0.07174133,
        size.height * 0.3548515,
        size.width * 0.07138356,
        size.height * 0.3552445,
        size.width * 0.07075467,
        size.height * 0.3554490);
    path.cubicTo(
        size.width * 0.06230089,
        size.height * 0.3581945,
        size.width * 0.04136978,
        size.height * 0.3649917,
        size.width * 0.03672044,
        size.height * 0.3665017);
    path.cubicTo(
        size.width * 0.03611600,
        size.height * 0.3666980,
        size.width * 0.03542578,
        size.height * 0.3667955,
        size.width * 0.03472844,
        size.height * 0.3667830);
    path.cubicTo(
        size.width * 0.02985822,
        size.height * 0.3666955,
        size.width * 0.009636444,
        size.height * 0.3663327,
        size.width * 0.001576444,
        size.height * 0.3661880);
    path.cubicTo(
        size.width * 0.001222667,
        size.height * 0.3661817,
        size.width * 0.0009080000,
        size.height * 0.3663140,
        size.width * 0.0008186667,
        size.height * 0.3665067);
    path.cubicTo(
        size.width * 0.0007288889,
        size.height * 0.3666995,
        size.width * 0.0008888889,
        size.height * 0.3669015,
        size.width * 0.001203111,
        size.height * 0.3669932);
    path.cubicTo(
        size.width * 0.005335556,
        size.height * 0.3681995,
        size.width * 0.01275511,
        size.height * 0.3703652,
        size.width * 0.01661867,
        size.height * 0.3714930);
    path.close();
    path.moveTo(size.width * 0.2826120, size.height * 0.3660702);
    path.cubicTo(
        size.width * 0.2833071,
        size.height * 0.3664012,
        size.width * 0.2837311,
        size.height * 0.3668777,
        size.width * 0.2837858,
        size.height * 0.3673890);
    path.cubicTo(
        size.width * 0.2840702,
        size.height * 0.3700552,
        size.width * 0.2849916,
        size.height * 0.3786885,
        size.width * 0.2854151,
        size.height * 0.3826615);
    path.cubicTo(
        size.width * 0.2854564,
        size.height * 0.3830467,
        size.width * 0.2851071,
        size.height * 0.3834122,
        size.width * 0.2845124,
        size.height * 0.3836052);
    path.cubicTo(
        size.width * 0.2839182,
        size.height * 0.3837982,
        size.width * 0.2831809,
        size.height * 0.3837857,
        size.width * 0.2826080,
        size.height * 0.3835732);
    path.cubicTo(
        size.width * 0.2767036,
        size.height * 0.3813802,
        size.width * 0.2638720,
        size.height * 0.3766147,
        size.width * 0.2599093,
        size.height * 0.3751430);
    path.cubicTo(
        size.width * 0.2591493,
        size.height * 0.3748608,
        size.width * 0.2586280,
        size.height * 0.3744160,
        size.width * 0.2584658,
        size.height * 0.3739117);
    path.cubicTo(
        size.width * 0.2574240,
        size.height * 0.3706717,
        size.width * 0.2534533,
        size.height * 0.3583250,
        size.width * 0.2518249,
        size.height * 0.3532605);
    path.cubicTo(
        size.width * 0.2517182,
        size.height * 0.3529290,
        size.width * 0.2519929,
        size.height * 0.3525957,
        size.width * 0.2525116,
        size.height * 0.3524272);
    path.cubicTo(
        size.width * 0.2530298,
        size.height * 0.3522587,
        size.width * 0.2536804,
        size.height * 0.3522917,
        size.width * 0.2541373,
        size.height * 0.3525092);
    path.cubicTo(
        size.width * 0.2611209,
        size.height * 0.3558350,
        size.width * 0.2781444,
        size.height * 0.3639425,
        size.width * 0.2826120,
        size.height * 0.3660702);
    path.close();
    path.moveTo(size.width * 0.1078413, size.height * 0.3660702);
    path.cubicTo(
        size.width * 0.1071462,
        size.height * 0.3664012,
        size.width * 0.1067222,
        size.height * 0.3668777,
        size.width * 0.1066676,
        size.height * 0.3673890);
    path.cubicTo(
        size.width * 0.1063831,
        size.height * 0.3700552,
        size.width * 0.1054618,
        size.height * 0.3786885,
        size.width * 0.1050382,
        size.height * 0.3826615);
    path.cubicTo(
        size.width * 0.1049969,
        size.height * 0.3830467,
        size.width * 0.1053462,
        size.height * 0.3834122,
        size.width * 0.1059409,
        size.height * 0.3836052);
    path.cubicTo(
        size.width * 0.1065351,
        size.height * 0.3837982,
        size.width * 0.1072724,
        size.height * 0.3837857,
        size.width * 0.1078453,
        size.height * 0.3835732);
    path.cubicTo(
        size.width * 0.1137498,
        size.height * 0.3813802,
        size.width * 0.1265813,
        size.height * 0.3766147,
        size.width * 0.1305440,
        size.height * 0.3751430);
    path.cubicTo(
        size.width * 0.1313040,
        size.height * 0.3748608,
        size.width * 0.1318253,
        size.height * 0.3744160,
        size.width * 0.1319876,
        size.height * 0.3739117);
    path.cubicTo(
        size.width * 0.1330293,
        size.height * 0.3706717,
        size.width * 0.1370000,
        size.height * 0.3583250,
        size.width * 0.1386284,
        size.height * 0.3532605);
    path.cubicTo(
        size.width * 0.1387351,
        size.height * 0.3529290,
        size.width * 0.1384604,
        size.height * 0.3525957,
        size.width * 0.1379418,
        size.height * 0.3524272);
    path.cubicTo(
        size.width * 0.1374236,
        size.height * 0.3522587,
        size.width * 0.1367729,
        size.height * 0.3522917,
        size.width * 0.1363160,
        size.height * 0.3525092);
    path.cubicTo(
        size.width * 0.1293324,
        size.height * 0.3558350,
        size.width * 0.1123089,
        size.height * 0.3639425,
        size.width * 0.1078413,
        size.height * 0.3660702);
    path.close();
    path.moveTo(size.width * 0.1952267, size.height * 0.2868185);
    path.cubicTo(
        size.width * 0.2258493,
        size.height * 0.2868185,
        size.width * 0.2507111,
        size.height * 0.3008032,
        size.width * 0.2507111,
        size.height * 0.3180285);
    path.cubicTo(
        size.width * 0.2507111,
        size.height * 0.3352540,
        size.width * 0.2258493,
        size.height * 0.3492387,
        size.width * 0.1952267,
        size.height * 0.3492387);
    path.cubicTo(
        size.width * 0.1646040,
        size.height * 0.3492387,
        size.width * 0.1397422,
        size.height * 0.3352540,
        size.width * 0.1397422,
        size.height * 0.3180285);
    path.cubicTo(
        size.width * 0.1397422,
        size.height * 0.3008032,
        size.width * 0.1646040,
        size.height * 0.2868185,
        size.width * 0.1952267,
        size.height * 0.2868185);
    path.close();
    path.moveTo(size.width * 0.07756933, size.height * 0.3365767);
    path.cubicTo(
        size.width * 0.07671200,
        size.height * 0.3367497,
        size.width * 0.07576622,
        size.height * 0.3367180,
        size.width * 0.07495200,
        size.height * 0.3364890);
    path.cubicTo(
        size.width * 0.07070489,
        size.height * 0.3352945,
        size.width * 0.05695200,
        size.height * 0.3314265,
        size.width * 0.05062356,
        size.height * 0.3296465);
    path.cubicTo(
        size.width * 0.05000978,
        size.height * 0.3294740,
        size.width * 0.04962178,
        size.height * 0.3291210,
        size.width * 0.04962178,
        size.height * 0.3287350);
    path.cubicTo(
        size.width * 0.04962178,
        size.height * 0.3283487,
        size.width * 0.05000978,
        size.height * 0.3279960,
        size.width * 0.05062356,
        size.height * 0.3278232);
    path.cubicTo(
        size.width * 0.05695200,
        size.height * 0.3260432,
        size.width * 0.07070489,
        size.height * 0.3221755,
        size.width * 0.07495200,
        size.height * 0.3209810);
    path.cubicTo(
        size.width * 0.07576622,
        size.height * 0.3207517,
        size.width * 0.07671200,
        size.height * 0.3207202,
        size.width * 0.07756933,
        size.height * 0.3208932);
    path.cubicTo(
        size.width * 0.08307867,
        size.height * 0.3220057,
        size.width * 0.1040729,
        size.height * 0.3262450,
        size.width * 0.1126849,
        size.height * 0.3279837);
    path.cubicTo(
        size.width * 0.1132484,
        size.height * 0.3280977,
        size.width * 0.1136240,
        size.height * 0.3283982,
        size.width * 0.1136240,
        size.height * 0.3287350);
    path.cubicTo(
        size.width * 0.1136240,
        size.height * 0.3290717,
        size.width * 0.1132484,
        size.height * 0.3293722,
        size.width * 0.1126849,
        size.height * 0.3294860);
    path.cubicTo(
        size.width * 0.1040729,
        size.height * 0.3312250,
        size.width * 0.08307867,
        size.height * 0.3354642,
        size.width * 0.07756933,
        size.height * 0.3365767);
    path.close();
    path.moveTo(size.width * 0.3128840, size.height * 0.3365767);
    path.cubicTo(
        size.width * 0.3137413,
        size.height * 0.3367497,
        size.width * 0.3146871,
        size.height * 0.3367180,
        size.width * 0.3155013,
        size.height * 0.3364890);
    path.cubicTo(
        size.width * 0.3197484,
        size.height * 0.3352945,
        size.width * 0.3335013,
        size.height * 0.3314265,
        size.width * 0.3398298,
        size.height * 0.3296465);
    path.cubicTo(
        size.width * 0.3404436,
        size.height * 0.3294740,
        size.width * 0.3408316,
        size.height * 0.3291210,
        size.width * 0.3408316,
        size.height * 0.3287350);
    path.cubicTo(
        size.width * 0.3408316,
        size.height * 0.3283487,
        size.width * 0.3404436,
        size.height * 0.3279960,
        size.width * 0.3398298,
        size.height * 0.3278232);
    path.cubicTo(
        size.width * 0.3335013,
        size.height * 0.3260432,
        size.width * 0.3197484,
        size.height * 0.3221755,
        size.width * 0.3155013,
        size.height * 0.3209810);
    path.cubicTo(
        size.width * 0.3146871,
        size.height * 0.3207517,
        size.width * 0.3137413,
        size.height * 0.3207202,
        size.width * 0.3128840,
        size.height * 0.3208932);
    path.cubicTo(
        size.width * 0.3073747,
        size.height * 0.3220057,
        size.width * 0.2863804,
        size.height * 0.3262450,
        size.width * 0.2777684,
        size.height * 0.3279837);
    path.cubicTo(
        size.width * 0.2772049,
        size.height * 0.3280977,
        size.width * 0.2768293,
        size.height * 0.3283982,
        size.width * 0.2768293,
        size.height * 0.3287350);
    path.cubicTo(
        size.width * 0.2768293,
        size.height * 0.3290717,
        size.width * 0.2772049,
        size.height * 0.3293722,
        size.width * 0.2777684,
        size.height * 0.3294860);
    path.cubicTo(
        size.width * 0.2863804,
        size.height * 0.3312250,
        size.width * 0.3073747,
        size.height * 0.3354642,
        size.width * 0.3128840,
        size.height * 0.3365767);
    path.close();
    path.moveTo(size.width * 0.07756933, size.height * 0.2994805);
    path.cubicTo(
        size.width * 0.07671200,
        size.height * 0.2993075,
        size.width * 0.07576622,
        size.height * 0.2993392,
        size.width * 0.07495200,
        size.height * 0.2995682);
    path.cubicTo(
        size.width * 0.07070489,
        size.height * 0.3007627,
        size.width * 0.05695200,
        size.height * 0.3046307,
        size.width * 0.05062356,
        size.height * 0.3064105);
    path.cubicTo(
        size.width * 0.05000978,
        size.height * 0.3065832,
        size.width * 0.04962178,
        size.height * 0.3069362,
        size.width * 0.04962178,
        size.height * 0.3073222);
    path.cubicTo(
        size.width * 0.04962178,
        size.height * 0.3077082,
        size.width * 0.05000978,
        size.height * 0.3080612,
        size.width * 0.05062356,
        size.height * 0.3082340);
    path.cubicTo(
        size.width * 0.05695200,
        size.height * 0.3100137,
        size.width * 0.07070489,
        size.height * 0.3138817,
        size.width * 0.07495200,
        size.height * 0.3150762);
    path.cubicTo(
        size.width * 0.07576622,
        size.height * 0.3153052,
        size.width * 0.07671200,
        size.height * 0.3153370,
        size.width * 0.07756933,
        size.height * 0.3151640);
    path.cubicTo(
        size.width * 0.08307867,
        size.height * 0.3140515,
        size.width * 0.1040729,
        size.height * 0.3098122,
        size.width * 0.1126849,
        size.height * 0.3080732);
    path.cubicTo(
        size.width * 0.1132484,
        size.height * 0.3079595,
        size.width * 0.1136240,
        size.height * 0.3076590,
        size.width * 0.1136240,
        size.height * 0.3073222);
    path.cubicTo(
        size.width * 0.1136240,
        size.height * 0.3069855,
        size.width * 0.1132484,
        size.height * 0.3066850,
        size.width * 0.1126849,
        size.height * 0.3065712);
    path.cubicTo(
        size.width * 0.1040729,
        size.height * 0.3048322,
        size.width * 0.08307867,
        size.height * 0.3005930,
        size.width * 0.07756933,
        size.height * 0.2994805);
    path.close();
    path.moveTo(size.width * 0.3128840, size.height * 0.2994805);
    path.cubicTo(
        size.width * 0.3137413,
        size.height * 0.2993075,
        size.width * 0.3146871,
        size.height * 0.2993392,
        size.width * 0.3155013,
        size.height * 0.2995682);
    path.cubicTo(
        size.width * 0.3197484,
        size.height * 0.3007627,
        size.width * 0.3335013,
        size.height * 0.3046307,
        size.width * 0.3398298,
        size.height * 0.3064105);
    path.cubicTo(
        size.width * 0.3404436,
        size.height * 0.3065832,
        size.width * 0.3408316,
        size.height * 0.3069362,
        size.width * 0.3408316,
        size.height * 0.3073222);
    path.cubicTo(
        size.width * 0.3408316,
        size.height * 0.3077082,
        size.width * 0.3404436,
        size.height * 0.3080612,
        size.width * 0.3398298,
        size.height * 0.3082340);
    path.cubicTo(
        size.width * 0.3335013,
        size.height * 0.3100137,
        size.width * 0.3197484,
        size.height * 0.3138817,
        size.width * 0.3155013,
        size.height * 0.3150762);
    path.cubicTo(
        size.width * 0.3146871,
        size.height * 0.3153052,
        size.width * 0.3137413,
        size.height * 0.3153370,
        size.width * 0.3128840,
        size.height * 0.3151640);
    path.cubicTo(
        size.width * 0.3073747,
        size.height * 0.3140515,
        size.width * 0.2863804,
        size.height * 0.3098122,
        size.width * 0.2777684,
        size.height * 0.3080732);
    path.cubicTo(
        size.width * 0.2772049,
        size.height * 0.3079595,
        size.width * 0.2768293,
        size.height * 0.3076590,
        size.width * 0.2768293,
        size.height * 0.3073222);
    path.cubicTo(
        size.width * 0.2768293,
        size.height * 0.3069855,
        size.width * 0.2772049,
        size.height * 0.3066850,
        size.width * 0.2777684,
        size.height * 0.3065712);
    path.cubicTo(
        size.width * 0.2863804,
        size.height * 0.3048322,
        size.width * 0.3073747,
        size.height * 0.3005930,
        size.width * 0.3128840,
        size.height * 0.2994805);
    path.close();
    path.moveTo(size.width * 0.3738347, size.height * 0.2645642);
    path.cubicTo(
        size.width * 0.3733360,
        size.height * 0.2644185,
        size.width * 0.3730178,
        size.height * 0.2641315,
        size.width * 0.3730053,
        size.height * 0.2638155);
    path.cubicTo(
        size.width * 0.3729924,
        size.height * 0.2634995,
        size.width * 0.3732876,
        size.height * 0.2632047,
        size.width * 0.3737742,
        size.height * 0.2630467);
    path.cubicTo(
        size.width * 0.3768640,
        size.height * 0.2620432,
        size.width * 0.3822338,
        size.height * 0.2602995,
        size.width * 0.3858849,
        size.height * 0.2591137);
    path.cubicTo(
        size.width * 0.3880156,
        size.height * 0.2584217,
        size.width * 0.3887453,
        size.height * 0.2568895,
        size.width * 0.3875156,
        size.height * 0.2556910);
    path.cubicTo(
        size.width * 0.3874591,
        size.height * 0.2556360,
        size.width * 0.3874022,
        size.height * 0.2555810,
        size.width * 0.3873458,
        size.height * 0.2555260);
    path.cubicTo(
        size.width * 0.3861160,
        size.height * 0.2543275,
        size.width * 0.3833916,
        size.height * 0.2539170,
        size.width * 0.3812613,
        size.height * 0.2546090);
    path.cubicTo(
        size.width * 0.3776467,
        size.height * 0.2557827,
        size.width * 0.3723484,
        size.height * 0.2575032,
        size.width * 0.3692444,
        size.height * 0.2585115);
    path.cubicTo(
        size.width * 0.3687502,
        size.height * 0.2586720,
        size.width * 0.3681387,
        size.height * 0.2586652,
        size.width * 0.3676560,
        size.height * 0.2584942);
    path.cubicTo(
        size.width * 0.3671729,
        size.height * 0.2583232,
        size.width * 0.3668982,
        size.height * 0.2580157,
        size.width * 0.3669418,
        size.height * 0.2576957);
    path.cubicTo(
        size.width * 0.3672573,
        size.height * 0.2553862,
        size.width * 0.3678320,
        size.height * 0.2511770,
        size.width * 0.3681689,
        size.height * 0.2487092);
    path.cubicTo(
        size.width * 0.3681964,
        size.height * 0.2485092,
        size.width * 0.3679724,
        size.height * 0.2483257,
        size.width * 0.3676307,
        size.height * 0.2482680);
    path.cubicTo(
        size.width * 0.3672893,
        size.height * 0.2482102,
        size.width * 0.3669227,
        size.height * 0.2482942,
        size.width * 0.3667493,
        size.height * 0.2484695);
    path.cubicTo(
        size.width * 0.3628218,
        size.height * 0.2524490,
        size.width * 0.3532178,
        size.height * 0.2621807,
        size.width * 0.3508822,
        size.height * 0.2645470);
    path.cubicTo(
        size.width * 0.3505436,
        size.height * 0.2648902,
        size.width * 0.3500413,
        size.height * 0.2651732,
        size.width * 0.3494320,
        size.height * 0.2653645);
    path.cubicTo(
        size.width * 0.3447440,
        size.height * 0.2668352,
        size.width * 0.3236351,
        size.height * 0.2734572,
        size.width * 0.3151076,
        size.height * 0.2761327);
    path.cubicTo(
        size.width * 0.3144729,
        size.height * 0.2763317,
        size.width * 0.3136893,
        size.height * 0.2763027,
        size.width * 0.3131067,
        size.height * 0.2760585);
    path.cubicTo(
        size.width * 0.3125236,
        size.height * 0.2758142,
        size.width * 0.3122502,
        size.height * 0.2754005,
        size.width * 0.3124076,
        size.height * 0.2750015);
    path.cubicTo(
        size.width * 0.3144529,
        size.height * 0.2698160,
        size.width * 0.3195169,
        size.height * 0.2569787,
        size.width * 0.3222022,
        size.height * 0.2501702);
    path.cubicTo(
        size.width * 0.3223142,
        size.height * 0.2498862,
        size.width * 0.3220338,
        size.height * 0.2495997,
        size.width * 0.3215476,
        size.height * 0.2495012);
    path.cubicTo(
        size.width * 0.3210609,
        size.height * 0.2494025,
        size.width * 0.3205200,
        size.height * 0.2495227,
        size.width * 0.3202844,
        size.height * 0.2497815);
    path.cubicTo(
        size.width * 0.3125160,
        size.height * 0.2583137,
        size.width * 0.2946698,
        size.height * 0.2779147,
        size.width * 0.2897316,
        size.height * 0.2833385);
    path.cubicTo(
        size.width * 0.2888916,
        size.height * 0.2842610,
        size.width * 0.2875956,
        size.height * 0.2850277,
        size.width * 0.2859996,
        size.height * 0.2855460);
    path.cubicTo(
        size.width * 0.2788978,
        size.height * 0.2878522,
        size.width * 0.2582236,
        size.height * 0.2945665,
        size.width * 0.2494996,
        size.height * 0.2973997);
    path.cubicTo(
        size.width * 0.2473138,
        size.height * 0.2981095,
        size.width * 0.2465649,
        size.height * 0.2996817,
        size.width * 0.2478271,
        size.height * 0.3009110);
    path.cubicTo(
        size.width * 0.2478449,
        size.height * 0.3009285,
        size.width * 0.2478631,
        size.height * 0.3009462,
        size.width * 0.2478809,
        size.height * 0.3009637);
    path.cubicTo(
        size.width * 0.2491427,
        size.height * 0.3021932,
        size.width * 0.2519378,
        size.height * 0.3026142,
        size.width * 0.2541231,
        size.height * 0.3019045);
    path.cubicTo(
        size.width * 0.2628213,
        size.height * 0.2990797,
        size.width * 0.2833987,
        size.height * 0.2923970,
        size.width * 0.2905596,
        size.height * 0.2900715);
    path.cubicTo(
        size.width * 0.2921956,
        size.height * 0.2895402,
        size.width * 0.2940742,
        size.height * 0.2892932,
        size.width * 0.2959596,
        size.height * 0.2893615);
    path.cubicTo(
        size.width * 0.3069609,
        size.height * 0.2897607,
        size.width * 0.3464533,
        size.height * 0.2911932,
        size.width * 0.3635333,
        size.height * 0.2918130);
    path.cubicTo(
        size.width * 0.3640489,
        size.height * 0.2918317,
        size.width * 0.3645093,
        size.height * 0.2916320,
        size.width * 0.3646080,
        size.height * 0.2913467);
    path.cubicTo(
        size.width * 0.3647071,
        size.height * 0.2910612,
        size.width * 0.3644138,
        size.height * 0.2907790,
        size.width * 0.3639231,
        size.height * 0.2906875);
    path.cubicTo(
        size.width * 0.3519689,
        size.height * 0.2884550,
        size.width * 0.3291516,
        size.height * 0.2841937,
        size.width * 0.3200400,
        size.height * 0.2824920);
    path.cubicTo(
        size.width * 0.3193507,
        size.height * 0.2823632,
        size.width * 0.3188596,
        size.height * 0.2820187,
        size.width * 0.3187858,
        size.height * 0.2816122);
    path.cubicTo(
        size.width * 0.3187120,
        size.height * 0.2812057,
        size.width * 0.3190698,
        size.height * 0.2808125,
        size.width * 0.3196987,
        size.height * 0.2806082);
    path.cubicTo(
        size.width * 0.3281529,
        size.height * 0.2778627,
        size.width * 0.3490836,
        size.height * 0.2710652,
        size.width * 0.3537329,
        size.height * 0.2695555);
    path.cubicTo(
        size.width * 0.3543373,
        size.height * 0.2693590,
        size.width * 0.3550276,
        size.height * 0.2692617,
        size.width * 0.3557249,
        size.height * 0.2692742);
    path.cubicTo(
        size.width * 0.3605951,
        size.height * 0.2693615,
        size.width * 0.3808169,
        size.height * 0.2697245,
        size.width * 0.3888769,
        size.height * 0.2698692);
    path.cubicTo(
        size.width * 0.3892307,
        size.height * 0.2698755,
        size.width * 0.3895453,
        size.height * 0.2697432,
        size.width * 0.3896347,
        size.height * 0.2695505);
    path.cubicTo(
        size.width * 0.3897244,
        size.height * 0.2693577,
        size.width * 0.3895649,
        size.height * 0.2691557,
        size.width * 0.3892502,
        size.height * 0.2690640);
    path.cubicTo(
        size.width * 0.3851178,
        size.height * 0.2678577,
        size.width * 0.3776982,
        size.height * 0.2656920,
        size.width * 0.3738347,
        size.height * 0.2645642);
    path.close();
    path.moveTo(size.width * 0.02360889, size.height * 0.2577537);
    path.cubicTo(
        size.width * 0.02363422,
        size.height * 0.2580695,
        size.width * 0.02335111,
        size.height * 0.2583680,
        size.width * 0.02287111,
        size.height * 0.2585322);
    path.cubicTo(
        size.width * 0.02239067,
        size.height * 0.2586962,
        size.width * 0.02178978,
        size.height * 0.2587000,
        size.width * 0.02130311,
        size.height * 0.2585420);
    path.cubicTo(
        size.width * 0.01821289,
        size.height * 0.2575385,
        size.width * 0.01284356,
        size.height * 0.2557947,
        size.width * 0.009192000,
        size.height * 0.2546090);
    path.cubicTo(
        size.width * 0.007061778,
        size.height * 0.2539170,
        size.width * 0.004337333,
        size.height * 0.2543275,
        size.width * 0.003107556,
        size.height * 0.2555260);
    path.cubicTo(
        size.width * 0.003051111,
        size.height * 0.2555810,
        size.width * 0.002994222,
        size.height * 0.2556360,
        size.width * 0.002937778,
        size.height * 0.2556910);
    path.cubicTo(
        size.width * 0.001708000,
        size.height * 0.2568895,
        size.width * 0.002437778,
        size.height * 0.2584217,
        size.width * 0.004568444,
        size.height * 0.2591137);
    path.cubicTo(
        size.width * 0.008182667,
        size.height * 0.2602875,
        size.width * 0.01348089,
        size.height * 0.2620082,
        size.width * 0.01658489,
        size.height * 0.2630162);
    path.cubicTo(
        size.width * 0.01707911,
        size.height * 0.2631767,
        size.width * 0.01737467,
        size.height * 0.2634780,
        size.width * 0.01735289,
        size.height * 0.2637987);
    path.cubicTo(
        size.width * 0.01733111,
        size.height * 0.2641195,
        size.width * 0.01699511,
        size.height * 0.2644070,
        size.width * 0.01648089,
        size.height * 0.2645457);
    path.cubicTo(
        size.width * 0.01276711,
        size.height * 0.2655470,
        size.width * 0.005999556,
        size.height * 0.2673715,
        size.width * 0.002031556,
        size.height * 0.2684412);
    path.cubicTo(
        size.width * 0.001709778,
        size.height * 0.2685280,
        size.width * 0.001539111,
        size.height * 0.2687290,
        size.width * 0.001620889,
        size.height * 0.2689240);
    path.cubicTo(
        size.width * 0.001703111,
        size.height * 0.2691192,
        size.width * 0.002015556,
        size.height * 0.2692560,
        size.width * 0.002372000,
        size.height * 0.2692527);
    path.cubicTo(
        size.width * 0.01046267,
        size.height * 0.2691760,
        size.width * 0.03024756,
        size.height * 0.2689890,
        size.width * 0.03505867,
        size.height * 0.2689432);
    path.cubicTo(
        size.width * 0.03575644,
        size.height * 0.2689367,
        size.width * 0.03644311,
        size.height * 0.2690400,
        size.width * 0.03704222,
        size.height * 0.2692412);
    path.cubicTo(
        size.width * 0.04165067,
        size.height * 0.2707895,
        size.width * 0.06240044,
        size.height * 0.2777615,
        size.width * 0.07078311,
        size.height * 0.2805780);
    path.cubicTo(
        size.width * 0.07140711,
        size.height * 0.2807875,
        size.width * 0.07175422,
        size.height * 0.2811837,
        size.width * 0.07166978,
        size.height * 0.2815897);
    path.cubicTo(
        size.width * 0.07158489,
        size.height * 0.2819957,
        size.width * 0.07108489,
        size.height * 0.2823360,
        size.width * 0.07039156,
        size.height * 0.2824588);
    path.cubicTo(
        size.width * 0.06138533,
        size.height * 0.2840550,
        size.width * 0.03908933,
        size.height * 0.2880070,
        size.width * 0.02726400,
        size.height * 0.2901028);
    path.cubicTo(
        size.width * 0.02677111,
        size.height * 0.2901902,
        size.width * 0.02647022,
        size.height * 0.2904703,
        size.width * 0.02656133,
        size.height * 0.2907565);
    path.cubicTo(
        size.width * 0.02665289,
        size.height * 0.2910428,
        size.width * 0.02710844,
        size.height * 0.2912463,
        size.width * 0.02762489,
        size.height * 0.2912318);
    path.cubicTo(
        size.width * 0.04464489,
        size.height * 0.2907498,
        size.width * 0.08374578,
        size.height * 0.2896428,
        size.width * 0.09456489,
        size.height * 0.2893365);
    path.cubicTo(
        size.width * 0.09640578,
        size.height * 0.2892845,
        size.width * 0.09823378,
        size.height * 0.2895325,
        size.width * 0.09982978,
        size.height * 0.2900508);
    path.cubicTo(
        size.width * 0.1069316,
        size.height * 0.2923573,
        size.width * 0.1276058,
        size.height * 0.2990713,
        size.width * 0.1363302,
        size.height * 0.3019045);
    path.cubicTo(
        size.width * 0.1385156,
        size.height * 0.3026143,
        size.width * 0.1413107,
        size.height * 0.3021933,
        size.width * 0.1425724,
        size.height * 0.3009638);
    path.cubicTo(
        size.width * 0.1425902,
        size.height * 0.3009463,
        size.width * 0.1426084,
        size.height * 0.3009285,
        size.width * 0.1426262,
        size.height * 0.3009110);
    path.cubicTo(
        size.width * 0.1438884,
        size.height * 0.2996818,
        size.width * 0.1431396,
        size.height * 0.2981095,
        size.width * 0.1409538,
        size.height * 0.2973998);
    path.cubicTo(
        size.width * 0.1322556,
        size.height * 0.2945750,
        size.width * 0.1116782,
        size.height * 0.2878923,
        size.width * 0.1045173,
        size.height * 0.2855668);
    path.cubicTo(
        size.width * 0.1028813,
        size.height * 0.2850355,
        size.width * 0.1015618,
        size.height * 0.2842438,
        size.width * 0.1007244,
        size.height * 0.2832912);
    path.cubicTo(
        size.width * 0.09583822,
        size.height * 0.2777325,
        size.width * 0.07829778,
        size.height * 0.2577777,
        size.width * 0.07071200,
        size.height * 0.2491477);
    path.cubicTo(
        size.width * 0.07048267,
        size.height * 0.2488870,
        size.width * 0.06994533,
        size.height * 0.2487627,
        size.width * 0.06945644,
        size.height * 0.2488572);
    path.cubicTo(
        size.width * 0.06896756,
        size.height * 0.2489517,
        size.width * 0.06867956,
        size.height * 0.2492357,
        size.width * 0.06878400,
        size.height * 0.2495205);
    path.cubicTo(
        size.width * 0.07132400,
        size.height * 0.2564600,
        size.width * 0.07617200,
        size.height * 0.2697060,
        size.width * 0.07810800,
        size.height * 0.2749955);
    path.cubicTo(
        size.width * 0.07825422,
        size.height * 0.2753957,
        size.width * 0.07796978,
        size.height * 0.2758070,
        size.width * 0.07738044,
        size.height * 0.2760462);
    path.cubicTo(
        size.width * 0.07679111,
        size.height * 0.2762855,
        size.width * 0.07600756,
        size.height * 0.2763078,
        size.width * 0.07537822,
        size.height * 0.2761035);
    path.cubicTo(
        size.width * 0.06692444,
        size.height * 0.2733580,
        size.width * 0.04599378,
        size.height * 0.2665605,
        size.width * 0.04134400,
        size.height * 0.2650505);
    path.cubicTo(
        size.width * 0.04073956,
        size.height * 0.2648542,
        size.width * 0.04024489,
        size.height * 0.2645668,
        size.width * 0.03991511,
        size.height * 0.2642208);
    path.cubicTo(
        size.width * 0.03761467,
        size.height * 0.2618045,
        size.width * 0.02806267,
        size.height * 0.2517725,
        size.width * 0.02425556,
        size.height * 0.2477738);
    path.cubicTo(
        size.width * 0.02408800,
        size.height * 0.2475983,
        size.width * 0.02372711,
        size.height * 0.2475110,
        size.width * 0.02338578,
        size.height * 0.2475637);
    path.cubicTo(
        size.width * 0.02304400,
        size.height * 0.2476165,
        size.width * 0.02281289,
        size.height * 0.2477953,
        size.width * 0.02282889,
        size.height * 0.2479945);
    path.cubicTo(
        size.width * 0.02303778,
        size.height * 0.2506105,
        size.width * 0.02341333,
        size.height * 0.2553077,
        size.width * 0.02360889,
        size.height * 0.2577537);
    path.close();
    path.moveTo(size.width * 0.2022169, size.height * 0.2042895);
    path.cubicTo(
        size.width * 0.2017431,
        size.height * 0.2044595,
        size.width * 0.2011427,
        size.height * 0.2044710,
        size.width * 0.2006498,
        size.height * 0.2043192);
    path.cubicTo(
        size.width * 0.2001569,
        size.height * 0.2041672,
        size.width * 0.1998502,
        size.height * 0.2038762,
        size.width * 0.1998502,
        size.height * 0.2035602);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.2015532,
        size.width * 0.1998502,
        size.height * 0.1980655,
        size.width * 0.1998502,
        size.height * 0.1956940);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.1943102,
        size.width * 0.1978560,
        size.height * 0.1931885,
        size.width * 0.1953960,
        size.height * 0.1931885);
    path.cubicTo(
        size.width * 0.1952831,
        size.height * 0.1931885,
        size.width * 0.1951702,
        size.height * 0.1931885,
        size.width * 0.1950573,
        size.height * 0.1931885);
    path.cubicTo(
        size.width * 0.1925973,
        size.height * 0.1931885,
        size.width * 0.1906031,
        size.height * 0.1943102,
        size.width * 0.1906031,
        size.height * 0.1956940);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.1980417,
        size.width * 0.1906031,
        size.height * 0.2014830,
        size.width * 0.1906031,
        size.height * 0.2034990);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.2038200,
        size.width * 0.1902871,
        size.height * 0.2041147,
        size.width * 0.1897822,
        size.height * 0.2042645);
    path.cubicTo(
        size.width * 0.1892773,
        size.height * 0.2044140,
        size.width * 0.1886667,
        size.height * 0.2043942,
        size.width * 0.1881960,
        size.height * 0.2042130);
    path.cubicTo(
        size.width * 0.1847978,
        size.height * 0.2029045,
        size.width * 0.1786049,
        size.height * 0.2005200,
        size.width * 0.1749738,
        size.height * 0.1991220);
    path.cubicTo(
        size.width * 0.1746796,
        size.height * 0.1990087,
        size.width * 0.1742849,
        size.height * 0.1990260,
        size.width * 0.1740253,
        size.height * 0.1991635);
    path.cubicTo(
        size.width * 0.1737658,
        size.height * 0.1993010,
        size.width * 0.1737116,
        size.height * 0.1995215,
        size.width * 0.1738947,
        size.height * 0.1996935);
    path.cubicTo(
        size.width * 0.1780582,
        size.height * 0.2035967,
        size.width * 0.1882387,
        size.height * 0.2131410,
        size.width * 0.1907142,
        size.height * 0.2154617);
    path.cubicTo(
        size.width * 0.1910733,
        size.height * 0.2157985,
        size.width * 0.1912582,
        size.height * 0.2161847,
        size.width * 0.1912476,
        size.height * 0.2165770);
    path.cubicTo(
        size.width * 0.1911680,
        size.height * 0.2195962,
        size.width * 0.1908089,
        size.height * 0.2331902,
        size.width * 0.1906640,
        size.height * 0.2386820);
    path.cubicTo(
        size.width * 0.1906533,
        size.height * 0.2390907,
        size.width * 0.1902169,
        size.height * 0.2394577,
        size.width * 0.1895493,
        size.height * 0.2396197);
    path.cubicTo(
        size.width * 0.1888822,
        size.height * 0.2397815,
        size.width * 0.1881080,
        size.height * 0.2397077,
        size.width * 0.1875724,
        size.height * 0.2394317);
    path.cubicTo(
        size.width * 0.1806116,
        size.height * 0.2358425,
        size.width * 0.1633791,
        size.height * 0.2269570,
        size.width * 0.1542400,
        size.height * 0.2222445);
    path.cubicTo(
        size.width * 0.1538587,
        size.height * 0.2220480,
        size.width * 0.1532773,
        size.height * 0.2220415,
        size.width * 0.1528822,
        size.height * 0.2222290);
    path.cubicTo(
        size.width * 0.1524871,
        size.height * 0.2224167,
        size.width * 0.1524013,
        size.height * 0.2227402,
        size.width * 0.1526822,
        size.height * 0.2229845);
    path.cubicTo(
        size.width * 0.1619342,
        size.height * 0.2310350,
        size.width * 0.1831889,
        size.height * 0.2495290,
        size.width * 0.1890702,
        size.height * 0.2546462);
    path.cubicTo(
        size.width * 0.1900707,
        size.height * 0.2555170,
        size.width * 0.1906031,
        size.height * 0.2565315,
        size.width * 0.1906031,
        size.height * 0.2575682);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.2621810,
        size.width * 0.1906031,
        size.height * 0.2756092,
        size.width * 0.1906031,
        size.height * 0.2812757);
    path.cubicTo(
        size.width * 0.1906031,
        size.height * 0.2826953,
        size.width * 0.1926489,
        size.height * 0.2838462,
        size.width * 0.1951724,
        size.height * 0.2838462);
    path.cubicTo(
        size.width * 0.1952084,
        size.height * 0.2838462,
        size.width * 0.1952449,
        size.height * 0.2838462,
        size.width * 0.1952809,
        size.height * 0.2838462);
    path.cubicTo(
        size.width * 0.1978044,
        size.height * 0.2838462,
        size.width * 0.1998502,
        size.height * 0.2826952,
        size.width * 0.1998502,
        size.height * 0.2812757);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.2756260,
        size.width * 0.1998502,
        size.height * 0.2622607,
        size.width * 0.1998502,
        size.height * 0.2576095);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.2565470,
        size.width * 0.2004093,
        size.height * 0.2555082,
        size.width * 0.2014573,
        size.height * 0.2546242);
    path.cubicTo(
        size.width * 0.2075724,
        size.height * 0.2494645,
        size.width * 0.2295244,
        size.height * 0.2309427,
        size.width * 0.2390182,
        size.height * 0.2229320);
    path.cubicTo(
        size.width * 0.2393049,
        size.height * 0.2226902,
        size.width * 0.2392280,
        size.height * 0.2223660,
        size.width * 0.2388378,
        size.height * 0.2221752);
    path.cubicTo(
        size.width * 0.2384480,
        size.height * 0.2219845,
        size.width * 0.2378667,
        size.height * 0.2219862,
        size.width * 0.2374804,
        size.height * 0.2221792);
    path.cubicTo(
        size.width * 0.2280662,
        size.height * 0.2268865,
        size.width * 0.2100969,
        size.height * 0.2358710,
        size.width * 0.2029213,
        size.height * 0.2394587);
    path.cubicTo(
        size.width * 0.2023782,
        size.height * 0.2397302,
        size.width * 0.2016022,
        size.height * 0.2397972,
        size.width * 0.2009396,
        size.height * 0.2396300);
    path.cubicTo(
        size.width * 0.2002769,
        size.height * 0.2394625,
        size.width * 0.1998502,
        size.height * 0.2390917,
        size.width * 0.1998502,
        size.height * 0.2386832);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.2331922,
        size.width * 0.1998502,
        size.height * 0.2195972,
        size.width * 0.1998502,
        size.height * 0.2165775);
    path.cubicTo(
        size.width * 0.1998502,
        size.height * 0.2161847,
        size.width * 0.2000453,
        size.height * 0.2158000,
        size.width * 0.2004138,
        size.height * 0.2154662);
    path.cubicTo(
        size.width * 0.2029831,
        size.height * 0.2131375,
        size.width * 0.2136529,
        size.height * 0.2034682,
        size.width * 0.2179053,
        size.height * 0.1996142);
    path.cubicTo(
        size.width * 0.2180920,
        size.height * 0.1994450,
        size.width * 0.2180458,
        size.height * 0.1992255,
        size.width * 0.2177938,
        size.height * 0.1990857);
    path.cubicTo(
        size.width * 0.2175418,
        size.height * 0.1989457,
        size.width * 0.2171511,
        size.height * 0.1989225,
        size.width * 0.2168524,
        size.height * 0.1990297);
    path.cubicTo(
        size.width * 0.2129293,
        size.height * 0.2004397,
        size.width * 0.2058849,
        size.height * 0.2029712,
        size.width * 0.2022169,
        size.height * 0.2042895);
    path.close();
    path.moveTo(size.width * 0.2826120, size.height * 0.2699870);
    path.cubicTo(
        size.width * 0.2833071,
        size.height * 0.2696560,
        size.width * 0.2837311,
        size.height * 0.2691795,
        size.width * 0.2837858,
        size.height * 0.2686682);
    path.cubicTo(
        size.width * 0.2840702,
        size.height * 0.2660020,
        size.width * 0.2849916,
        size.height * 0.2573685,
        size.width * 0.2854151,
        size.height * 0.2533957);
    path.cubicTo(
        size.width * 0.2854564,
        size.height * 0.2530102,
        size.width * 0.2851071,
        size.height * 0.2526450,
        size.width * 0.2845124,
        size.height * 0.2524520);
    path.cubicTo(
        size.width * 0.2839182,
        size.height * 0.2522590,
        size.width * 0.2831809,
        size.height * 0.2522712,
        size.width * 0.2826080,
        size.height * 0.2524840);
    path.cubicTo(
        size.width * 0.2767036,
        size.height * 0.2546770,
        size.width * 0.2638720,
        size.height * 0.2594425,
        size.width * 0.2599093,
        size.height * 0.2609142);
    path.cubicTo(
        size.width * 0.2591493,
        size.height * 0.2611965,
        size.width * 0.2586280,
        size.height * 0.2616412,
        size.width * 0.2584658,
        size.height * 0.2621452);
    path.cubicTo(
        size.width * 0.2574240,
        size.height * 0.2653852,
        size.width * 0.2534533,
        size.height * 0.2777320,
        size.width * 0.2518249,
        size.height * 0.2827967);
    path.cubicTo(
        size.width * 0.2517182,
        size.height * 0.2831282,
        size.width * 0.2519929,
        size.height * 0.2834615,
        size.width * 0.2525116,
        size.height * 0.2836300);
    path.cubicTo(
        size.width * 0.2530298,
        size.height * 0.2837982,
        size.width * 0.2536804,
        size.height * 0.2837655,
        size.width * 0.2541373,
        size.height * 0.2835480);
    path.cubicTo(
        size.width * 0.2611209,
        size.height * 0.2802222,
        size.width * 0.2781444,
        size.height * 0.2721145,
        size.width * 0.2826120,
        size.height * 0.2699870);
    path.close();
    path.moveTo(size.width * 0.1078413, size.height * 0.2699870);
    path.cubicTo(
        size.width * 0.1071462,
        size.height * 0.2696560,
        size.width * 0.1067222,
        size.height * 0.2691795,
        size.width * 0.1066676,
        size.height * 0.2686682);
    path.cubicTo(
        size.width * 0.1063831,
        size.height * 0.2660020,
        size.width * 0.1054618,
        size.height * 0.2573685,
        size.width * 0.1050382,
        size.height * 0.2533957);
    path.cubicTo(
        size.width * 0.1049969,
        size.height * 0.2530102,
        size.width * 0.1053462,
        size.height * 0.2526450,
        size.width * 0.1059409,
        size.height * 0.2524520);
    path.cubicTo(
        size.width * 0.1065351,
        size.height * 0.2522590,
        size.width * 0.1072724,
        size.height * 0.2522712,
        size.width * 0.1078453,
        size.height * 0.2524840);
    path.cubicTo(
        size.width * 0.1137498,
        size.height * 0.2546770,
        size.width * 0.1265813,
        size.height * 0.2594425,
        size.width * 0.1305440,
        size.height * 0.2609142);
    path.cubicTo(
        size.width * 0.1313040,
        size.height * 0.2611965,
        size.width * 0.1318253,
        size.height * 0.2616412,
        size.width * 0.1319876,
        size.height * 0.2621452);
    path.cubicTo(
        size.width * 0.1330293,
        size.height * 0.2653852,
        size.width * 0.1370000,
        size.height * 0.2777320,
        size.width * 0.1386284,
        size.height * 0.2827967);
    path.cubicTo(
        size.width * 0.1387351,
        size.height * 0.2831282,
        size.width * 0.1384604,
        size.height * 0.2834615,
        size.width * 0.1379418,
        size.height * 0.2836300);
    path.cubicTo(
        size.width * 0.1374236,
        size.height * 0.2837982,
        size.width * 0.1367729,
        size.height * 0.2837655,
        size.width * 0.1363160,
        size.height * 0.2835480);
    path.cubicTo(
        size.width * 0.1293324,
        size.height * 0.2802222,
        size.width * 0.1123089,
        size.height * 0.2721145,
        size.width * 0.1078413,
        size.height * 0.2699870);
    path.close();
    path.moveTo(size.width * 0.1649547, size.height * 0.2514390);
    path.cubicTo(
        size.width * 0.1647924,
        size.height * 0.2509350,
        size.width * 0.1642707,
        size.height * 0.2504900,
        size.width * 0.1635107,
        size.height * 0.2502077);
    path.cubicTo(
        size.width * 0.1595484,
        size.height * 0.2487362,
        size.width * 0.1467169,
        size.height * 0.2439707,
        size.width * 0.1408120,
        size.height * 0.2417777);
    path.cubicTo(
        size.width * 0.1402396,
        size.height * 0.2415650,
        size.width * 0.1395022,
        size.height * 0.2415525,
        size.width * 0.1389076,
        size.height * 0.2417455);
    path.cubicTo(
        size.width * 0.1383133,
        size.height * 0.2419387,
        size.width * 0.1379640,
        size.height * 0.2423040,
        size.width * 0.1380049,
        size.height * 0.2426892);
    path.cubicTo(
        size.width * 0.1384289,
        size.height * 0.2466622,
        size.width * 0.1393502,
        size.height * 0.2552957,
        size.width * 0.1396347,
        size.height * 0.2579617);
    path.cubicTo(
        size.width * 0.1396893,
        size.height * 0.2584732,
        size.width * 0.1401133,
        size.height * 0.2589497,
        size.width * 0.1408084,
        size.height * 0.2592807);
    path.cubicTo(
        size.width * 0.1452756,
        size.height * 0.2614082,
        size.width * 0.1622996,
        size.height * 0.2695157,
        size.width * 0.1692827,
        size.height * 0.2728415);
    path.cubicTo(
        size.width * 0.1697396,
        size.height * 0.2730592,
        size.width * 0.1703902,
        size.height * 0.2730920,
        size.width * 0.1709089,
        size.height * 0.2729235);
    path.cubicTo(
        size.width * 0.1714276,
        size.height * 0.2727552,
        size.width * 0.1717022,
        size.height * 0.2724220,
        size.width * 0.1715956,
        size.height * 0.2720905);
    path.cubicTo(
        size.width * 0.1699667,
        size.height * 0.2670257,
        size.width * 0.1659964,
        size.height * 0.2546790,
        size.width * 0.1649547,
        size.height * 0.2514390);
    path.close();
    path.moveTo(size.width * 0.2254987, size.height * 0.2514390);
    path.cubicTo(
        size.width * 0.2256609,
        size.height * 0.2509350,
        size.width * 0.2261827,
        size.height * 0.2504900,
        size.width * 0.2269427,
        size.height * 0.2502077);
    path.cubicTo(
        size.width * 0.2309053,
        size.height * 0.2487362,
        size.width * 0.2437364,
        size.height * 0.2439707,
        size.width * 0.2496413,
        size.height * 0.2417777);
    path.cubicTo(
        size.width * 0.2502138,
        size.height * 0.2415650,
        size.width * 0.2509511,
        size.height * 0.2415525,
        size.width * 0.2515458,
        size.height * 0.2417455);
    path.cubicTo(
        size.width * 0.2521400,
        size.height * 0.2419387,
        size.width * 0.2524893,
        size.height * 0.2423040,
        size.width * 0.2524484,
        size.height * 0.2426892);
    path.cubicTo(
        size.width * 0.2520244,
        size.height * 0.2466622,
        size.width * 0.2511031,
        size.height * 0.2552957,
        size.width * 0.2508187,
        size.height * 0.2579617);
    path.cubicTo(
        size.width * 0.2507640,
        size.height * 0.2584732,
        size.width * 0.2503400,
        size.height * 0.2589497,
        size.width * 0.2496449,
        size.height * 0.2592807);
    path.cubicTo(
        size.width * 0.2451778,
        size.height * 0.2614082,
        size.width * 0.2281538,
        size.height * 0.2695157,
        size.width * 0.2211707,
        size.height * 0.2728415);
    path.cubicTo(
        size.width * 0.2207138,
        size.height * 0.2730592,
        size.width * 0.2200631,
        size.height * 0.2730920,
        size.width * 0.2195444,
        size.height * 0.2729235);
    path.cubicTo(
        size.width * 0.2190258,
        size.height * 0.2727552,
        size.width * 0.2187511,
        size.height * 0.2724220,
        size.width * 0.2188578,
        size.height * 0.2720905);
    path.cubicTo(
        size.width * 0.2204867,
        size.height * 0.2670257,
        size.width * 0.2244569,
        size.height * 0.2546790,
        size.width * 0.2254987,
        size.height * 0.2514390);
    path.close();
    path.moveTo(size.width * 0.5129938, size.height * 0.2552445);
    path.cubicTo(
        size.width * 0.5134040,
        size.height * 0.2549920,
        size.width * 0.5140267,
        size.height * 0.2548852,
        size.width * 0.5146173,
        size.height * 0.2549665);
    path.cubicTo(
        size.width * 0.5152084,
        size.height * 0.2550475,
        size.width * 0.5156733,
        size.height * 0.2553035,
        size.width * 0.5158311,
        size.height * 0.2556340);
    path.cubicTo(
        size.width * 0.5168307,
        size.height * 0.2577322,
        size.width * 0.5185676,
        size.height * 0.2613787,
        size.width * 0.5197484,
        size.height * 0.2638582);
    path.cubicTo(
        size.width * 0.5204378,
        size.height * 0.2653050,
        size.width * 0.5230813,
        size.height * 0.2661635,
        size.width * 0.5256533,
        size.height * 0.2657760);
    path.cubicTo(
        size.width * 0.5257716,
        size.height * 0.2657582,
        size.width * 0.5258898,
        size.height * 0.2657402,
        size.width * 0.5260076,
        size.height * 0.2657225);
    path.cubicTo(
        size.width * 0.5285800,
        size.height * 0.2653350,
        size.width * 0.5301062,
        size.height * 0.2638477,
        size.width * 0.5294169,
        size.height * 0.2624010);
    path.cubicTo(
        size.width * 0.5282476,
        size.height * 0.2599465,
        size.width * 0.5265338,
        size.height * 0.2563485,
        size.width * 0.5255298,
        size.height * 0.2542407);
    path.cubicTo(
        size.width * 0.5253698,
        size.height * 0.2539050,
        size.width * 0.5255533,
        size.height * 0.2535472,
        size.width * 0.5260067,
        size.height * 0.2533112);
    path.cubicTo(
        size.width * 0.5264600,
        size.height * 0.2530750,
        size.width * 0.5271084,
        size.height * 0.2529995,
        size.width * 0.5276911,
        size.height * 0.2531150);
    path.cubicTo(
        size.width * 0.5318951,
        size.height * 0.2539475,
        size.width * 0.5395578,
        size.height * 0.2554645,
        size.width * 0.5440502,
        size.height * 0.2563542);
    path.cubicTo(
        size.width * 0.5444142,
        size.height * 0.2564262,
        size.width * 0.5448187,
        size.height * 0.2563460,
        size.width * 0.5450213,
        size.height * 0.2561612);
    path.cubicTo(
        size.width * 0.5452244,
        size.height * 0.2559765,
        size.width * 0.5451711,
        size.height * 0.2557375,
        size.width * 0.5448938,
        size.height * 0.2555865);
    path.cubicTo(
        size.width * 0.5385969,
        size.height * 0.2521617,
        size.width * 0.5231996,
        size.height * 0.2437872,
        size.width * 0.5194556,
        size.height * 0.2417510);
    path.cubicTo(
        size.width * 0.5189124,
        size.height * 0.2414557,
        size.width * 0.5185271,
        size.height * 0.2410810,
        size.width * 0.5183422,
        size.height * 0.2406690);
    path.cubicTo(
        size.width * 0.5169222,
        size.height * 0.2375000,
        size.width * 0.5105271,
        size.height * 0.2232307,
        size.width * 0.5079436,
        size.height * 0.2174660);
    path.cubicTo(
        size.width * 0.5077511,
        size.height * 0.2170370,
        size.width * 0.5080244,
        size.height * 0.2165845,
        size.width * 0.5086418,
        size.height * 0.2163100);
    path.cubicTo(
        size.width * 0.5092591,
        size.height * 0.2160357,
        size.width * 0.5101049,
        size.height * 0.2159907,
        size.width * 0.5108027,
        size.height * 0.2161950);
    path.cubicTo(
        size.width * 0.5198676,
        size.height * 0.2188507,
        size.width * 0.5423098,
        size.height * 0.2254250,
        size.width * 0.5542120,
        size.height * 0.2289117);
    path.cubicTo(
        size.width * 0.5547084,
        size.height * 0.2290572,
        size.width * 0.5553196,
        size.height * 0.2289725,
        size.width * 0.5556391,
        size.height * 0.2287140);
    path.cubicTo(
        size.width * 0.5559587,
        size.height * 0.2284555,
        size.width * 0.5558871,
        size.height * 0.2281037,
        size.width * 0.5554720,
        size.height * 0.2278927);
    path.cubicTo(
        size.width * 0.5417893,
        size.height * 0.2209340,
        size.width * 0.5103569,
        size.height * 0.2049475,
        size.width * 0.5016591,
        size.height * 0.2005237);
    path.cubicTo(
        size.width * 0.5001796,
        size.height * 0.1997712,
        size.width * 0.4991178,
        size.height * 0.1987945,
        size.width * 0.4986013,
        size.height * 0.1977105);
    path.cubicTo(
        size.width * 0.4963040,
        size.height * 0.1928880,
        size.width * 0.4896164,
        size.height * 0.1788485,
        size.width * 0.4867942,
        size.height * 0.1729240);
    path.cubicTo(
        size.width * 0.4860871,
        size.height * 0.1714397,
        size.width * 0.4833751,
        size.height * 0.1705590,
        size.width * 0.4807364,
        size.height * 0.1709567);
    path.cubicTo(
        size.width * 0.4806987,
        size.height * 0.1709622,
        size.width * 0.4806609,
        size.height * 0.1709680,
        size.width * 0.4806236,
        size.height * 0.1709737);
    path.cubicTo(
        size.width * 0.4779849,
        size.height * 0.1713715,
        size.width * 0.4764187,
        size.height * 0.1728970,
        size.width * 0.4771258,
        size.height * 0.1743812);
    path.cubicTo(
        size.width * 0.4799396,
        size.height * 0.1802880,
        size.width * 0.4865960,
        size.height * 0.1942617,
        size.width * 0.4889124,
        size.height * 0.1991245);
    path.cubicTo(
        size.width * 0.4894418,
        size.height * 0.2002355,
        size.width * 0.4893742,
        size.height * 0.2014095,
        size.width * 0.4887191,
        size.height * 0.2024990);
    path.cubicTo(
        size.width * 0.4848956,
        size.height * 0.2088570,
        size.width * 0.4711689,
        size.height * 0.2316812,
        size.width * 0.4652324,
        size.height * 0.2415525);
    path.cubicTo(
        size.width * 0.4650529,
        size.height * 0.2418507,
        size.width * 0.4652951,
        size.height * 0.2421772,
        size.width * 0.4657982,
        size.height * 0.2423155);
    path.cubicTo(
        size.width * 0.4663009,
        size.height * 0.2424535,
        size.width * 0.4669076,
        size.height * 0.2423600,
        size.width * 0.4672151,
        size.height * 0.2420972);
    path.cubicTo(
        size.width * 0.4747138,
        size.height * 0.2356925,
        size.width * 0.4890262,
        size.height * 0.2234670,
        size.width * 0.4947413,
        size.height * 0.2185852);
    path.cubicTo(
        size.width * 0.4951742,
        size.height * 0.2182157,
        size.width * 0.4959520,
        size.height * 0.2180235,
        size.width * 0.4967280,
        size.height * 0.2180942);
    path.cubicTo(
        size.width * 0.4975044,
        size.height * 0.2181647,
        size.width * 0.4981351,
        size.height * 0.2184850,
        size.width * 0.4983387,
        size.height * 0.2189125);
    path.cubicTo(
        size.width * 0.5010733,
        size.height * 0.2246532,
        size.width * 0.5078440,
        size.height * 0.2388670,
        size.width * 0.5093480,
        size.height * 0.2420242);
    path.cubicTo(
        size.width * 0.5095436,
        size.height * 0.2424347,
        size.width * 0.5095311,
        size.height * 0.2428680,
        size.width * 0.5093124,
        size.height * 0.2432747);
    path.cubicTo(
        size.width * 0.5077858,
        size.height * 0.2461145,
        size.width * 0.5014462,
        size.height * 0.2579050,
        size.width * 0.4989196,
        size.height * 0.2626045);
    path.cubicTo(
        size.width * 0.4988084,
        size.height * 0.2628110,
        size.width * 0.4989662,
        size.height * 0.2630332,
        size.width * 0.4992996,
        size.height * 0.2631397);
    path.cubicTo(
        size.width * 0.4996324,
        size.height * 0.2632462,
        size.width * 0.5000529,
        size.height * 0.2632090,
        size.width * 0.5003111,
        size.height * 0.2630497);
    path.cubicTo(
        size.width * 0.5037111,
        size.height * 0.2609575,
        size.width * 0.5098151,
        size.height * 0.2572007,
        size.width * 0.5129938,
        size.height * 0.2552445);
    path.close();
    path.moveTo(size.width * 0.3035458, size.height * 0.2192700);
    path.cubicTo(
        size.width * 0.3041396,
        size.height * 0.2193437,
        size.width * 0.3046151,
        size.height * 0.2195937,
        size.width * 0.3047853,
        size.height * 0.2199220);
    path.cubicTo(
        size.width * 0.3049560,
        size.height * 0.2202505,
        size.width * 0.3047947,
        size.height * 0.2206050,
        size.width * 0.3043649,
        size.height * 0.2208470);
    path.cubicTo(
        size.width * 0.3016338,
        size.height * 0.2223830,
        size.width * 0.2968884,
        size.height * 0.2250525,
        size.width * 0.2936613,
        size.height * 0.2268675);
    path.cubicTo(
        size.width * 0.2917787,
        size.height * 0.2279267,
        size.width * 0.2917787,
        size.height * 0.2296437,
        size.width * 0.2936613,
        size.height * 0.2307030);
    path.cubicTo(
        size.width * 0.2937476,
        size.height * 0.2307515,
        size.width * 0.2938342,
        size.height * 0.2308002,
        size.width * 0.2939204,
        size.height * 0.2308487);
    path.cubicTo(
        size.width * 0.2958036,
        size.height * 0.2319080,
        size.width * 0.2988560,
        size.height * 0.2319080,
        size.width * 0.3007391,
        size.height * 0.2308487);
    path.cubicTo(
        size.width * 0.3039333,
        size.height * 0.2290520,
        size.width * 0.3086160,
        size.height * 0.2264182,
        size.width * 0.3113591,
        size.height * 0.2248750);
    path.cubicTo(
        size.width * 0.3117960,
        size.height * 0.2246295,
        size.width * 0.3124387,
        size.height * 0.2245400,
        size.width * 0.3130284,
        size.height * 0.2246425);
    path.cubicTo(
        size.width * 0.3136187,
        size.height * 0.2247452,
        size.width * 0.3140591,
        size.height * 0.2250235,
        size.width * 0.3141729,
        size.height * 0.2253650);
    path.cubicTo(
        size.width * 0.3149933,
        size.height * 0.2278292,
        size.width * 0.3164889,
        size.height * 0.2323205,
        size.width * 0.3173653,
        size.height * 0.2349537);
    path.cubicTo(
        size.width * 0.3174364,
        size.height * 0.2351672,
        size.width * 0.3177622,
        size.height * 0.2353240,
        size.width * 0.3181480,
        size.height * 0.2353305);
    path.cubicTo(
        size.width * 0.3185338,
        size.height * 0.2353370,
        size.width * 0.3188756,
        size.height * 0.2351915,
        size.width * 0.3189689,
        size.height * 0.2349807);
    path.cubicTo(
        size.width * 0.3210933,
        size.height * 0.2302012,
        size.width * 0.3262880,
        size.height * 0.2185132,
        size.width * 0.3275511,
        size.height * 0.2156712);
    path.cubicTo(
        size.width * 0.3277342,
        size.height * 0.2152590,
        size.width * 0.3281187,
        size.height * 0.2148837,
        size.width * 0.3286604,
        size.height * 0.2145880);
    path.cubicTo(
        size.width * 0.3328293,
        size.height * 0.2123115,
        size.width * 0.3516009,
        size.height * 0.2020617,
        size.width * 0.3591844,
        size.height * 0.1979207);
    path.cubicTo(
        size.width * 0.3597489,
        size.height * 0.1976125,
        size.width * 0.3605822,
        size.height * 0.1975195,
        size.width * 0.3613133,
        size.height * 0.1976830);
    path.cubicTo(
        size.width * 0.3620440,
        size.height * 0.1978465,
        size.width * 0.3625364,
        size.height * 0.1982360,
        size.width * 0.3625707,
        size.height * 0.1986780);
    path.cubicTo(
        size.width * 0.3630147,
        size.height * 0.2044217,
        size.width * 0.3641138,
        size.height * 0.2186412,
        size.width * 0.3646964,
        size.height * 0.2261827);
    path.cubicTo(
        size.width * 0.3647209,
        size.height * 0.2264972,
        size.width * 0.3651569,
        size.height * 0.2267527,
        size.width * 0.3657147,
        size.height * 0.2267792);
    path.cubicTo(
        size.width * 0.3662724,
        size.height * 0.2268055,
        size.width * 0.3667782,
        size.height * 0.2265947,
        size.width * 0.3668956,
        size.height * 0.2262870);
    path.cubicTo(
        size.width * 0.3707680,
        size.height * 0.2161425,
        size.width * 0.3796644,
        size.height * 0.1928370,
        size.width * 0.3821262,
        size.height * 0.1863882);
    path.cubicTo(
        size.width * 0.3825449,
        size.height * 0.1852912,
        size.width * 0.3835182,
        size.height * 0.1842855,
        size.width * 0.3849289,
        size.height * 0.1834922);
    path.cubicTo(
        size.width * 0.3912049,
        size.height * 0.1799617,
        size.width * 0.4094764,
        size.height * 0.1696840,
        size.width * 0.4171867,
        size.height * 0.1653470);
    path.cubicTo(
        size.width * 0.4191182,
        size.height * 0.1642605,
        size.width * 0.4191182,
        size.height * 0.1624990,
        size.width * 0.4171867,
        size.height * 0.1614125);
    path.cubicTo(
        size.width * 0.4171591,
        size.height * 0.1613970,
        size.width * 0.4171316,
        size.height * 0.1613815,
        size.width * 0.4171040,
        size.height * 0.1613657);
    path.cubicTo(
        size.width * 0.4151720,
        size.height * 0.1602792,
        size.width * 0.4120404,
        size.height * 0.1602792,
        size.width * 0.4101089,
        size.height * 0.1613657);
    path.cubicTo(
        size.width * 0.4024213,
        size.height * 0.1656900,
        size.width * 0.3842360,
        size.height * 0.1759195,
        size.width * 0.3779071,
        size.height * 0.1794792);
    path.cubicTo(
        size.width * 0.3764613,
        size.height * 0.1802925,
        size.width * 0.3746204,
        size.height * 0.1808467,
        size.width * 0.3726156,
        size.height * 0.1810722);
    path.cubicTo(
        size.width * 0.3609147,
        size.height * 0.1823887,
        size.width * 0.3189111,
        size.height * 0.1871140,
        size.width * 0.3007449,
        size.height * 0.1891577);
    path.cubicTo(
        size.width * 0.3001964,
        size.height * 0.1892195,
        size.width * 0.2998147,
        size.height * 0.1895007,
        size.width * 0.2998533,
        size.height * 0.1898147);
    path.cubicTo(
        size.width * 0.2998920,
        size.height * 0.1901287,
        size.width * 0.3003396,
        size.height * 0.1903775,
        size.width * 0.3008978,
        size.height * 0.1903960);
    path.cubicTo(
        size.width * 0.3145080,
        size.height * 0.1908462,
        size.width * 0.3404862,
        size.height * 0.1917060,
        size.width * 0.3508600,
        size.height * 0.1920492);
    path.cubicTo(
        size.width * 0.3516449,
        size.height * 0.1920752,
        size.width * 0.3523298,
        size.height * 0.1923580,
        size.width * 0.3526093,
        size.height * 0.1927715);
    path.cubicTo(
        size.width * 0.3528889,
        size.height * 0.1931850,
        size.width * 0.3527111,
        size.height * 0.1936522,
        size.width * 0.3521547,
        size.height * 0.1939650);
    path.cubicTo(
        size.width * 0.3446836,
        size.height * 0.1981675,
        size.width * 0.3261858,
        size.height * 0.2085727,
        size.width * 0.3220764,
        size.height * 0.2108840);
    path.cubicTo(
        size.width * 0.3215422,
        size.height * 0.2111845,
        size.width * 0.3208693,
        size.height * 0.2113950,
        size.width * 0.3201338,
        size.height * 0.2114920);
    path.cubicTo(
        size.width * 0.3149982,
        size.height * 0.2121680,
        size.width * 0.2936756,
        size.height * 0.2149752,
        size.width * 0.2851769,
        size.height * 0.2160940);
    path.cubicTo(
        size.width * 0.2848036,
        size.height * 0.2161432,
        size.width * 0.2845404,
        size.height * 0.2163310,
        size.width * 0.2845431,
        size.height * 0.2165467);
    path.cubicTo(
        size.width * 0.2845453,
        size.height * 0.2167622,
        size.width * 0.2848129,
        size.height * 0.2169482,
        size.width * 0.2851871,
        size.height * 0.2169947);
    path.cubicTo(
        size.width * 0.2901084,
        size.height * 0.2176047,
        size.width * 0.2989444,
        size.height * 0.2186997,
        size.width * 0.3035458,
        size.height * 0.2192700);
    path.close();
    path.moveTo(size.width * 0.1271129, size.height * 0.2285275);
    path.cubicTo(
        size.width * 0.1274364,
        size.height * 0.2288425,
        size.width * 0.1281533,
        size.height * 0.2289505,
        size.width * 0.1287133,
        size.height * 0.2287687);
    path.lineTo(size.width * 0.1292204, size.height * 0.2286040);
    path.cubicTo(
        size.width * 0.1297804,
        size.height * 0.2284222,
        size.width * 0.1299729,
        size.height * 0.2280187,
        size.width * 0.1296493,
        size.height * 0.2277037);
    path.lineTo(size.width * 0.1270404, size.height * 0.2251617);
    path.cubicTo(
        size.width * 0.1267169,
        size.height * 0.2248467,
        size.width * 0.1260000,
        size.height * 0.2247387,
        size.width * 0.1254400,
        size.height * 0.2249205);
    path.lineTo(size.width * 0.1249329, size.height * 0.2250852);
    path.cubicTo(
        size.width * 0.1243729,
        size.height * 0.2252672,
        size.width * 0.1241804,
        size.height * 0.2256705,
        size.width * 0.1245040,
        size.height * 0.2259855);
    path.lineTo(size.width * 0.1271129, size.height * 0.2285275);
    path.close();
    path.moveTo(size.width * 0.07333911, size.height * 0.1760092);
    path.lineTo(size.width * 0.06598044, size.height * 0.1688397);
    path.cubicTo(
        size.width * 0.06583422,
        size.height * 0.1686972,
        size.width * 0.05438089,
        size.height * 0.1651125,
        size.width * 0.05049778,
        size.height * 0.1638997);
    path.cubicTo(
        size.width * 0.05035289,
        size.height * 0.1638522,
        size.width * 0.05028311,
        size.height * 0.1637560,
        size.width * 0.05032756,
        size.height * 0.1636650);
    path.cubicTo(
        size.width * 0.05037200,
        size.height * 0.1635742,
        size.width * 0.05052000,
        size.height * 0.1635115,
        size.width * 0.05068756,
        size.height * 0.1635125);
    path.cubicTo(
        size.width * 0.05375156,
        size.height * 0.1635292,
        size.width * 0.06056400,
        size.height * 0.1635625,
        size.width * 0.06051200,
        size.height * 0.1635117);
    path.lineTo(size.width * 0.05035644, size.height * 0.1536172);
    path.cubicTo(
        size.width * 0.05034622,
        size.height * 0.1536075,
        size.width * 0.04082311,
        size.height * 0.1509677,
        size.width * 0.03783200,
        size.height * 0.1501385);
    path.cubicTo(
        size.width * 0.03775378,
        size.height * 0.1501157,
        size.width * 0.03771511,
        size.height * 0.1500650,
        size.width * 0.03773956,
        size.height * 0.1500172);
    path.cubicTo(
        size.width * 0.03776444,
        size.height * 0.1499695,
        size.width * 0.03784578,
        size.height * 0.1499385,
        size.width * 0.03793333,
        size.height * 0.1499427);
    path.cubicTo(
        size.width * 0.04033644,
        size.height * 0.1500640,
        size.width * 0.04644311,
        size.height * 0.1503725,
        size.width * 0.04863644,
        size.height * 0.1504835);
    path.cubicTo(
        size.width * 0.04911556,
        size.height * 0.1505077,
        size.width * 0.04957067,
        size.height * 0.1503597,
        size.width * 0.04977289,
        size.height * 0.1501140);
    path.cubicTo(
        size.width * 0.05069822,
        size.height * 0.1489905,
        size.width * 0.05327333,
        size.height * 0.1458627,
        size.width * 0.05428711,
        size.height * 0.1446317);
    path.cubicTo(
        size.width * 0.05432400,
        size.height * 0.1445865,
        size.width * 0.05441289,
        size.height * 0.1445625,
        size.width * 0.05449911,
        size.height * 0.1445742);
    path.cubicTo(
        size.width * 0.05458489,
        size.height * 0.1445860,
        size.width * 0.05464400,
        size.height * 0.1446305,
        size.width * 0.05464000,
        size.height * 0.1446802);
    path.cubicTo(
        size.width * 0.05442133,
        size.height * 0.1465515,
        size.width * 0.05372800,
        size.height * 0.1525090,
        size.width * 0.05373822,
        size.height * 0.1525190);
    path.lineTo(size.width * 0.06389378, size.height * 0.1624132);
    path.cubicTo(
        size.width * 0.06394578,
        size.height * 0.1624640,
        size.width * 0.06729778,
        size.height * 0.1591302,
        size.width * 0.06880133,
        size.height * 0.1576295);
    path.cubicTo(
        size.width * 0.06888400,
        size.height * 0.1575470,
        size.width * 0.06905467,
        size.height * 0.1575062,
        size.width * 0.06921733,
        size.height * 0.1575300);
    path.cubicTo(
        size.width * 0.06938000,
        size.height * 0.1575537,
        size.width * 0.06949378,
        size.height * 0.1576362,
        size.width * 0.06949467,
        size.height * 0.1577307);
    path.cubicTo(
        size.width * 0.06942000,
        size.height * 0.1602285,
        size.width * 0.06921600,
        size.height * 0.1675987,
        size.width * 0.06936267,
        size.height * 0.1677415);
    path.lineTo(size.width * 0.07656711, size.height * 0.1747605);
    path.lineTo(size.width * 0.08599022, size.height * 0.1665507);
    path.lineTo(size.width * 0.09595067, size.height * 0.1752287);
    path.lineTo(size.width * 0.1034618, size.height * 0.1679107);
    path.cubicTo(
        size.width * 0.1036084,
        size.height * 0.1677682,
        size.width * 0.1034009,
        size.height * 0.1603965,
        size.width * 0.1033262,
        size.height * 0.1578985);
    path.cubicTo(
        size.width * 0.1033267,
        size.height * 0.1578042,
        size.width * 0.1034404,
        size.height * 0.1577220,
        size.width * 0.1036027,
        size.height * 0.1576982);
    path.cubicTo(
        size.width * 0.1037644,
        size.height * 0.1576745,
        size.width * 0.1039347,
        size.height * 0.1577152,
        size.width * 0.1040173,
        size.height * 0.1577972);
    path.cubicTo(
        size.width * 0.1055231,
        size.height * 0.1592982,
        size.width * 0.1088787,
        size.height * 0.1626332,
        size.width * 0.1089307,
        size.height * 0.1625825);
    path.lineTo(size.width * 0.1190862, size.height * 0.1526882);
    path.cubicTo(
        size.width * 0.1190964,
        size.height * 0.1526785,
        size.width * 0.1183991,
        size.height * 0.1467195,
        size.width * 0.1181800,
        size.height * 0.1448477);
    path.cubicTo(
        size.width * 0.1181760,
        size.height * 0.1447982,
        size.width * 0.1182351,
        size.height * 0.1447540,
        size.width * 0.1183209,
        size.height * 0.1447422);
    path.cubicTo(
        size.width * 0.1184067,
        size.height * 0.1447302,
        size.width * 0.1184951,
        size.height * 0.1447542,
        size.width * 0.1185320,
        size.height * 0.1447995);
    path.cubicTo(
        size.width * 0.1195471,
        size.height * 0.1460305,
        size.width * 0.1221253,
        size.height * 0.1491597,
        size.width * 0.1230511,
        size.height * 0.1502835);
    path.cubicTo(
        size.width * 0.1232538,
        size.height * 0.1505290,
        size.width * 0.1237089,
        size.height * 0.1506767,
        size.width * 0.1241880,
        size.height * 0.1506525);
    path.cubicTo(
        size.width * 0.1263804,
        size.height * 0.1505415,
        size.width * 0.1324840,
        size.height * 0.1502320,
        size.width * 0.1348858,
        size.height * 0.1501102);
    path.cubicTo(
        size.width * 0.1349742,
        size.height * 0.1501057,
        size.width * 0.1350556,
        size.height * 0.1501370,
        size.width * 0.1350800,
        size.height * 0.1501850);
    path.cubicTo(
        size.width * 0.1351049,
        size.height * 0.1502327,
        size.width * 0.1350662,
        size.height * 0.1502837,
        size.width * 0.1349876,
        size.height * 0.1503065);
    path.cubicTo(
        size.width * 0.1319969,
        size.height * 0.1511357,
        size.width * 0.1224787,
        size.height * 0.1537765,
        size.width * 0.1224680,
        size.height * 0.1537865);
    path.lineTo(size.width * 0.1123129, size.height * 0.1636807);
    path.cubicTo(
        size.width * 0.1122604,
        size.height * 0.1637315,
        size.width * 0.1190693,
        size.height * 0.1636975,
        size.width * 0.1221320,
        size.height * 0.1636797);
    path.cubicTo(
        size.width * 0.1223000,
        size.height * 0.1636787,
        size.width * 0.1224480,
        size.height * 0.1637415,
        size.width * 0.1224929,
        size.height * 0.1638327);
    path.cubicTo(
        size.width * 0.1225373,
        size.height * 0.1639237,
        size.width * 0.1224676,
        size.height * 0.1640205,
        size.width * 0.1223222,
        size.height * 0.1640680);
    path.cubicTo(
        size.width * 0.1184396,
        size.height * 0.1652807,
        size.width * 0.1069902,
        size.height * 0.1688662,
        size.width * 0.1068440,
        size.height * 0.1690090);
    path.lineTo(size.width * 0.09963022, size.height * 0.1760370);
    path.lineTo(size.width * 0.1166680, size.height * 0.1765135);
    path.lineTo(size.width * 0.1082876, size.height * 0.1857047);
    path.lineTo(size.width * 0.1236329, size.height * 0.1857047);
    path.cubicTo(
        size.width * 0.1239258,
        size.height * 0.1857047,
        size.width * 0.1351711,
        size.height * 0.1819180,
        size.width * 0.1389800,
        size.height * 0.1806325);
    path.cubicTo(
        size.width * 0.1391253,
        size.height * 0.1805857,
        size.width * 0.1393089,
        size.height * 0.1805997,
        size.width * 0.1394262,
        size.height * 0.1806670);
    path.cubicTo(
        size.width * 0.1395440,
        size.height * 0.1807340,
        size.width * 0.1395667,
        size.height * 0.1808372,
        size.width * 0.1394813,
        size.height * 0.1809185);
    path.cubicTo(
        size.width * 0.1379236,
        size.height * 0.1824027,
        size.width * 0.1344662,
        size.height * 0.1857047,
        size.width * 0.1345707,
        size.height * 0.1857047);
    path.lineTo(size.width * 0.1548818, size.height * 0.1857047);
    path.cubicTo(
        size.width * 0.1549018,
        size.height * 0.1857047,
        size.width * 0.1637276,
        size.height * 0.1823860,
        size.width * 0.1664996,
        size.height * 0.1813432);
    path.cubicTo(
        size.width * 0.1665738,
        size.height * 0.1813165,
        size.width * 0.1666716,
        size.height * 0.1813230,
        size.width * 0.1667324,
        size.height * 0.1813587);
    path.cubicTo(
        size.width * 0.1667938,
        size.height * 0.1813947,
        size.width * 0.1668013,
        size.height * 0.1814497,
        size.width * 0.1667502,
        size.height * 0.1814905);
    path.cubicTo(
        size.width * 0.1653622,
        size.height * 0.1826005,
        size.width * 0.1618338,
        size.height * 0.1854210,
        size.width * 0.1605667,
        size.height * 0.1864340);
    path.cubicTo(
        size.width * 0.1602898,
        size.height * 0.1866552,
        size.width * 0.1602898,
        size.height * 0.1869507,
        size.width * 0.1605671,
        size.height * 0.1871722);
    path.cubicTo(
        size.width * 0.1618342,
        size.height * 0.1881847,
        size.width * 0.1653622,
        size.height * 0.1910032,
        size.width * 0.1667507,
        size.height * 0.1921125);
    path.cubicTo(
        size.width * 0.1668018,
        size.height * 0.1921532,
        size.width * 0.1667942,
        size.height * 0.1922085,
        size.width * 0.1667329,
        size.height * 0.1922445);
    path.cubicTo(
        size.width * 0.1666720,
        size.height * 0.1922805,
        size.width * 0.1665738,
        size.height * 0.1922870,
        size.width * 0.1664996,
        size.height * 0.1922602);
    path.cubicTo(
        size.width * 0.1637276,
        size.height * 0.1912180,
        size.width * 0.1549022,
        size.height * 0.1879015,
        size.width * 0.1548818,
        size.height * 0.1879015);
    path.lineTo(size.width * 0.1345707, size.height * 0.1879015);
    path.cubicTo(
        size.width * 0.1344667,
        size.height * 0.1879015,
        size.width * 0.1379231,
        size.height * 0.1912010,
        size.width * 0.1394822,
        size.height * 0.1926842);
    path.cubicTo(
        size.width * 0.1395676,
        size.height * 0.1927655,
        size.width * 0.1395449,
        size.height * 0.1928690,
        size.width * 0.1394271,
        size.height * 0.1929365);
    path.cubicTo(
        size.width * 0.1393093,
        size.height * 0.1930037,
        size.width * 0.1391253,
        size.height * 0.1930180,
        size.width * 0.1389796,
        size.height * 0.1929712);
    path.cubicTo(
        size.width * 0.1351711,
        size.height * 0.1916860,
        size.width * 0.1239258,
        size.height * 0.1879015,
        size.width * 0.1236329,
        size.height * 0.1879015);
    path.lineTo(size.width * 0.1088831, size.height * 0.1879015);
    path.lineTo(size.width * 0.1166680, size.height * 0.1964395);
    path.lineTo(size.width * 0.09864089, size.height * 0.1969440);
    path.lineTo(size.width * 0.1063227, size.height * 0.2044280);
    path.cubicTo(
        size.width * 0.1064689,
        size.height * 0.2045705,
        size.width * 0.1179222,
        size.height * 0.2081552,
        size.width * 0.1218058,
        size.height * 0.2093680);
    path.cubicTo(
        size.width * 0.1219502,
        size.height * 0.2094155,
        size.width * 0.1220204,
        size.height * 0.2095117,
        size.width * 0.1219756,
        size.height * 0.2096027);
    path.cubicTo(
        size.width * 0.1219311,
        size.height * 0.2096935,
        size.width * 0.1217836,
        size.height * 0.2097562,
        size.width * 0.1216160,
        size.height * 0.2097552);
    path.cubicTo(
        size.width * 0.1185520,
        size.height * 0.2097385,
        size.width * 0.1117396,
        size.height * 0.2097052,
        size.width * 0.1117916,
        size.height * 0.2097562);
    path.lineTo(size.width * 0.1219471, size.height * 0.2196505);
    path.cubicTo(
        size.width * 0.1219573,
        size.height * 0.2196602,
        size.width * 0.1314800,
        size.height * 0.2223002,
        size.width * 0.1344711,
        size.height * 0.2231292);
    path.cubicTo(
        size.width * 0.1345498,
        size.height * 0.2231520,
        size.width * 0.1345884,
        size.height * 0.2232027,
        size.width * 0.1345636,
        size.height * 0.2232505);
    path.cubicTo(
        size.width * 0.1345391,
        size.height * 0.2232982,
        size.width * 0.1344578,
        size.height * 0.2233295,
        size.width * 0.1343698,
        size.height * 0.2233250);
    path.cubicTo(
        size.width * 0.1319671,
        size.height * 0.2232037,
        size.width * 0.1258600,
        size.height * 0.2228952,
        size.width * 0.1236671,
        size.height * 0.2227842);
    path.cubicTo(
        size.width * 0.1231876,
        size.height * 0.2227602,
        size.width * 0.1227329,
        size.height * 0.2229080,
        size.width * 0.1225302,
        size.height * 0.2231537);
    path.cubicTo(
        size.width * 0.1216053,
        size.height * 0.2242772,
        size.width * 0.1190298,
        size.height * 0.2274050,
        size.width * 0.1180164,
        size.height * 0.2286360);
    path.cubicTo(
        size.width * 0.1179791,
        size.height * 0.2286812,
        size.width * 0.1178902,
        size.height * 0.2287052,
        size.width * 0.1178044,
        size.height * 0.2286935);
    path.cubicTo(
        size.width * 0.1177182,
        size.height * 0.2286817,
        size.width * 0.1176591,
        size.height * 0.2286372,
        size.width * 0.1176631,
        size.height * 0.2285875);
    path.cubicTo(
        size.width * 0.1178818,
        size.height * 0.2267162,
        size.width * 0.1185756,
        size.height * 0.2207587,
        size.width * 0.1185653,
        size.height * 0.2207487);
    path.lineTo(size.width * 0.1084098, size.height * 0.2108545);
    path.cubicTo(
        size.width * 0.1083578,
        size.height * 0.2108037,
        size.width * 0.1050058,
        size.height * 0.2141375,
        size.width * 0.1035018,
        size.height * 0.2156382);
    path.cubicTo(
        size.width * 0.1034196,
        size.height * 0.2157207,
        size.width * 0.1032484,
        size.height * 0.2157615,
        size.width * 0.1030858,
        size.height * 0.2157377);
    path.cubicTo(
        size.width * 0.1029231,
        size.height * 0.2157140,
        size.width * 0.1028093,
        size.height * 0.2156315,
        size.width * 0.1028089,
        size.height * 0.2155370);
    path.cubicTo(
        size.width * 0.1028831,
        size.height * 0.2130392,
        size.width * 0.1030871,
        size.height * 0.2056690,
        size.width * 0.1029409,
        size.height * 0.2055262);
    path.lineTo(size.width * 0.09541333, size.height * 0.1981925);
    path.lineTo(size.width * 0.08599022, size.height * 0.2064025);
    path.lineTo(size.width * 0.07637067, size.height * 0.1980215);
    path.lineTo(size.width * 0.06884133, size.height * 0.2053570);
    path.cubicTo(
        size.width * 0.06869511,
        size.height * 0.2054995,
        size.width * 0.06890267,
        size.height * 0.2128712,
        size.width * 0.06897733,
        size.height * 0.2153692);
    path.cubicTo(
        size.width * 0.06897644,
        size.height * 0.2154637,
        size.width * 0.06886311,
        size.height * 0.2155457,
        size.width * 0.06870089,
        size.height * 0.2155695);
    path.cubicTo(
        size.width * 0.06853867,
        size.height * 0.2155932,
        size.width * 0.06836844,
        size.height * 0.2155527,
        size.width * 0.06828622,
        size.height * 0.2154705);
    path.cubicTo(
        size.width * 0.06678000,
        size.height * 0.2139695,
        size.width * 0.06342489,
        size.height * 0.2106345,
        size.width * 0.06337244,
        size.height * 0.2106852);
    path.lineTo(size.width * 0.05321689, size.height * 0.2205795);
    path.cubicTo(
        size.width * 0.05320711,
        size.height * 0.2205892,
        size.width * 0.05390400,
        size.height * 0.2265482,
        size.width * 0.05412311,
        size.height * 0.2284200);
    path.cubicTo(
        size.width * 0.05412756,
        size.height * 0.2284695,
        size.width * 0.05406844,
        size.height * 0.2285137,
        size.width * 0.05398267,
        size.height * 0.2285255);
    path.cubicTo(
        size.width * 0.05389689,
        size.height * 0.2285375,
        size.width * 0.05380844,
        size.height * 0.2285135,
        size.width * 0.05377111,
        size.height * 0.2284685);
    path.cubicTo(
        size.width * 0.05275600,
        size.height * 0.2272372,
        size.width * 0.05017778,
        size.height * 0.2241080,
        size.width * 0.04925200,
        size.height * 0.2229845);
    path.cubicTo(
        size.width * 0.04904978,
        size.height * 0.2227387,
        size.width * 0.04859467,
        size.height * 0.2225910,
        size.width * 0.04811511,
        size.height * 0.2226152);
    path.cubicTo(
        size.width * 0.04592267,
        size.height * 0.2227265,
        size.width * 0.03981956,
        size.height * 0.2230357,
        size.width * 0.03741733,
        size.height * 0.2231575);
    path.cubicTo(
        size.width * 0.03732933,
        size.height * 0.2231620,
        size.width * 0.03724800,
        size.height * 0.2231307,
        size.width * 0.03722311,
        size.height * 0.2230830);
    path.cubicTo(
        size.width * 0.03719822,
        size.height * 0.2230352,
        size.width * 0.03723689,
        size.height * 0.2229842,
        size.width * 0.03731556,
        size.height * 0.2229612);
    path.cubicTo(
        size.width * 0.04030622,
        size.height * 0.2221320,
        size.width * 0.04982489,
        size.height * 0.2194912,
        size.width * 0.04983511,
        size.height * 0.2194812);
    path.lineTo(size.width * 0.05999067, size.height * 0.2095870);
    path.cubicTo(
        size.width * 0.06004267,
        size.height * 0.2095362,
        size.width * 0.05323422,
        size.height * 0.2095702,
        size.width * 0.05017156,
        size.height * 0.2095880);
    path.cubicTo(
        size.width * 0.05000356,
        size.height * 0.2095890,
        size.width * 0.04985511,
        size.height * 0.2095262,
        size.width * 0.04981067,
        size.height * 0.2094350);
    path.cubicTo(
        size.width * 0.04976578,
        size.height * 0.2093440,
        size.width * 0.04983600,
        size.height * 0.2092472,
        size.width * 0.04998089,
        size.height * 0.2091997);
    path.cubicTo(
        size.width * 0.05386400,
        size.height * 0.2079872,
        size.width * 0.06531289,
        size.height * 0.2044015,
        size.width * 0.06545956,
        size.height * 0.2042587);
    path.lineTo(size.width * 0.07297778, size.height * 0.1969337);
    path.lineTo(size.width * 0.05531244, size.height * 0.1964395);
    path.lineTo(size.width * 0.06340578, size.height * 0.1875630);
    path.lineTo(size.width * 0.04867067, size.height * 0.1875630);
    path.cubicTo(
        size.width * 0.04837778,
        size.height * 0.1875630,
        size.width * 0.03713200,
        size.height * 0.1913500,
        size.width * 0.03332311,
        size.height * 0.1926352);
    path.cubicTo(
        size.width * 0.03317778,
        size.height * 0.1926820,
        size.width * 0.03299467,
        size.height * 0.1926680,
        size.width * 0.03287689,
        size.height * 0.1926007);
    path.cubicTo(
        size.width * 0.03275956,
        size.height * 0.1925337,
        size.width * 0.03273689,
        size.height * 0.1924302,
        size.width * 0.03282222,
        size.height * 0.1923492);
    path.cubicTo(
        size.width * 0.03438000,
        size.height * 0.1908650,
        size.width * 0.03783689,
        size.height * 0.1875630,
        size.width * 0.03773289,
        size.height * 0.1875630);
    path.lineTo(size.width * 0.01742178, size.height * 0.1875630);
    path.cubicTo(
        size.width * 0.01740133,
        size.height * 0.1875630,
        size.width * 0.008575556,
        size.height * 0.1908820,
        size.width * 0.005803556,
        size.height * 0.1919247);
    path.cubicTo(
        size.width * 0.005729333,
        size.height * 0.1919515,
        size.width * 0.005631556,
        size.height * 0.1919447,
        size.width * 0.005570667,
        size.height * 0.1919090);
    path.cubicTo(
        size.width * 0.005509778,
        size.height * 0.1918730,
        size.width * 0.005502222,
        size.height * 0.1918180,
        size.width * 0.005552889,
        size.height * 0.1917772);
    path.cubicTo(
        size.width * 0.006940889,
        size.height * 0.1906672,
        size.width * 0.01046933,
        size.height * 0.1878467,
        size.width * 0.01173644,
        size.height * 0.1868340);
    path.cubicTo(
        size.width * 0.01201378,
        size.height * 0.1866125,
        size.width * 0.01201378,
        size.height * 0.1863170,
        size.width * 0.01173644,
        size.height * 0.1860955);
    path.cubicTo(
        size.width * 0.01046933,
        size.height * 0.1850830,
        size.width * 0.006941333,
        size.height * 0.1822645,
        size.width * 0.005552889,
        size.height * 0.1811552);
    path.cubicTo(
        size.width * 0.005501778,
        size.height * 0.1811145,
        size.width * 0.005509333,
        size.height * 0.1810592,
        size.width * 0.005570667,
        size.height * 0.1810235);
    path.cubicTo(
        size.width * 0.005631556,
        size.height * 0.1809875,
        size.width * 0.005729778,
        size.height * 0.1809807,
        size.width * 0.005804000,
        size.height * 0.1810077);
    path.cubicTo(
        size.width * 0.008576000,
        size.height * 0.1820500,
        size.width * 0.01740089,
        size.height * 0.1853662,
        size.width * 0.01742178,
        size.height * 0.1853662);
    path.lineTo(size.width * 0.03773289, size.height * 0.1853662);
    path.cubicTo(
        size.width * 0.03783689,
        size.height * 0.1853662,
        size.width * 0.03438000,
        size.height * 0.1820667,
        size.width * 0.03282133,
        size.height * 0.1805835);
    path.cubicTo(
        size.width * 0.03273600,
        size.height * 0.1805022,
        size.width * 0.03275822,
        size.height * 0.1803987,
        size.width * 0.03287644,
        size.height * 0.1803312);
    path.cubicTo(
        size.width * 0.03299422,
        size.height * 0.1802640,
        size.width * 0.03317822,
        size.height * 0.1802497,
        size.width * 0.03332400,
        size.height * 0.1802967);
    path.cubicTo(
        size.width * 0.03713244,
        size.height * 0.1815820,
        size.width * 0.04837733,
        size.height * 0.1853662,
        size.width * 0.04867067,
        size.height * 0.1853662);
    path.lineTo(size.width * 0.06338400, size.height * 0.1853662);
    path.lineTo(size.width * 0.05531244, size.height * 0.1765135);
    path.lineTo(size.width * 0.07333911, size.height * 0.1760092);
    path.close();
    path.moveTo(size.width * 0.04213289, size.height * 0.2275345);
    path.cubicTo(
        size.width * 0.04180933,
        size.height * 0.2278495,
        size.width * 0.04200178,
        size.height * 0.2282530,
        size.width * 0.04256178,
        size.height * 0.2284347);
    path.lineTo(size.width * 0.04306889, size.height * 0.2285995);
    path.cubicTo(
        size.width * 0.04362889,
        size.height * 0.2287812,
        size.width * 0.04434578,
        size.height * 0.2286732,
        size.width * 0.04466933,
        size.height * 0.2283582);
    path.lineTo(size.width * 0.04727822, size.height * 0.2258162);
    path.cubicTo(
        size.width * 0.04760178,
        size.height * 0.2255012,
        size.width * 0.04740933,
        size.height * 0.2250980,
        size.width * 0.04684978,
        size.height * 0.2249162);
    path.lineTo(size.width * 0.04634222, size.height * 0.2247515);
    path.cubicTo(
        size.width * 0.04578222,
        size.height * 0.2245695,
        size.width * 0.04506533,
        size.height * 0.2246775,
        size.width * 0.04474178,
        size.height * 0.2249925);
    path.lineTo(size.width * 0.04213289, size.height * 0.2275345);
    path.close();
    path.moveTo(size.width * 0.4651698, size.height * 0.2096177);
    path.cubicTo(
        size.width * 0.4652516,
        size.height * 0.2101702,
        size.width * 0.4649276,
        size.height * 0.2107175,
        size.width * 0.4642738,
        size.height * 0.2111325);
    path.cubicTo(
        size.width * 0.4608636,
        size.height * 0.2132955,
        size.width * 0.4498213,
        size.height * 0.2203000,
        size.width * 0.4447404,
        size.height * 0.2235230);
    path.cubicTo(
        size.width * 0.4442476,
        size.height * 0.2238357,
        size.width * 0.4434827,
        size.height * 0.2239650,
        size.width * 0.4427653,
        size.height * 0.2238567);
    path.cubicTo(
        size.width * 0.4420476,
        size.height * 0.2237487,
        size.width * 0.4415000,
        size.height * 0.2234217,
        size.width * 0.4413511,
        size.height * 0.2230122);
    path.cubicTo(
        size.width * 0.4398160,
        size.height * 0.2187917,
        size.width * 0.4364791,
        size.height * 0.2096202,
        size.width * 0.4354489,
        size.height * 0.2067880);
    path.cubicTo(
        size.width * 0.4352511,
        size.height * 0.2062447,
        size.width * 0.4354573,
        size.height * 0.2056797,
        size.width * 0.4360191,
        size.height * 0.2052240);
    path.cubicTo(
        size.width * 0.4396302,
        size.height * 0.2022957,
        size.width * 0.4533911,
        size.height * 0.1911365,
        size.width * 0.4590360,
        size.height * 0.1865590);
    path.cubicTo(
        size.width * 0.4594053,
        size.height * 0.1862595,
        size.width * 0.4600689,
        size.height * 0.1861225,
        size.width * 0.4606951,
        size.height * 0.1862170);
    path.cubicTo(
        size.width * 0.4613209,
        size.height * 0.1863112,
        size.width * 0.4617742,
        size.height * 0.1866165,
        size.width * 0.4618280,
        size.height * 0.1869797);
    path.cubicTo(
        size.width * 0.4626476,
        size.height * 0.1925317,
        size.width * 0.4646453,
        size.height * 0.2060660,
        size.width * 0.4651698,
        size.height * 0.2096177);
    path.close();
    path.moveTo(size.width * 0.3962196, size.height * 0.1992255);
    path.cubicTo(
        size.width * 0.3956578,
        size.height * 0.1996810,
        size.width * 0.3954516,
        size.height * 0.2002460,
        size.width * 0.3956493,
        size.height * 0.2007892);
    path.cubicTo(
        size.width * 0.3966796,
        size.height * 0.2036215,
        size.width * 0.4000164,
        size.height * 0.2127932,
        size.width * 0.4015516,
        size.height * 0.2170137);
    path.cubicTo(
        size.width * 0.4017004,
        size.height * 0.2174230,
        size.width * 0.4022480,
        size.height * 0.2177500,
        size.width * 0.4029653,
        size.height * 0.2178582);
    path.cubicTo(
        size.width * 0.4036831,
        size.height * 0.2179662,
        size.width * 0.4044476,
        size.height * 0.2178370,
        size.width * 0.4049404,
        size.height * 0.2175245);
    path.cubicTo(
        size.width * 0.4100218,
        size.height * 0.2143012,
        size.width * 0.4210640,
        size.height * 0.2072967,
        size.width * 0.4244738,
        size.height * 0.2051337);
    path.cubicTo(
        size.width * 0.4251280,
        size.height * 0.2047190,
        size.width * 0.4254520,
        size.height * 0.2041715,
        size.width * 0.4253702,
        size.height * 0.2036190);
    path.cubicTo(
        size.width * 0.4248458,
        size.height * 0.2000675,
        size.width * 0.4228480,
        size.height * 0.1865330,
        size.width * 0.4220284,
        size.height * 0.1809810);
    path.cubicTo(
        size.width * 0.4219747,
        size.height * 0.1806177,
        size.width * 0.4215213,
        size.height * 0.1803125,
        size.width * 0.4208956,
        size.height * 0.1802182);
    path.cubicTo(
        size.width * 0.4202693,
        size.height * 0.1801240,
        size.width * 0.4196058,
        size.height * 0.1802607,
        size.width * 0.4192364,
        size.height * 0.1805602);
    path.cubicTo(
        size.width * 0.4135916,
        size.height * 0.1851377,
        size.width * 0.3998307,
        size.height * 0.1962970,
        size.width * 0.3962196,
        size.height * 0.1992255);
    path.close();
    path.moveTo(size.width * 0.5284698, size.height * 0.2000770);
    path.cubicTo(
        size.width * 0.5288902,
        size.height * 0.2005785,
        size.width * 0.5296573,
        size.height * 0.2009615,
        size.width * 0.5305924,
        size.height * 0.2011367);
    path.cubicTo(
        size.width * 0.5354684,
        size.height * 0.2020510,
        size.width * 0.5512569,
        size.height * 0.2050112,
        size.width * 0.5585227,
        size.height * 0.2063737);
    path.cubicTo(
        size.width * 0.5592276,
        size.height * 0.2065057,
        size.width * 0.5600044,
        size.height * 0.2064027,
        size.width * 0.5605298,
        size.height * 0.2061072);
    path.cubicTo(
        size.width * 0.5610551,
        size.height * 0.2058117,
        size.width * 0.5612387,
        size.height * 0.2053745,
        size.width * 0.5610036,
        size.height * 0.2049782);
    path.cubicTo(
        size.width * 0.5585818,
        size.height * 0.2008912,
        size.width * 0.5533187,
        size.height * 0.1920100,
        size.width * 0.5516933,
        size.height * 0.1892672);
    path.cubicTo(
        size.width * 0.5513818,
        size.height * 0.1887412,
        size.width * 0.5507009,
        size.height * 0.1883100,
        size.width * 0.5498098,
        size.height * 0.1880735);
    path.cubicTo(
        size.width * 0.5440791,
        size.height * 0.1865530,
        size.width * 0.5222427,
        size.height * 0.1807590,
        size.width * 0.5132853,
        size.height * 0.1783825);
    path.cubicTo(
        size.width * 0.5126991,
        size.height * 0.1782267,
        size.width * 0.5120027,
        size.height * 0.1782950,
        size.width * 0.5115444,
        size.height * 0.1785527);
    path.cubicTo(
        size.width * 0.5110862,
        size.height * 0.1788105,
        size.width * 0.5109649,
        size.height * 0.1792025,
        size.width * 0.5112413,
        size.height * 0.1795320);
    path.cubicTo(
        size.width * 0.5154667,
        size.height * 0.1845707,
        size.width * 0.5257667,
        size.height * 0.1968537,
        size.width * 0.5284698,
        size.height * 0.2000770);
    path.close();
    path.moveTo(size.width * 0.5789449, size.height * 0.1716847);
    path.cubicTo(
        size.width * 0.5798364,
        size.height * 0.1719212,
        size.width * 0.5805169,
        size.height * 0.1723527,
        size.width * 0.5808289,
        size.height * 0.1728787);
    path.cubicTo(
        size.width * 0.5824542,
        size.height * 0.1756215,
        size.width * 0.5877169,
        size.height * 0.1845027,
        size.width * 0.5901391,
        size.height * 0.1885895);
    path.cubicTo(
        size.width * 0.5903738,
        size.height * 0.1889860,
        size.width * 0.5901902,
        size.height * 0.1894230,
        size.width * 0.5896649,
        size.height * 0.1897185);
    path.cubicTo(
        size.width * 0.5891400,
        size.height * 0.1900140,
        size.width * 0.5883627,
        size.height * 0.1901172,
        size.width * 0.5876578,
        size.height * 0.1899850);
    path.cubicTo(
        size.width * 0.5803924,
        size.height * 0.1886227,
        size.width * 0.5646036,
        size.height * 0.1856622,
        size.width * 0.5597276,
        size.height * 0.1847480);
    path.cubicTo(
        size.width * 0.5587924,
        size.height * 0.1845727,
        size.width * 0.5580258,
        size.height * 0.1841900,
        size.width * 0.5576049,
        size.height * 0.1836885);
    path.cubicTo(
        size.width * 0.5549022,
        size.height * 0.1804652,
        size.width * 0.5446018,
        size.height * 0.1681820,
        size.width * 0.5403764,
        size.height * 0.1631435);
    path.cubicTo(
        size.width * 0.5401000,
        size.height * 0.1628137,
        size.width * 0.5402213,
        size.height * 0.1624220,
        size.width * 0.5406796,
        size.height * 0.1621642);
    path.cubicTo(
        size.width * 0.5411378,
        size.height * 0.1619065,
        size.width * 0.5418347,
        size.height * 0.1618382,
        size.width * 0.5424204,
        size.height * 0.1619937);
    path.cubicTo(
        size.width * 0.5513782,
        size.height * 0.1643705,
        size.width * 0.5732147,
        size.height * 0.1701642,
        size.width * 0.5789449,
        size.height * 0.1716847);
    path.close();
    path.moveTo(size.width * 0.6731040, size.height * 0.1712012);
    path.cubicTo(
        size.width * 0.6729200,
        size.height * 0.1708752,
        size.width * 0.6730671,
        size.height * 0.1705185,
        size.width * 0.6734876,
        size.height * 0.1702712);
    path.cubicTo(
        size.width * 0.6739080,
        size.height * 0.1700240,
        size.width * 0.6745347,
        size.height * 0.1699252,
        size.width * 0.6751222,
        size.height * 0.1700137);
    path.cubicTo(
        size.width * 0.6788524,
        size.height * 0.1705760,
        size.width * 0.6853351,
        size.height * 0.1715532,
        size.width * 0.6897431,
        size.height * 0.1722175);
    path.cubicTo(
        size.width * 0.6923151,
        size.height * 0.1726052,
        size.width * 0.6949587,
        size.height * 0.1717467,
        size.width * 0.6956480,
        size.height * 0.1703000);
    path.cubicTo(
        size.width * 0.6956796,
        size.height * 0.1702335,
        size.width * 0.6957111,
        size.height * 0.1701670,
        size.width * 0.6957431,
        size.height * 0.1701007);
    path.cubicTo(
        size.width * 0.6964320,
        size.height * 0.1686540,
        size.width * 0.6949058,
        size.height * 0.1671667,
        size.width * 0.6923338,
        size.height * 0.1667792);
    path.cubicTo(
        size.width * 0.6879702,
        size.height * 0.1661215,
        size.width * 0.6815738,
        size.height * 0.1651575,
        size.width * 0.6778267,
        size.height * 0.1645925);
    path.cubicTo(
        size.width * 0.6772298,
        size.height * 0.1645027,
        size.width * 0.6767707,
        size.height * 0.1642342,
        size.width * 0.6766338,
        size.height * 0.1638955);
    path.cubicTo(
        size.width * 0.6764969,
        size.height * 0.1635567,
        size.width * 0.6767049,
        size.height * 0.1632030,
        size.width * 0.6771738,
        size.height * 0.1629770);
    path.cubicTo(
        size.width * 0.6805578,
        size.height * 0.1613450,
        size.width * 0.6867249,
        size.height * 0.1583710,
        size.width * 0.6903404,
        size.height * 0.1566272);
    path.cubicTo(
        size.width * 0.6906338,
        size.height * 0.1564860,
        size.width * 0.6907120,
        size.height * 0.1562490,
        size.width * 0.6905293,
        size.height * 0.1560577);
    path.cubicTo(
        size.width * 0.6903462,
        size.height * 0.1558665,
        size.width * 0.6899516,
        size.height * 0.1557727,
        size.width * 0.6895804,
        size.height * 0.1558325);
    path.cubicTo(
        size.width * 0.6811596,
        size.height * 0.1571875,
        size.width * 0.6605676,
        size.height * 0.1605010,
        size.width * 0.6555600,
        size.height * 0.1613067);
    path.cubicTo(
        size.width * 0.6548342,
        size.height * 0.1614235,
        size.width * 0.6540644,
        size.height * 0.1614240,
        size.width * 0.6533378,
        size.height * 0.1613080);
    path.cubicTo(
        size.width * 0.6477484,
        size.height * 0.1604152,
        size.width * 0.6225822,
        size.height * 0.1563960,
        size.width * 0.6124151,
        size.height * 0.1547722);
    path.cubicTo(
        size.width * 0.6116582,
        size.height * 0.1546512,
        size.width * 0.6110982,
        size.height * 0.1542917,
        size.width * 0.6109844,
        size.height * 0.1538540);
    path.cubicTo(
        size.width * 0.6108707,
        size.height * 0.1534162,
        size.width * 0.6112244,
        size.height * 0.1529815,
        size.width * 0.6118880,
        size.height * 0.1527440);
    path.cubicTo(
        size.width * 0.6205089,
        size.height * 0.1496557,
        size.width * 0.6418520,
        size.height * 0.1420105,
        size.width * 0.6531711,
        size.height * 0.1379560);
    path.cubicTo(
        size.width * 0.6536431,
        size.height * 0.1377867,
        size.width * 0.6538187,
        size.height * 0.1374467,
        size.width * 0.6535804,
        size.height * 0.1371617);
    path.cubicTo(
        size.width * 0.6533422,
        size.height * 0.1368770,
        size.width * 0.6527649,
        size.height * 0.1367360,
        size.width * 0.6522320,
        size.height * 0.1368325);
    path.cubicTo(
        size.width * 0.6346773,
        size.height * 0.1400185,
        size.width * 0.5943480,
        size.height * 0.1473372,
        size.width * 0.5831889,
        size.height * 0.1493625);
    path.cubicTo(
        size.width * 0.5812902,
        size.height * 0.1497070,
        size.width * 0.5792556,
        size.height * 0.1497357,
        size.width * 0.5773284,
        size.height * 0.1494455);
    path.cubicTo(
        size.width * 0.5687551,
        size.height * 0.1481532,
        size.width * 0.5437960,
        size.height * 0.1443912,
        size.width * 0.5332636,
        size.height * 0.1428037);
    path.cubicTo(
        size.width * 0.5306249,
        size.height * 0.1424062,
        size.width * 0.5279124,
        size.height * 0.1432870,
        size.width * 0.5272058,
        size.height * 0.1447712);
    path.cubicTo(
        size.width * 0.5271956,
        size.height * 0.1447922,
        size.width * 0.5271853,
        size.height * 0.1448135,
        size.width * 0.5271756,
        size.height * 0.1448347);
    path.cubicTo(
        size.width * 0.5264684,
        size.height * 0.1463190,
        size.width * 0.5280342,
        size.height * 0.1478445,
        size.width * 0.5306729,
        size.height * 0.1482422);
    path.cubicTo(
        size.width * 0.5411738,
        size.height * 0.1498250,
        size.width * 0.5660160,
        size.height * 0.1535692,
        size.width * 0.5746609,
        size.height * 0.1548722);
    path.cubicTo(
        size.width * 0.5766360,
        size.height * 0.1551700,
        size.width * 0.5784098,
        size.height * 0.1557897,
        size.width * 0.5797596,
        size.height * 0.1566535);
    path.cubicTo(
        size.width * 0.5876369,
        size.height * 0.1616952,
        size.width * 0.6159138,
        size.height * 0.1797942,
        size.width * 0.6281431,
        size.height * 0.1876217);
    path.cubicTo(
        size.width * 0.6285124,
        size.height * 0.1878580,
        size.width * 0.6291364,
        size.height * 0.1879035,
        size.width * 0.6296004,
        size.height * 0.1877275);
    path.cubicTo(
        size.width * 0.6300644,
        size.height * 0.1875517,
        size.width * 0.6302240,
        size.height * 0.1872095,
        size.width * 0.6299733,
        size.height * 0.1869280);
    path.cubicTo(
        size.width * 0.6238613,
        size.height * 0.1800730,
        size.width * 0.6121956,
        size.height * 0.1669880,
        size.width * 0.6075373,
        size.height * 0.1617630);
    path.cubicTo(
        size.width * 0.6071849,
        size.height * 0.1613675,
        size.width * 0.6072778,
        size.height * 0.1608925,
        size.width * 0.6077747,
        size.height * 0.1605497);
    path.cubicTo(
        size.width * 0.6082716,
        size.height * 0.1602067,
        size.width * 0.6090796,
        size.height * 0.1600597,
        size.width * 0.6098396,
        size.height * 0.1601742);
    path.cubicTo(
        size.width * 0.6200453,
        size.height * 0.1617125,
        size.width * 0.6453142,
        size.height * 0.1655212,
        size.width * 0.6509271,
        size.height * 0.1663672);
    path.cubicTo(
        size.width * 0.6516569,
        size.height * 0.1664772,
        size.width * 0.6523178,
        size.height * 0.1666998,
        size.width * 0.6528347,
        size.height * 0.1670097);
    path.cubicTo(
        size.width * 0.6564431,
        size.height * 0.1691732,
        size.width * 0.6714262,
        size.height * 0.1781567,
        size.width * 0.6773982,
        size.height * 0.1817375);
    path.cubicTo(
        size.width * 0.6776604,
        size.height * 0.1818948,
        size.width * 0.6780813,
        size.height * 0.1819290,
        size.width * 0.6784124,
        size.height * 0.1818200);
    path.cubicTo(
        size.width * 0.6787431,
        size.height * 0.1817110,
        size.width * 0.6788956,
        size.height * 0.1814878,
        size.width * 0.6787800,
        size.height * 0.1812820);
    path.cubicTo(
        size.width * 0.6772582,
        size.height * 0.1785798,
        size.width * 0.6745267,
        size.height * 0.1737280,
        size.width * 0.6731040,
        size.height * 0.1712013);
    path.close();
    path.moveTo(size.width * 0.1711307, size.height * 0.1876267);
    path.cubicTo(
        size.width * 0.1717769,
        size.height * 0.1876267,
        size.width * 0.1723022,
        size.height * 0.1873315,
        size.width * 0.1723022,
        size.height * 0.1869677);
    path.lineTo(size.width * 0.1723022, size.height * 0.1866382);
    path.cubicTo(
        size.width * 0.1723022,
        size.height * 0.1862747,
        size.width * 0.1717769,
        size.height * 0.1859795,
        size.width * 0.1711307,
        size.height * 0.1859795);
    path.lineTo(size.width * 0.1659124, size.height * 0.1859795);
    path.cubicTo(
        size.width * 0.1652658,
        size.height * 0.1859795,
        size.width * 0.1647409,
        size.height * 0.1862747,
        size.width * 0.1647409,
        size.height * 0.1866382);
    path.lineTo(size.width * 0.1647409, size.height * 0.1869677);
    path.cubicTo(
        size.width * 0.1647409,
        size.height * 0.1873315,
        size.width * 0.1652658,
        size.height * 0.1876267,
        size.width * 0.1659124,
        size.height * 0.1876267);
    path.lineTo(size.width * 0.1711307, size.height * 0.1876267);
    path.close();
    path.moveTo(size.width * 0.001170222, size.height * 0.1856410);
    path.cubicTo(
        size.width * 0.0005235556,
        size.height * 0.1856410,
        size.width * -0.000001333333,
        size.height * 0.1859362,
        size.width * -0.000001333333,
        size.height * 0.1863000);
    path.lineTo(size.width * -0.000001333333, size.height * 0.1866295);
    path.cubicTo(
        size.width * -0.000001333333,
        size.height * 0.1869930,
        size.width * 0.0005235556,
        size.height * 0.1872885,
        size.width * 0.001170222,
        size.height * 0.1872885);
    path.lineTo(size.width * 0.006388444, size.height * 0.1872885);
    path.cubicTo(
        size.width * 0.007035111,
        size.height * 0.1872885,
        size.width * 0.007560000,
        size.height * 0.1869930,
        size.width * 0.007560000,
        size.height * 0.1866295);
    path.lineTo(size.width * 0.007560000, size.height * 0.1863000);
    path.cubicTo(
        size.width * 0.007560000,
        size.height * 0.1859362,
        size.width * 0.007035111,
        size.height * 0.1856410,
        size.width * 0.006388444,
        size.height * 0.1856410);
    path.lineTo(size.width * 0.001170222, size.height * 0.1856410);
    path.close();
    path.moveTo(size.width * 0.3498796, size.height * 0.1731597);
    path.cubicTo(
        size.width * 0.3490693,
        size.height * 0.1734757,
        size.width * 0.3480649,
        size.height * 0.1735917,
        size.width * 0.3470991,
        size.height * 0.1734805);
    path.cubicTo(
        size.width * 0.3420640,
        size.height * 0.1729010,
        size.width * 0.3257591,
        size.height * 0.1710242,
        size.width * 0.3182560,
        size.height * 0.1701605);
    path.cubicTo(
        size.width * 0.3175280,
        size.height * 0.1700767,
        size.width * 0.3169467,
        size.height * 0.1697687,
        size.width * 0.3167547,
        size.height * 0.1693652);
    path.cubicTo(
        size.width * 0.3165622,
        size.height * 0.1689615,
        size.width * 0.3167920,
        size.height * 0.1685315,
        size.width * 0.3173476,
        size.height * 0.1682542);
    path.cubicTo(
        size.width * 0.3230778,
        size.height * 0.1653960,
        size.width * 0.3355302,
        size.height * 0.1591847,
        size.width * 0.3393756,
        size.height * 0.1572667);
    path.cubicTo(
        size.width * 0.3401133,
        size.height * 0.1568987,
        size.width * 0.3410862,
        size.height * 0.1567167,
        size.width * 0.3420684,
        size.height * 0.1567625);
    path.cubicTo(
        size.width * 0.3483827,
        size.height * 0.1570575,
        size.width * 0.3724436,
        size.height * 0.1581812,
        size.width * 0.3823138,
        size.height * 0.1586422);
    path.cubicTo(
        size.width * 0.3829596,
        size.height * 0.1586725,
        size.width * 0.3835022,
        size.height * 0.1589275,
        size.width * 0.3836698,
        size.height * 0.1592795);
    path.cubicTo(
        size.width * 0.3838378,
        size.height * 0.1596317,
        size.width * 0.3835942,
        size.height * 0.1600052,
        size.width * 0.3830618,
        size.height * 0.1602130);
    path.cubicTo(
        size.width * 0.3749240,
        size.height * 0.1633880,
        size.width * 0.3550853,
        size.height * 0.1711285,
        size.width * 0.3498796,
        size.height * 0.1731597);
    path.close();
    path.moveTo(size.width * 0.5061209, size.height * 0.1113397);
    path.cubicTo(
        size.width * 0.5295582,
        size.height * 0.1245235,
        size.width * 0.5295582,
        size.height * 0.1459305,
        size.width * 0.5061209,
        size.height * 0.1591142);
    path.cubicTo(
        size.width * 0.4826831,
        size.height * 0.1722980,
        size.width * 0.4446258,
        size.height * 0.1722980,
        size.width * 0.4211884,
        size.height * 0.1591142);
    path.cubicTo(
        size.width * 0.3977507,
        size.height * 0.1459305,
        size.width * 0.3977507,
        size.height * 0.1245235,
        size.width * 0.4211884,
        size.height * 0.1113397);
    path.cubicTo(
        size.width * 0.4446258,
        size.height * 0.09815600,
        size.width * 0.4826831,
        size.height * 0.09815600,
        size.width * 0.5061209,
        size.height * 0.1113397);
    path.close();
    path.moveTo(size.width * 0.3314040, size.height * 0.1343752);
    path.cubicTo(
        size.width * 0.3304218,
        size.height * 0.1343295,
        size.width * 0.3294489,
        size.height * 0.1345115,
        size.width * 0.3287116,
        size.height * 0.1348795);
    path.cubicTo(
        size.width * 0.3248658,
        size.height * 0.1367975,
        size.width * 0.3124138,
        size.height * 0.1430087,
        size.width * 0.3066836,
        size.height * 0.1458670);
    path.cubicTo(
        size.width * 0.3061276,
        size.height * 0.1461442,
        size.width * 0.3058978,
        size.height * 0.1465742,
        size.width * 0.3060902,
        size.height * 0.1469780);
    path.cubicTo(
        size.width * 0.3062827,
        size.height * 0.1473815,
        size.width * 0.3068636,
        size.height * 0.1476895,
        size.width * 0.3075916,
        size.height * 0.1477732);
    path.cubicTo(
        size.width * 0.3150947,
        size.height * 0.1486370,
        size.width * 0.3313996,
        size.height * 0.1505137,
        size.width * 0.3364351,
        size.height * 0.1510932);
    path.cubicTo(
        size.width * 0.3374004,
        size.height * 0.1512045,
        size.width * 0.3384053,
        size.height * 0.1510885,
        size.width * 0.3392151,
        size.height * 0.1507725);
    path.cubicTo(
        size.width * 0.3444209,
        size.height * 0.1487412,
        size.width * 0.3642596,
        size.height * 0.1410007,
        size.width * 0.3723978,
        size.height * 0.1378257);
    path.cubicTo(
        size.width * 0.3729302,
        size.height * 0.1376177,
        size.width * 0.3731733,
        size.height * 0.1372445,
        size.width * 0.3730058,
        size.height * 0.1368922);
    path.cubicTo(
        size.width * 0.3728378,
        size.height * 0.1365402,
        size.width * 0.3722951,
        size.height * 0.1362852,
        size.width * 0.3716493,
        size.height * 0.1362550);
    path.cubicTo(
        size.width * 0.3617796,
        size.height * 0.1357940,
        size.width * 0.3377182,
        size.height * 0.1346702,
        size.width * 0.3314040,
        size.height * 0.1343752);
    path.close();
    path.moveTo(size.width * 0.1301693, size.height * 0.1457332);
    path.cubicTo(
        size.width * 0.1304924,
        size.height * 0.1454182,
        size.width * 0.1303004,
        size.height * 0.1450147,
        size.width * 0.1297404,
        size.height * 0.1448330);
    path.lineTo(size.width * 0.1292329, size.height * 0.1446682);
    path.cubicTo(
        size.width * 0.1286733,
        size.height * 0.1444865,
        size.width * 0.1279560,
        size.height * 0.1445945,
        size.width * 0.1276329,
        size.height * 0.1449095);
    path.lineTo(size.width * 0.1250236, size.height * 0.1474515);
    path.cubicTo(
        size.width * 0.1247004,
        size.height * 0.1477665,
        size.width * 0.1248924,
        size.height * 0.1481697,
        size.width * 0.1254524,
        size.height * 0.1483517);
    path.lineTo(size.width * 0.1259596, size.height * 0.1485165);
    path.cubicTo(
        size.width * 0.1265196,
        size.height * 0.1486982,
        size.width * 0.1272369,
        size.height * 0.1485902,
        size.width * 0.1275600,
        size.height * 0.1482752);
    path.lineTo(size.width * 0.1301693, size.height * 0.1457332);
    path.close();
    path.moveTo(size.width * 0.04518889, size.height * 0.1447402);
    path.cubicTo(
        size.width * 0.04486578,
        size.height * 0.1444252,
        size.width * 0.04414844,
        size.height * 0.1443172,
        size.width * 0.04358889,
        size.height * 0.1444990);
    path.lineTo(size.width * 0.04308133, size.height * 0.1446637);
    path.cubicTo(
        size.width * 0.04252133,
        size.height * 0.1448457,
        size.width * 0.04232933,
        size.height * 0.1452490,
        size.width * 0.04265244,
        size.height * 0.1455640);
    path.lineTo(size.width * 0.04526178, size.height * 0.1481060);
    path.cubicTo(
        size.width * 0.04558489,
        size.height * 0.1484210,
        size.width * 0.04630222,
        size.height * 0.1485290,
        size.width * 0.04686222,
        size.height * 0.1483472);
    path.lineTo(size.width * 0.04736933, size.height * 0.1481825);
    path.cubicTo(
        size.width * 0.04792933,
        size.height * 0.1480005,
        size.width * 0.04812133,
        size.height * 0.1475972,
        size.width * 0.04779822,
        size.height * 0.1472822);
    path.lineTo(size.width * 0.04518889, size.height * 0.1447402);
    path.close();
    path.moveTo(size.width * 0.2188213, size.height * 0.1419067);
    path.cubicTo(
        size.width * 0.2193547,
        size.height * 0.1424262,
        size.width * 0.2205373,
        size.height * 0.1426045,
        size.width * 0.2214609,
        size.height * 0.1423047);
    path.lineTo(size.width * 0.2222978, size.height * 0.1420330);
    path.cubicTo(
        size.width * 0.2232213,
        size.height * 0.1417330,
        size.width * 0.2235382,
        size.height * 0.1410677,
        size.width * 0.2230049,
        size.height * 0.1405482);
    path.lineTo(size.width * 0.2187013, size.height * 0.1363552);
    path.cubicTo(
        size.width * 0.2181684,
        size.height * 0.1358357,
        size.width * 0.2169853,
        size.height * 0.1356575,
        size.width * 0.2160618,
        size.height * 0.1359575);
    path.lineTo(size.width * 0.2152253, size.height * 0.1362292);
    path.cubicTo(
        size.width * 0.2143013,
        size.height * 0.1365292,
        size.width * 0.2139844,
        size.height * 0.1371945,
        size.width * 0.2145178,
        size.height * 0.1377140);
    path.lineTo(size.width * 0.2188213, size.height * 0.1419067);
    path.close();
    path.moveTo(size.width * 0.1676733, size.height * 0.05375000);
    path.lineTo(size.width * 0.1798107, size.height * 0.04192475);
    path.cubicTo(
        size.width * 0.1800520,
        size.height * 0.04168950,
        size.width * 0.1797102,
        size.height * 0.02953050,
        size.width * 0.1795871,
        size.height * 0.02541000);
    path.cubicTo(
        size.width * 0.1795880,
        size.height * 0.02525475,
        size.width * 0.1797751,
        size.height * 0.02511900,
        size.width * 0.1800427,
        size.height * 0.02508000);
    path.cubicTo(
        size.width * 0.1803102,
        size.height * 0.02504075,
        size.width * 0.1805911,
        size.height * 0.02510775,
        size.width * 0.1807267,
        size.height * 0.02524325);
    path.cubicTo(
        size.width * 0.1832107,
        size.height * 0.02771875,
        size.width * 0.1887453,
        size.height * 0.03322000,
        size.width * 0.1888311,
        size.height * 0.03313625);
    path.lineTo(size.width * 0.2055818, size.height * 0.01681650);
    path.cubicTo(
        size.width * 0.2055987,
        size.height * 0.01680025,
        size.width * 0.2044489,
        size.height * 0.006971500,
        size.width * 0.2040871,
        size.height * 0.003884250);
    path.cubicTo(
        size.width * 0.2040804,
        size.height * 0.003802500,
        size.width * 0.2041778,
        size.height * 0.003729500,
        size.width * 0.2043191,
        size.height * 0.003710000);
    path.cubicTo(
        size.width * 0.2044604,
        size.height * 0.003690500,
        size.width * 0.2046067,
        size.height * 0.003730000,
        size.width * 0.2046680,
        size.height * 0.003804500);
    path.cubicTo(
        size.width * 0.2063422,
        size.height * 0.005835000,
        size.width * 0.2105947,
        size.height * 0.01099625,
        size.width * 0.2121218,
        size.height * 0.01284975);
    path.cubicTo(
        size.width * 0.2124556,
        size.height * 0.01325500,
        size.width * 0.2132062,
        size.height * 0.01349875,
        size.width * 0.2139973,
        size.height * 0.01345875);
    path.cubicTo(
        size.width * 0.2176133,
        size.height * 0.01327525,
        size.width * 0.2276800,
        size.height * 0.01276500,
        size.width * 0.2316422,
        size.height * 0.01256425);
    path.cubicTo(
        size.width * 0.2317876,
        size.height * 0.01255675,
        size.width * 0.2319218,
        size.height * 0.01260850,
        size.width * 0.2319627,
        size.height * 0.01268725);
    path.cubicTo(
        size.width * 0.2320036,
        size.height * 0.01276600,
        size.width * 0.2319396,
        size.height * 0.01285025,
        size.width * 0.2318102,
        size.height * 0.01288800);
    path.cubicTo(
        size.width * 0.2268778,
        size.height * 0.01425550,
        size.width * 0.2111769,
        size.height * 0.01861150,
        size.width * 0.2111600,
        size.height * 0.01862800);
    path.lineTo(size.width * 0.1944093, size.height * 0.03494775);
    path.cubicTo(
        size.width * 0.1943236,
        size.height * 0.03503150,
        size.width * 0.2055538,
        size.height * 0.03497525,
        size.width * 0.2106053,
        size.height * 0.03494575);
    path.cubicTo(
        size.width * 0.2108827,
        size.height * 0.03494425,
        size.width * 0.2111271,
        size.height * 0.03504775,
        size.width * 0.2112009,
        size.height * 0.03519825);
    path.cubicTo(
        size.width * 0.2112747,
        size.height * 0.03534850,
        size.width * 0.2111591,
        size.height * 0.03550800,
        size.width * 0.2109196,
        size.height * 0.03558650);
    path.cubicTo(
        size.width * 0.2045151,
        size.height * 0.03758650,
        size.width * 0.1856307,
        size.height * 0.04350075,
        size.width * 0.1853889,
        size.height * 0.04373625);
    path.lineTo(size.width * 0.1735062, size.height * 0.05531350);
    path.lineTo(size.width * 0.2021262, size.height * 0.05611425);
    path.lineTo(size.width * 0.1883031, size.height * 0.07127450);
    path.lineTo(size.width * 0.2130813, size.height * 0.07127450);
    path.cubicTo(
        size.width * 0.2135640,
        size.height * 0.07127450,
        size.width * 0.2321129,
        size.height * 0.06502825,
        size.width * 0.2383951,
        size.height * 0.06290800);
    path.cubicTo(
        size.width * 0.2386351,
        size.height * 0.06283100,
        size.width * 0.2389373,
        size.height * 0.06285425,
        size.width * 0.2391311,
        size.height * 0.06296500);
    path.cubicTo(
        size.width * 0.2393253,
        size.height * 0.06307575,
        size.width * 0.2393622,
        size.height * 0.06324600,
        size.width * 0.2392218,
        size.height * 0.06337975);
    path.cubicTo(
        size.width * 0.2366524,
        size.height * 0.06582775,
        size.width * 0.2309502,
        size.height * 0.07127450,
        size.width * 0.2311222,
        size.height * 0.07127450);
    path.lineTo(size.width * 0.2646236, size.height * 0.07127450);
    path.cubicTo(
        size.width * 0.2646564,
        size.height * 0.07127450,
        size.width * 0.2792142,
        size.height * 0.06579975,
        size.width * 0.2837862,
        size.height * 0.06408025);
    path.cubicTo(
        size.width * 0.2839089,
        size.height * 0.06403600,
        size.width * 0.2840702,
        size.height * 0.06404700,
        size.width * 0.2841707,
        size.height * 0.06410600);
    path.cubicTo(
        size.width * 0.2842716,
        size.height * 0.06416525,
        size.width * 0.2842836,
        size.height * 0.06425625,
        size.width * 0.2841996,
        size.height * 0.06432325);
    path.cubicTo(
        size.width * 0.2819102,
        size.height * 0.06615400,
        size.width * 0.2760902,
        size.height * 0.07080625,
        size.width * 0.2740004,
        size.height * 0.07247700);
    path.cubicTo(
        size.width * 0.2735436,
        size.height * 0.07284225,
        size.width * 0.2735436,
        size.height * 0.07332975,
        size.width * 0.2740004,
        size.height * 0.07369475);
    path.cubicTo(
        size.width * 0.2760911,
        size.height * 0.07536475,
        size.width * 0.2819102,
        size.height * 0.08001350,
        size.width * 0.2842004,
        size.height * 0.08184325);
    path.cubicTo(
        size.width * 0.2842840,
        size.height * 0.08191050,
        size.width * 0.2842716,
        size.height * 0.08200150,
        size.width * 0.2841707,
        size.height * 0.08206075);
    path.cubicTo(
        size.width * 0.2840698,
        size.height * 0.08212025,
        size.width * 0.2839084,
        size.height * 0.08213100,
        size.width * 0.2837853,
        size.height * 0.08208675);
    path.cubicTo(
        size.width * 0.2792133,
        size.height * 0.08036775,
        size.width * 0.2646573,
        size.height * 0.07489750,
        size.width * 0.2646236,
        size.height * 0.07489750);
    path.lineTo(size.width * 0.2311222, size.height * 0.07489750);
    path.cubicTo(
        size.width * 0.2309502,
        size.height * 0.07489750,
        size.width * 0.2366520,
        size.height * 0.08034000,
        size.width * 0.2392231,
        size.height * 0.08278625);
    path.cubicTo(
        size.width * 0.2393640,
        size.height * 0.08292050,
        size.width * 0.2393267,
        size.height * 0.08309125,
        size.width * 0.2391320,
        size.height * 0.08320250);
    path.cubicTo(
        size.width * 0.2389378,
        size.height * 0.08331350,
        size.width * 0.2386342,
        size.height * 0.08333700,
        size.width * 0.2383938,
        size.height * 0.08325950);
    path.cubicTo(
        size.width * 0.2321124,
        size.height * 0.08113975,
        size.width * 0.2135644,
        size.height * 0.07489750,
        size.width * 0.2130813,
        size.height * 0.07489750);
    path.lineTo(size.width * 0.1892853, size.height * 0.07489750);
    path.lineTo(size.width * 0.2021262, size.height * 0.08898050);
    path.lineTo(size.width * 0.1718742, size.height * 0.08982675);
    path.lineTo(size.width * 0.1845293, size.height * 0.1021565);
    path.cubicTo(
        size.width * 0.1847711,
        size.height * 0.1023917,
        size.width * 0.2036618,
        size.height * 0.1083045,
        size.width * 0.2100671,
        size.height * 0.1103047);
    path.cubicTo(
        size.width * 0.2103058,
        size.height * 0.1103830,
        size.width * 0.2104213,
        size.height * 0.1105420,
        size.width * 0.2103480,
        size.height * 0.1106917);
    path.cubicTo(
        size.width * 0.2102742,
        size.height * 0.1108417,
        size.width * 0.2100307,
        size.height * 0.1109450,
        size.width * 0.2097542,
        size.height * 0.1109435);
    path.cubicTo(
        size.width * 0.2047009,
        size.height * 0.1109157,
        size.width * 0.1934640,
        size.height * 0.1108612,
        size.width * 0.1935498,
        size.height * 0.1109450);
    path.lineTo(size.width * 0.2103004, size.height * 0.1272647);
    path.cubicTo(
        size.width * 0.2103173,
        size.height * 0.1272810,
        size.width * 0.2260240,
        size.height * 0.1316350,
        size.width * 0.2309578,
        size.height * 0.1330027);
    path.cubicTo(
        size.width * 0.2310876,
        size.height * 0.1330402,
        size.width * 0.2311516,
        size.height * 0.1331240,
        size.width * 0.2311107,
        size.height * 0.1332027);
    path.cubicTo(
        size.width * 0.2310698,
        size.height * 0.1332815,
        size.width * 0.2309360,
        size.height * 0.1333330,
        size.width * 0.2307911,
        size.height * 0.1333255);
    path.cubicTo(
        size.width * 0.2268276,
        size.height * 0.1331257,
        size.width * 0.2167551,
        size.height * 0.1326167,
        size.width * 0.2131378,
        size.height * 0.1324340);
    path.cubicTo(
        size.width * 0.2123467,
        size.height * 0.1323940,
        size.width * 0.2115964,
        size.height * 0.1326377,
        size.width * 0.2112627,
        size.height * 0.1330430);
    path.cubicTo(
        size.width * 0.2097369,
        size.height * 0.1348962,
        size.width * 0.2054889,
        size.height * 0.1400555,
        size.width * 0.2038173,
        size.height * 0.1420857);
    path.cubicTo(
        size.width * 0.2037560,
        size.height * 0.1421605,
        size.width * 0.2036093,
        size.height * 0.1422000,
        size.width * 0.2034676,
        size.height * 0.1421805);
    path.cubicTo(
        size.width * 0.2033258,
        size.height * 0.1421610,
        size.width * 0.2032280,
        size.height * 0.1420880,
        size.width * 0.2032347,
        size.height * 0.1420057);
    path.cubicTo(
        size.width * 0.2035956,
        size.height * 0.1389192,
        size.width * 0.2047396,
        size.height * 0.1290930,
        size.width * 0.2047222,
        size.height * 0.1290762);
    path.lineTo(size.width * 0.1879716, size.height * 0.1127565);
    path.cubicTo(
        size.width * 0.1878858,
        size.height * 0.1126730,
        size.width * 0.1823573,
        size.height * 0.1181715,
        size.width * 0.1798769,
        size.height * 0.1206472);
    path.cubicTo(
        size.width * 0.1797409,
        size.height * 0.1207830,
        size.width * 0.1794591,
        size.height * 0.1208502,
        size.width * 0.1791907,
        size.height * 0.1208112);
    path.cubicTo(
        size.width * 0.1789222,
        size.height * 0.1207720,
        size.width * 0.1787347,
        size.height * 0.1206360,
        size.width * 0.1787333,
        size.height * 0.1204800);
    path.cubicTo(
        size.width * 0.1788564,
        size.height * 0.1163602,
        size.width * 0.1791929,
        size.height * 0.1042035,
        size.width * 0.1789511,
        size.height * 0.1039682);
    path.lineTo(size.width * 0.1667871, size.height * 0.09211675);
    path.lineTo(size.width * 0.1515253, size.height * 0.1054135);
    path.lineTo(size.width * 0.1353778, size.height * 0.09134475);
    path.lineTo(size.width * 0.1227076, size.height * 0.1036890);
    path.cubicTo(
        size.width * 0.1224662,
        size.height * 0.1039242,
        size.width * 0.1228080,
        size.height * 0.1160832,
        size.width * 0.1229311,
        size.height * 0.1202035);
    path.cubicTo(
        size.width * 0.1229302,
        size.height * 0.1203590,
        size.width * 0.1227431,
        size.height * 0.1204945,
        size.width * 0.1224756,
        size.height * 0.1205337);
    path.cubicTo(
        size.width * 0.1222080,
        size.height * 0.1205730,
        size.width * 0.1219271,
        size.height * 0.1205057,
        size.width * 0.1217916,
        size.height * 0.1203705);
    path.cubicTo(
        size.width * 0.1193076,
        size.height * 0.1178947,
        size.width * 0.1137729,
        size.height * 0.1123938,
        size.width * 0.1136871,
        size.height * 0.1124775);
    path.lineTo(size.width * 0.09693644, size.height * 0.1287973);
    path.cubicTo(
        size.width * 0.09691956,
        size.height * 0.1288135,
        size.width * 0.09806933,
        size.height * 0.1386422,
        size.width * 0.09843111,
        size.height * 0.1417292);
    path.cubicTo(
        size.width * 0.09843778,
        size.height * 0.1418112,
        size.width * 0.09834044,
        size.height * 0.1418842,
        size.width * 0.09819911,
        size.height * 0.1419037);
    path.cubicTo(
        size.width * 0.09805778,
        size.height * 0.1419230,
        size.width * 0.09791156,
        size.height * 0.1418835,
        size.width * 0.09785022,
        size.height * 0.1418092);
    path.cubicTo(
        size.width * 0.09617600,
        size.height * 0.1397785,
        size.width * 0.09192356,
        size.height * 0.1346172,
        size.width * 0.09039644,
        size.height * 0.1327637);
    path.cubicTo(
        size.width * 0.09006267,
        size.height * 0.1323585,
        size.width * 0.08931200,
        size.height * 0.1321150,
        size.width * 0.08852133,
        size.height * 0.1321550);
    path.cubicTo(
        size.width * 0.08490489,
        size.height * 0.1323382,
        size.width * 0.07483822,
        size.height * 0.1328487,
        size.width * 0.07087600,
        size.height * 0.1330495);
    path.cubicTo(
        size.width * 0.07073067,
        size.height * 0.1330567,
        size.width * 0.07059644,
        size.height * 0.1330052,
        size.width * 0.07055556,
        size.height * 0.1329265);
    path.cubicTo(
        size.width * 0.07051467,
        size.height * 0.1328475,
        size.width * 0.07057867,
        size.height * 0.1327635,
        size.width * 0.07070844,
        size.height * 0.1327257);
    path.cubicTo(
        size.width * 0.07564089,
        size.height * 0.1313580,
        size.width * 0.09134133,
        size.height * 0.1270022,
        size.width * 0.09135822,
        size.height * 0.1269857);
    path.lineTo(size.width * 0.1081089, size.height * 0.1106657);
    path.cubicTo(
        size.width * 0.1081947,
        size.height * 0.1105822,
        size.width * 0.09696444,
        size.height * 0.1106382,
        size.width * 0.09191289,
        size.height * 0.1106677);
    path.cubicTo(
        size.width * 0.09163556,
        size.height * 0.1106695,
        size.width * 0.09139111,
        size.height * 0.1105657,
        size.width * 0.09131733,
        size.height * 0.1104155);
    path.cubicTo(
        size.width * 0.09124356,
        size.height * 0.1102652,
        size.width * 0.09135911,
        size.height * 0.1101057,
        size.width * 0.09159867,
        size.height * 0.1100272);
    path.cubicTo(
        size.width * 0.09800311,
        size.height * 0.1080272,
        size.width * 0.1168876,
        size.height * 0.1021127,
        size.width * 0.1171293,
        size.height * 0.1018775);
    path.lineTo(size.width * 0.1295449, size.height * 0.08978100);
    path.lineTo(size.width * 0.1009249, size.height * 0.08898050);
    path.lineTo(size.width * 0.1142747, size.height * 0.07433925);
    path.lineTo(size.width * 0.08943689, size.height * 0.07433925);
    path.cubicTo(
        size.width * 0.08895422,
        size.height * 0.07433925,
        size.width * 0.07040533,
        size.height * 0.08058550,
        size.width * 0.06412311,
        size.height * 0.08270550);
    path.cubicTo(
        size.width * 0.06388311,
        size.height * 0.08278275,
        size.width * 0.06358089,
        size.height * 0.08275950,
        size.width * 0.06338711,
        size.height * 0.08264875);
    path.cubicTo(
        size.width * 0.06319289,
        size.height * 0.08253800,
        size.width * 0.06315556,
        size.height * 0.08236775,
        size.width * 0.06329644,
        size.height * 0.08223375);
    path.cubicTo(
        size.width * 0.06586578,
        size.height * 0.07978575,
        size.width * 0.07156800,
        size.height * 0.07433925,
        size.width * 0.07139600,
        size.height * 0.07433925);
    path.lineTo(size.width * 0.03789467, size.height * 0.07433925);
    path.cubicTo(
        size.width * 0.03786178,
        size.height * 0.07433925,
        size.width * 0.02330400,
        size.height * 0.07981375,
        size.width * 0.01873200,
        size.height * 0.08153350);
    path.cubicTo(
        size.width * 0.01860933,
        size.height * 0.08157750,
        size.width * 0.01844844,
        size.height * 0.08156675,
        size.width * 0.01834756,
        size.height * 0.08150775);
    path.cubicTo(
        size.width * 0.01824711,
        size.height * 0.08144850,
        size.width * 0.01823467,
        size.height * 0.08135750,
        size.width * 0.01831867,
        size.height * 0.08129050);
    path.cubicTo(
        size.width * 0.02060800,
        size.height * 0.07945975,
        size.width * 0.02642800,
        size.height * 0.07480750,
        size.width * 0.02851778,
        size.height * 0.07313675);
    path.cubicTo(
        size.width * 0.02897511,
        size.height * 0.07277150,
        size.width * 0.02897467,
        size.height * 0.07228400,
        size.width * 0.02851778,
        size.height * 0.07191875);
    path.cubicTo(
        size.width * 0.02642756,
        size.height * 0.07024900,
        size.width * 0.02060800,
        size.height * 0.06560000,
        size.width * 0.01831822,
        size.height * 0.06377050);
    path.cubicTo(
        size.width * 0.01823422,
        size.height * 0.06370325,
        size.width * 0.01824622,
        size.height * 0.06361200,
        size.width * 0.01834711,
        size.height * 0.06355275);
    path.cubicTo(
        size.width * 0.01844800,
        size.height * 0.06349350,
        size.width * 0.01860978,
        size.height * 0.06348250,
        size.width * 0.01873244,
        size.height * 0.06352675);
    path.cubicTo(
        size.width * 0.02330444,
        size.height * 0.06524575,
        size.width * 0.03786089,
        size.height * 0.07071625,
        size.width * 0.03789467,
        size.height * 0.07071625);
    path.lineTo(size.width * 0.07139600, size.height * 0.07071625);
    path.cubicTo(
        size.width * 0.07156800,
        size.height * 0.07071625,
        size.width * 0.06586667,
        size.height * 0.06527350,
        size.width * 0.06329511,
        size.height * 0.06282750);
    path.cubicTo(
        size.width * 0.06315422,
        size.height * 0.06269325,
        size.width * 0.06319156,
        size.height * 0.06252225,
        size.width * 0.06338578,
        size.height * 0.06241125);
    path.cubicTo(
        size.width * 0.06358044,
        size.height * 0.06230025,
        size.width * 0.06388356,
        size.height * 0.06227675,
        size.width * 0.06412444,
        size.height * 0.06235400);
    path.cubicTo(
        size.width * 0.07040578,
        size.height * 0.06447400,
        size.width * 0.08895378,
        size.height * 0.07071625,
        size.width * 0.08943689,
        size.height * 0.07071625);
    path.lineTo(size.width * 0.1142387, size.height * 0.07071625);
    path.lineTo(size.width * 0.1009249, size.height * 0.05611425);
    path.lineTo(size.width * 0.1301413, size.height * 0.05529700);
    path.lineTo(size.width * 0.1179889, size.height * 0.04345700);
    path.cubicTo(
        size.width * 0.1177476,
        size.height * 0.04322200,
        size.width * 0.09885600,
        size.height * 0.03730900,
        size.width * 0.09245111,
        size.height * 0.03530875);
    path.cubicTo(
        size.width * 0.09221244,
        size.height * 0.03523050,
        size.width * 0.09209733,
        size.height * 0.03507175,
        size.width * 0.09217067,
        size.height * 0.03492175);
    path.cubicTo(
        size.width * 0.09224400,
        size.height * 0.03477200,
        size.width * 0.09248756,
        size.height * 0.03466875,
        size.width * 0.09276400,
        size.height * 0.03467025);
    path.cubicTo(
        size.width * 0.09781778,
        size.height * 0.03469800,
        size.width * 0.1090542,
        size.height * 0.03475250,
        size.width * 0.1089684,
        size.height * 0.03466875);
    path.lineTo(size.width * 0.09221778, size.height * 0.01834875);
    path.cubicTo(
        size.width * 0.09220089,
        size.height * 0.01833275,
        size.width * 0.07649378,
        size.height * 0.01397825,
        size.width * 0.07156000,
        size.height * 0.01261100);
    path.cubicTo(
        size.width * 0.07143067,
        size.height * 0.01257325,
        size.width * 0.07136667,
        size.height * 0.01248950,
        size.width * 0.07140756,
        size.height * 0.01241075);
    path.cubicTo(
        size.width * 0.07144844,
        size.height * 0.01233225,
        size.width * 0.07158222,
        size.height * 0.01228075,
        size.width * 0.07172756,
        size.height * 0.01228800);
    path.cubicTo(
        size.width * 0.07569067,
        size.height * 0.01248775,
        size.width * 0.08576356,
        size.height * 0.01299700,
        size.width * 0.08938044,
        size.height * 0.01317975);
    path.cubicTo(
        size.width * 0.09017156,
        size.height * 0.01321975,
        size.width * 0.09092178,
        size.height * 0.01297600,
        size.width * 0.09125556,
        size.height * 0.01257050);
    path.cubicTo(
        size.width * 0.09278133,
        size.height * 0.01071750,
        size.width * 0.09702933,
        size.height * 0.005558250,
        size.width * 0.09870089,
        size.height * 0.003527750);
    path.cubicTo(
        size.width * 0.09876267,
        size.height * 0.003453250,
        size.width * 0.09890889,
        size.height * 0.003413750,
        size.width * 0.09905067,
        size.height * 0.003433250);
    path.cubicTo(
        size.width * 0.09919244,
        size.height * 0.003452750,
        size.width * 0.09929022,
        size.height * 0.003526000,
        size.width * 0.09928356,
        size.height * 0.003608000);
    path.cubicTo(
        size.width * 0.09892267,
        size.height * 0.006694750,
        size.width * 0.09777867,
        size.height * 0.01652075,
        size.width * 0.09779600,
        size.height * 0.01653725);
    path.lineTo(size.width * 0.1145467, size.height * 0.03285700);
    path.cubicTo(
        size.width * 0.1146324,
        size.height * 0.03294075,
        size.width * 0.1201609,
        size.height * 0.02744200,
        size.width * 0.1226413,
        size.height * 0.02496650);
    path.cubicTo(
        size.width * 0.1227778,
        size.height * 0.02483050,
        size.width * 0.1230596,
        size.height * 0.02476325,
        size.width * 0.1233276,
        size.height * 0.02480275);
    path.cubicTo(
        size.width * 0.1235960,
        size.height * 0.02484200,
        size.width * 0.1237836,
        size.height * 0.02497775,
        size.width * 0.1237849,
        size.height * 0.02513375);
    path.cubicTo(
        size.width * 0.1236618,
        size.height * 0.02925375,
        size.width * 0.1233253,
        size.height * 0.04141000,
        size.width * 0.1235671,
        size.height * 0.04164550);
    path.lineTo(size.width * 0.1357013, size.height * 0.05346775);
    path.lineTo(size.width * 0.1515253, size.height * 0.03968125);
    path.lineTo(size.width * 0.1676733, size.height * 0.05375000);
    path.close();
    path.moveTo(size.width * 0.07865378, size.height * 0.1402690);
    path.cubicTo(
        size.width * 0.07812044,
        size.height * 0.1407885,
        size.width * 0.07843733,
        size.height * 0.1414537,
        size.width * 0.07936089,
        size.height * 0.1417537);
    path.lineTo(size.width * 0.08019778, size.height * 0.1420255);
    path.cubicTo(
        size.width * 0.08112133,
        size.height * 0.1423255,
        size.width * 0.08230444,
        size.height * 0.1421472,
        size.width * 0.08283733,
        size.height * 0.1416277);
    path.lineTo(size.width * 0.08714089, size.height * 0.1374350);
    path.cubicTo(
        size.width * 0.08767422,
        size.height * 0.1369155,
        size.width * 0.08735733,
        size.height * 0.1362500,
        size.width * 0.08643378,
        size.height * 0.1359500);
    path.lineTo(size.width * 0.08559689, size.height * 0.1356785);
    path.cubicTo(
        size.width * 0.08467333,
        size.height * 0.1353785,
        size.width * 0.08349067,
        size.height * 0.1355567,
        size.width * 0.08295733,
        size.height * 0.1360762);
    path.lineTo(size.width * 0.07865378, size.height * 0.1402690);
    path.close();
    path.moveTo(size.width * 0.5959071, size.height * 0.1360785);
    path.cubicTo(
        size.width * 0.5968893,
        size.height * 0.1361245,
        size.width * 0.5978622,
        size.height * 0.1359422,
        size.width * 0.5985996,
        size.height * 0.1355745);
    path.cubicTo(
        size.width * 0.6024453,
        size.height * 0.1336562,
        size.width * 0.6148973,
        size.height * 0.1274450,
        size.width * 0.6206276,
        size.height * 0.1245870);
    path.cubicTo(
        size.width * 0.6211836,
        size.height * 0.1243097,
        size.width * 0.6214133,
        size.height * 0.1238795,
        size.width * 0.6212209,
        size.height * 0.1234760);
    path.cubicTo(
        size.width * 0.6210284,
        size.height * 0.1230722,
        size.width * 0.6204476,
        size.height * 0.1227645,
        size.width * 0.6197196,
        size.height * 0.1226805);
    path.cubicTo(
        size.width * 0.6122164,
        size.height * 0.1218170,
        size.width * 0.5959116,
        size.height * 0.1199400,
        size.width * 0.5908760,
        size.height * 0.1193605);
    path.cubicTo(
        size.width * 0.5899107,
        size.height * 0.1192492,
        size.width * 0.5889058,
        size.height * 0.1193652,
        size.width * 0.5880960,
        size.height * 0.1196812);
    path.cubicTo(
        size.width * 0.5828902,
        size.height * 0.1217125,
        size.width * 0.5630516,
        size.height * 0.1294530,
        size.width * 0.5549138,
        size.height * 0.1326282);
    path.cubicTo(
        size.width * 0.5543813,
        size.height * 0.1328360,
        size.width * 0.5541378,
        size.height * 0.1332095,
        size.width * 0.5543053,
        size.height * 0.1335615);
    path.cubicTo(
        size.width * 0.5544733,
        size.height * 0.1339135,
        size.width * 0.5550160,
        size.height * 0.1341685,
        size.width * 0.5556618,
        size.height * 0.1341987);
    path.cubicTo(
        size.width * 0.5655316,
        size.height * 0.1346597,
        size.width * 0.5895929,
        size.height * 0.1357835,
        size.width * 0.5959071,
        size.height * 0.1360785);
    path.close();
    path.moveTo(size.width * 0.2542089, size.height * 0.09925250);
    path.cubicTo(
        size.width * 0.2543924,
        size.height * 0.09957875,
        size.width * 0.2542453,
        size.height * 0.09993525,
        size.width * 0.2538249,
        size.height * 0.1001825);
    path.cubicTo(
        size.width * 0.2534044,
        size.height * 0.1004297,
        size.width * 0.2527778,
        size.height * 0.1005285,
        size.width * 0.2521902,
        size.height * 0.1004400);
    path.cubicTo(
        size.width * 0.2484600,
        size.height * 0.09987775,
        size.width * 0.2419773,
        size.height * 0.09890075,
        size.width * 0.2375693,
        size.height * 0.09823625);
    path.cubicTo(
        size.width * 0.2349973,
        size.height * 0.09784850,
        size.width * 0.2323538,
        size.height * 0.09870725,
        size.width * 0.2316644,
        size.height * 0.1001540);
    path.cubicTo(
        size.width * 0.2316329,
        size.height * 0.1002202,
        size.width * 0.2316013,
        size.height * 0.1002867,
        size.width * 0.2315693,
        size.height * 0.1003532);
    path.cubicTo(
        size.width * 0.2308804,
        size.height * 0.1018000,
        size.width * 0.2324067,
        size.height * 0.1032870,
        size.width * 0.2349787,
        size.height * 0.1036747);
    path.cubicTo(
        size.width * 0.2393422,
        size.height * 0.1043325,
        size.width * 0.2457387,
        size.height * 0.1052965,
        size.width * 0.2494858,
        size.height * 0.1058612);
    path.cubicTo(
        size.width * 0.2500827,
        size.height * 0.1059512,
        size.width * 0.2505418,
        size.height * 0.1062195,
        size.width * 0.2506787,
        size.height * 0.1065582);
    path.cubicTo(
        size.width * 0.2508156,
        size.height * 0.1068972,
        size.width * 0.2506076,
        size.height * 0.1072507,
        size.width * 0.2501387,
        size.height * 0.1074770);
    path.cubicTo(
        size.width * 0.2467547,
        size.height * 0.1091087,
        size.width * 0.2405876,
        size.height * 0.1120830,
        size.width * 0.2369720,
        size.height * 0.1138265);
    path.cubicTo(
        size.width * 0.2366787,
        size.height * 0.1139680,
        size.width * 0.2366004,
        size.height * 0.1142050,
        size.width * 0.2367831,
        size.height * 0.1143960);
    path.cubicTo(
        size.width * 0.2369662,
        size.height * 0.1145872,
        size.width * 0.2373609,
        size.height * 0.1146810,
        size.width * 0.2377320,
        size.height * 0.1146212);
    path.cubicTo(
        size.width * 0.2461529,
        size.height * 0.1132662,
        size.width * 0.2667453,
        size.height * 0.1099527,
        size.width * 0.2717524,
        size.height * 0.1091470);
    path.cubicTo(
        size.width * 0.2724787,
        size.height * 0.1090302,
        size.width * 0.2732480,
        size.height * 0.1090297,
        size.width * 0.2739747,
        size.height * 0.1091457);
    path.cubicTo(
        size.width * 0.2795640,
        size.height * 0.1100385,
        size.width * 0.3047302,
        size.height * 0.1140580,
        size.width * 0.3148973,
        size.height * 0.1156817);
    path.cubicTo(
        size.width * 0.3156542,
        size.height * 0.1158025,
        size.width * 0.3162142,
        size.height * 0.1161620,
        size.width * 0.3163280,
        size.height * 0.1165998);
    path.cubicTo(
        size.width * 0.3164418,
        size.height * 0.1170375,
        size.width * 0.3160880,
        size.height * 0.1174723,
        size.width * 0.3154249,
        size.height * 0.1177100);
    path.cubicTo(
        size.width * 0.3068036,
        size.height * 0.1207980,
        size.width * 0.2854609,
        size.height * 0.1284433,
        size.width * 0.2741413,
        size.height * 0.1324980);
    path.cubicTo(
        size.width * 0.2736693,
        size.height * 0.1326670,
        size.width * 0.2734938,
        size.height * 0.1330072,
        size.width * 0.2737320,
        size.height * 0.1332920);
    path.cubicTo(
        size.width * 0.2739702,
        size.height * 0.1335770,
        size.width * 0.2745476,
        size.height * 0.1337180,
        size.width * 0.2750804,
        size.height * 0.1336212);
    path.cubicTo(
        size.width * 0.2926351,
        size.height * 0.1304355,
        size.width * 0.3329644,
        size.height * 0.1231165,
        size.width * 0.3441240,
        size.height * 0.1210912);
    path.cubicTo(
        size.width * 0.3460222,
        size.height * 0.1207467,
        size.width * 0.3480573,
        size.height * 0.1207180,
        size.width * 0.3499840,
        size.height * 0.1210085);
    path.cubicTo(
        size.width * 0.3585578,
        size.height * 0.1223007,
        size.width * 0.3835169,
        size.height * 0.1260625,
        size.width * 0.3940489,
        size.height * 0.1276500);
    path.cubicTo(
        size.width * 0.3966876,
        size.height * 0.1280477,
        size.width * 0.3994000,
        size.height * 0.1271670,
        size.width * 0.4001067,
        size.height * 0.1256828);
    path.cubicTo(
        size.width * 0.4001169,
        size.height * 0.1256615,
        size.width * 0.4001271,
        size.height * 0.1256402,
        size.width * 0.4001373,
        size.height * 0.1256190);
    path.cubicTo(
        size.width * 0.4008440,
        size.height * 0.1241348,
        size.width * 0.3992782,
        size.height * 0.1226093,
        size.width * 0.3966396,
        size.height * 0.1222115);
    path.cubicTo(
        size.width * 0.3861387,
        size.height * 0.1206287,
        size.width * 0.3612964,
        size.height * 0.1168845,
        size.width * 0.3526516,
        size.height * 0.1155815);
    path.cubicTo(
        size.width * 0.3506764,
        size.height * 0.1152840,
        size.width * 0.3489027,
        size.height * 0.1146643,
        size.width * 0.3475529,
        size.height * 0.1138003);
    path.cubicTo(
        size.width * 0.3396760,
        size.height * 0.1087585,
        size.width * 0.3113987,
        size.height * 0.09065975,
        size.width * 0.2991693,
        size.height * 0.08283200);
    path.cubicTo(
        size.width * 0.2988000,
        size.height * 0.08259575,
        size.width * 0.2981760,
        size.height * 0.08255050,
        size.width * 0.2977120,
        size.height * 0.08272625);
    path.cubicTo(
        size.width * 0.2972480,
        size.height * 0.08290200,
        size.width * 0.2970884,
        size.height * 0.08324450,
        size.width * 0.2973391,
        size.height * 0.08352575);
    path.cubicTo(
        size.width * 0.3034511,
        size.height * 0.09038100,
        size.width * 0.3151169,
        size.height * 0.1034657,
        size.width * 0.3197751,
        size.height * 0.1086908);
    path.cubicTo(
        size.width * 0.3201276,
        size.height * 0.1090863,
        size.width * 0.3200347,
        size.height * 0.1095613,
        size.width * 0.3195378,
        size.height * 0.1099043);
    path.cubicTo(
        size.width * 0.3190409,
        size.height * 0.1102470,
        size.width * 0.3182329,
        size.height * 0.1103940,
        size.width * 0.3174729,
        size.height * 0.1102795);
    path.cubicTo(
        size.width * 0.3072671,
        size.height * 0.1087412,
        size.width * 0.2819982,
        size.height * 0.1049328,
        size.width * 0.2763853,
        size.height * 0.1040867);
    path.cubicTo(
        size.width * 0.2756556,
        size.height * 0.1039767,
        size.width * 0.2749947,
        size.height * 0.1037542,
        size.width * 0.2744778,
        size.height * 0.1034443);
    path.cubicTo(
        size.width * 0.2708693,
        size.height * 0.1012805,
        size.width * 0.2558862,
        size.height * 0.09229700,
        size.width * 0.2499142,
        size.height * 0.08871625);
    path.cubicTo(
        size.width * 0.2496520,
        size.height * 0.08855900,
        size.width * 0.2492311,
        size.height * 0.08852475,
        size.width * 0.2489000,
        size.height * 0.08863400);
    path.cubicTo(
        size.width * 0.2485693,
        size.height * 0.08874300,
        size.width * 0.2484169,
        size.height * 0.08896625,
        size.width * 0.2485324,
        size.height * 0.08917175);
    path.cubicTo(
        size.width * 0.2500542,
        size.height * 0.09187425,
        size.width * 0.2527862,
        size.height * 0.09672600,
        size.width * 0.2542089,
        size.height * 0.09925250);
    path.close();
    path.moveTo(size.width * 0.5774320, size.height * 0.09729400);
    path.cubicTo(
        size.width * 0.5782418,
        size.height * 0.09697800,
        size.width * 0.5792462,
        size.height * 0.09686200,
        size.width * 0.5802120,
        size.height * 0.09697325);
    path.cubicTo(
        size.width * 0.5852471,
        size.height * 0.09755275,
        size.width * 0.6015524,
        size.height * 0.09942975,
        size.width * 0.6090556,
        size.height * 0.1002932);
    path.cubicTo(
        size.width * 0.6097831,
        size.height * 0.1003770,
        size.width * 0.6103644,
        size.height * 0.1006850,
        size.width * 0.6105564,
        size.height * 0.1010887);
    path.cubicTo(
        size.width * 0.6107489,
        size.height * 0.1014922,
        size.width * 0.6105191,
        size.height * 0.1019225,
        size.width * 0.6099636,
        size.height * 0.1021997);
    path.cubicTo(
        size.width * 0.6042333,
        size.height * 0.1050577,
        size.width * 0.5917809,
        size.height * 0.1112690,
        size.width * 0.5879356,
        size.height * 0.1131872);
    path.cubicTo(
        size.width * 0.5871978,
        size.height * 0.1135550,
        size.width * 0.5862249,
        size.height * 0.1137372,
        size.width * 0.5852427,
        size.height * 0.1136912);
    path.cubicTo(
        size.width * 0.5789284,
        size.height * 0.1133962,
        size.width * 0.5548676,
        size.height * 0.1122725,
        size.width * 0.5449973,
        size.height * 0.1118115);
    path.cubicTo(
        size.width * 0.5443516,
        size.height * 0.1117812,
        size.width * 0.5438089,
        size.height * 0.1115262,
        size.width * 0.5436413,
        size.height * 0.1111742);
    path.cubicTo(
        size.width * 0.5434738,
        size.height * 0.1108220,
        size.width * 0.5437169,
        size.height * 0.1104487,
        size.width * 0.5442493,
        size.height * 0.1102410);
    path.cubicTo(
        size.width * 0.5523871,
        size.height * 0.1070657,
        size.width * 0.5722258,
        size.height * 0.09932525,
        size.width * 0.5774320,
        size.height * 0.09729400);
    path.close();
    path.moveTo(size.width * 0.6237671, size.height * 0.05118375);
    path.cubicTo(
        size.width * 0.6231729,
        size.height * 0.05111025,
        size.width * 0.6226973,
        size.height * 0.05086025,
        size.width * 0.6225271,
        size.height * 0.05053175);
    path.cubicTo(
        size.width * 0.6223564,
        size.height * 0.05020325,
        size.width * 0.6225178,
        size.height * 0.04984875,
        size.width * 0.6229480,
        size.height * 0.04960675);
    path.cubicTo(
        size.width * 0.6256787,
        size.height * 0.04807075,
        size.width * 0.6304240,
        size.height * 0.04540150,
        size.width * 0.6336511,
        size.height * 0.04358625);
    path.cubicTo(
        size.width * 0.6355342,
        size.height * 0.04252700,
        size.width * 0.6355342,
        size.height * 0.04081000,
        size.width * 0.6336511,
        size.height * 0.03975100);
    path.cubicTo(
        size.width * 0.6335649,
        size.height * 0.03970225,
        size.width * 0.6334782,
        size.height * 0.03965350,
        size.width * 0.6333920,
        size.height * 0.03960500);
    path.cubicTo(
        size.width * 0.6315089,
        size.height * 0.03854600,
        size.width * 0.6284564,
        size.height * 0.03854600,
        size.width * 0.6265733,
        size.height * 0.03960500);
    path.cubicTo(
        size.width * 0.6233791,
        size.height * 0.04140175,
        size.width * 0.6186969,
        size.height * 0.04403575,
        size.width * 0.6159533,
        size.height * 0.04557875);
    path.cubicTo(
        size.width * 0.6155169,
        size.height * 0.04582450,
        size.width * 0.6148738,
        size.height * 0.04591400,
        size.width * 0.6142840,
        size.height * 0.04581125);
    path.cubicTo(
        size.width * 0.6136938,
        size.height * 0.04570850,
        size.width * 0.6132533,
        size.height * 0.04543050,
        size.width * 0.6131396,
        size.height * 0.04508900);
    path.cubicTo(
        size.width * 0.6123191,
        size.height * 0.04262450,
        size.width * 0.6108236,
        size.height * 0.03813325,
        size.width * 0.6099471,
        size.height * 0.03550000);
    path.cubicTo(
        size.width * 0.6098760,
        size.height * 0.03528650,
        size.width * 0.6095502,
        size.height * 0.03512975,
        size.width * 0.6091644,
        size.height * 0.03512325);
    path.cubicTo(
        size.width * 0.6087787,
        size.height * 0.03511700,
        size.width * 0.6084369,
        size.height * 0.03526250,
        size.width * 0.6083436,
        size.height * 0.03547300);
    path.cubicTo(
        size.width * 0.6062191,
        size.height * 0.04025275,
        size.width * 0.6010244,
        size.height * 0.05194050,
        size.width * 0.5997613,
        size.height * 0.05478275);
    path.cubicTo(
        size.width * 0.5995782,
        size.height * 0.05519475,
        size.width * 0.5991942,
        size.height * 0.05557000,
        size.width * 0.5986520,
        size.height * 0.05586600);
    path.cubicTo(
        size.width * 0.5944831,
        size.height * 0.05814225,
        size.width * 0.5757116,
        size.height * 0.06839225,
        size.width * 0.5681280,
        size.height * 0.07253300);
    path.cubicTo(
        size.width * 0.5675636,
        size.height * 0.07284125,
        size.width * 0.5667302,
        size.height * 0.07293425,
        size.width * 0.5659996,
        size.height * 0.07277100);
    path.cubicTo(
        size.width * 0.5652684,
        size.height * 0.07260750,
        size.width * 0.5647760,
        size.height * 0.07221775,
        size.width * 0.5647418,
        size.height * 0.07177575);
    path.cubicTo(
        size.width * 0.5642978,
        size.height * 0.06603200,
        size.width * 0.5631987,
        size.height * 0.05181250,
        size.width * 0.5626160,
        size.height * 0.04427100);
    path.cubicTo(
        size.width * 0.5625916,
        size.height * 0.04395650,
        size.width * 0.5621556,
        size.height * 0.04370100,
        size.width * 0.5615978,
        size.height * 0.04367475);
    path.cubicTo(
        size.width * 0.5610400,
        size.height * 0.04364825,
        size.width * 0.5605342,
        size.height * 0.04385900,
        size.width * 0.5604169,
        size.height * 0.04416675);
    path.cubicTo(
        size.width * 0.5565444,
        size.height * 0.05431150,
        size.width * 0.5476480,
        size.height * 0.07761675,
        size.width * 0.5451862,
        size.height * 0.08406550);
    path.cubicTo(
        size.width * 0.5447676,
        size.height * 0.08516250,
        size.width * 0.5437942,
        size.height * 0.08616825,
        size.width * 0.5423840,
        size.height * 0.08696175);
    path.cubicTo(
        size.width * 0.5361076,
        size.height * 0.09049225,
        size.width * 0.5178360,
        size.height * 0.1007697,
        size.width * 0.5101258,
        size.height * 0.1051067);
    path.cubicTo(
        size.width * 0.5081942,
        size.height * 0.1061932,
        size.width * 0.5081942,
        size.height * 0.1079550,
        size.width * 0.5101258,
        size.height * 0.1090415);
    path.cubicTo(
        size.width * 0.5101533,
        size.height * 0.1090570,
        size.width * 0.5101809,
        size.height * 0.1090725,
        size.width * 0.5102084,
        size.height * 0.1090880);
    path.cubicTo(
        size.width * 0.5121404,
        size.height * 0.1101745,
        size.width * 0.5152720,
        size.height * 0.1101745,
        size.width * 0.5172036,
        size.height * 0.1090880);
    path.cubicTo(
        size.width * 0.5248911,
        size.height * 0.1047637,
        size.width * 0.5430764,
        size.height * 0.09453450,
        size.width * 0.5494053,
        size.height * 0.09097450);
    path.cubicTo(
        size.width * 0.5508511,
        size.height * 0.09016125,
        size.width * 0.5526924,
        size.height * 0.08960700,
        size.width * 0.5546969,
        size.height * 0.08938150);
    path.cubicTo(
        size.width * 0.5663978,
        size.height * 0.08806525,
        size.width * 0.6084013,
        size.height * 0.08333975,
        size.width * 0.6265676,
        size.height * 0.08129600);
    path.cubicTo(
        size.width * 0.6271160,
        size.height * 0.08123425,
        size.width * 0.6274978,
        size.height * 0.08095300,
        size.width * 0.6274591,
        size.height * 0.08063925);
    path.cubicTo(
        size.width * 0.6274204,
        size.height * 0.08032525,
        size.width * 0.6269729,
        size.height * 0.08007625,
        size.width * 0.6264147,
        size.height * 0.08005775);
    path.cubicTo(
        size.width * 0.6128044,
        size.height * 0.07960750,
        size.width * 0.5868262,
        size.height * 0.07874800,
        size.width * 0.5764524,
        size.height * 0.07840475);
    path.cubicTo(
        size.width * 0.5756676,
        size.height * 0.07837875,
        size.width * 0.5749827,
        size.height * 0.07809600,
        size.width * 0.5747031,
        size.height * 0.07768250);
    path.cubicTo(
        size.width * 0.5744236,
        size.height * 0.07726900,
        size.width * 0.5746013,
        size.height * 0.07680175,
        size.width * 0.5751578,
        size.height * 0.07648875);
    path.cubicTo(
        size.width * 0.5826289,
        size.height * 0.07228625,
        size.width * 0.6011267,
        size.height * 0.06188125,
        size.width * 0.6052360,
        size.height * 0.05956975);
    path.cubicTo(
        size.width * 0.6057702,
        size.height * 0.05926925,
        size.width * 0.6064431,
        size.height * 0.05905875,
        size.width * 0.6071787,
        size.height * 0.05896175);
    path.cubicTo(
        size.width * 0.6123142,
        size.height * 0.05828575,
        size.width * 0.6336369,
        size.height * 0.05547875,
        size.width * 0.6421356,
        size.height * 0.05435975);
    path.cubicTo(
        size.width * 0.6425089,
        size.height * 0.05431075,
        size.width * 0.6427720,
        size.height * 0.05412275,
        size.width * 0.6427698,
        size.height * 0.05390700);
    path.cubicTo(
        size.width * 0.6427671,
        size.height * 0.05369150,
        size.width * 0.6424996,
        size.height * 0.05350550,
        size.width * 0.6421253,
        size.height * 0.05345900);
    path.cubicTo(
        size.width * 0.6372040,
        size.height * 0.05284925,
        size.width * 0.6283680,
        size.height * 0.05175400,
        size.width * 0.6237671,
        size.height * 0.05118375);
    path.close();
    path.moveTo(size.width * 0.3483676, size.height * 0.09876900);
    path.cubicTo(
        size.width * 0.3474760,
        size.height * 0.09853250,
        size.width * 0.3467956,
        size.height * 0.09810100,
        size.width * 0.3464836,
        size.height * 0.09757500);
    path.cubicTo(
        size.width * 0.3448582,
        size.height * 0.09483250,
        size.width * 0.3395956,
        size.height * 0.08595125,
        size.width * 0.3371738,
        size.height * 0.08186425);
    path.cubicTo(
        size.width * 0.3369387,
        size.height * 0.08146775,
        size.width * 0.3371222,
        size.height * 0.08103075,
        size.width * 0.3376476,
        size.height * 0.08073525);
    path.cubicTo(
        size.width * 0.3381729,
        size.height * 0.08043975,
        size.width * 0.3389498,
        size.height * 0.08033675,
        size.width * 0.3396547,
        size.height * 0.08046875);
    path.cubicTo(
        size.width * 0.3469200,
        size.height * 0.08183100,
        size.width * 0.3627089,
        size.height * 0.08479150,
        size.width * 0.3675849,
        size.height * 0.08570575);
    path.cubicTo(
        size.width * 0.3685200,
        size.height * 0.08588100,
        size.width * 0.3692867,
        size.height * 0.08626400,
        size.width * 0.3697076,
        size.height * 0.08676550);
    path.cubicTo(
        size.width * 0.3724102,
        size.height * 0.08998875,
        size.width * 0.3827107,
        size.height * 0.1022717,
        size.width * 0.3869360,
        size.height * 0.1073102);
    path.cubicTo(
        size.width * 0.3872124,
        size.height * 0.1076400,
        size.width * 0.3870911,
        size.height * 0.1080317,
        size.width * 0.3866329,
        size.height * 0.1082895);
    path.cubicTo(
        size.width * 0.3861747,
        size.height * 0.1085475,
        size.width * 0.3854782,
        size.height * 0.1086155,
        size.width * 0.3848920,
        size.height * 0.1084600);
    path.cubicTo(
        size.width * 0.3759342,
        size.height * 0.1060832,
        size.width * 0.3540978,
        size.height * 0.1002895,
        size.width * 0.3483676,
        size.height * 0.09876900);
    path.close();
    path.moveTo(size.width * 0.4143187, size.height * 0.01520925);
    path.cubicTo(
        size.width * 0.4139084,
        size.height * 0.01546200,
        size.width * 0.4132862,
        size.height * 0.01556850,
        size.width * 0.4126951,
        size.height * 0.01548750);
    path.cubicTo(
        size.width * 0.4121044,
        size.height * 0.01540625,
        size.width * 0.4116391,
        size.height * 0.01515050,
        size.width * 0.4114818,
        size.height * 0.01482000);
    path.cubicTo(
        size.width * 0.4104818,
        size.height * 0.01272150,
        size.width * 0.4087449,
        size.height * 0.009075250,
        size.width * 0.4075640,
        size.height * 0.006595500);
    path.cubicTo(
        size.width * 0.4068747,
        size.height * 0.005148750,
        size.width * 0.4042311,
        size.height * 0.004290250,
        size.width * 0.4016591,
        size.height * 0.004678000);
    path.cubicTo(
        size.width * 0.4015409,
        size.height * 0.004695750,
        size.width * 0.4014227,
        size.height * 0.004713500,
        size.width * 0.4013049,
        size.height * 0.004731250);
    path.cubicTo(
        size.width * 0.3987329,
        size.height * 0.005119000,
        size.width * 0.3972062,
        size.height * 0.006606000,
        size.width * 0.3978956,
        size.height * 0.008052750);
    path.cubicTo(
        size.width * 0.3990649,
        size.height * 0.01050725,
        size.width * 0.4007787,
        size.height * 0.01410525,
        size.width * 0.4017827,
        size.height * 0.01621300);
    path.cubicTo(
        size.width * 0.4019427,
        size.height * 0.01654875,
        size.width * 0.4017591,
        size.height * 0.01690650,
        size.width * 0.4013058,
        size.height * 0.01714275);
    path.cubicTo(
        size.width * 0.4008524,
        size.height * 0.01737875,
        size.width * 0.4002044,
        size.height * 0.01745425,
        size.width * 0.3996218,
        size.height * 0.01733900);
    path.cubicTo(
        size.width * 0.3954173,
        size.height * 0.01650650,
        size.width * 0.3877547,
        size.height * 0.01498925,
        size.width * 0.3832622,
        size.height * 0.01409975);
    path.cubicTo(
        size.width * 0.3828982,
        size.height * 0.01402750,
        size.width * 0.3824942,
        size.height * 0.01410775,
        size.width * 0.3822911,
        size.height * 0.01429250);
    path.cubicTo(
        size.width * 0.3820884,
        size.height * 0.01447725,
        size.width * 0.3821413,
        size.height * 0.01471650,
        size.width * 0.3824187,
        size.height * 0.01486725);
    path.cubicTo(
        size.width * 0.3887156,
        size.height * 0.01829200,
        size.width * 0.4041129,
        size.height * 0.02666650,
        size.width * 0.4078569,
        size.height * 0.02870275);
    path.cubicTo(
        size.width * 0.4084000,
        size.height * 0.02899825,
        size.width * 0.4087853,
        size.height * 0.02937300,
        size.width * 0.4089702,
        size.height * 0.02978475);
    path.cubicTo(
        size.width * 0.4103902,
        size.height * 0.03295375,
        size.width * 0.4167853,
        size.height * 0.04722325,
        size.width * 0.4193689,
        size.height * 0.05298775);
    path.cubicTo(
        size.width * 0.4195613,
        size.height * 0.05341675,
        size.width * 0.4192880,
        size.height * 0.05386950,
        size.width * 0.4186707,
        size.height * 0.05414375);
    path.cubicTo(
        size.width * 0.4180533,
        size.height * 0.05441800,
        size.width * 0.4172076,
        size.height * 0.05446325,
        size.width * 0.4165098,
        size.height * 0.05425875);
    path.cubicTo(
        size.width * 0.4074449,
        size.height * 0.05160325,
        size.width * 0.3850027,
        size.height * 0.04502875,
        size.width * 0.3731004,
        size.height * 0.04154200);
    path.cubicTo(
        size.width * 0.3726040,
        size.height * 0.04139650,
        size.width * 0.3719929,
        size.height * 0.04148125,
        size.width * 0.3716733,
        size.height * 0.04173975);
    path.cubicTo(
        size.width * 0.3713538,
        size.height * 0.04199825,
        size.width * 0.3714253,
        size.height * 0.04235000,
        size.width * 0.3718404,
        size.height * 0.04256125);
    path.cubicTo(
        size.width * 0.3855231,
        size.height * 0.04952000,
        size.width * 0.4169560,
        size.height * 0.06550650,
        size.width * 0.4256533,
        size.height * 0.06993000);
    path.cubicTo(
        size.width * 0.4271329,
        size.height * 0.07068250,
        size.width * 0.4281947,
        size.height * 0.07165950,
        size.width * 0.4287111,
        size.height * 0.07274325);
    path.cubicTo(
        size.width * 0.4310084,
        size.height * 0.07756600,
        size.width * 0.4376960,
        size.height * 0.09160550,
        size.width * 0.4405182,
        size.height * 0.09752975);
    path.cubicTo(
        size.width * 0.4412253,
        size.height * 0.09901400,
        size.width * 0.4439373,
        size.height * 0.09989475,
        size.width * 0.4465760,
        size.height * 0.09949725);
    path.cubicTo(
        size.width * 0.4466138,
        size.height * 0.09949150,
        size.width * 0.4466516,
        size.height * 0.09948575,
        size.width * 0.4466893,
        size.height * 0.09948025);
    path.cubicTo(
        size.width * 0.4493276,
        size.height * 0.09908250,
        size.width * 0.4508938,
        size.height * 0.09755675,
        size.width * 0.4501867,
        size.height * 0.09607250);
    path.cubicTo(
        size.width * 0.4473729,
        size.height * 0.09016575,
        size.width * 0.4407164,
        size.height * 0.07619200,
        size.width * 0.4384000,
        size.height * 0.07132925);
    path.cubicTo(
        size.width * 0.4378707,
        size.height * 0.07021850,
        size.width * 0.4379382,
        size.height * 0.06904425,
        size.width * 0.4385933,
        size.height * 0.06795475);
    path.cubicTo(
        size.width * 0.4424169,
        size.height * 0.06159675,
        size.width * 0.4561436,
        size.height * 0.03877250,
        size.width * 0.4620800,
        size.height * 0.02890125);
    path.cubicTo(
        size.width * 0.4622596,
        size.height * 0.02860325,
        size.width * 0.4620173,
        size.height * 0.02827650,
        size.width * 0.4615147,
        size.height * 0.02813850);
    path.cubicTo(
        size.width * 0.4610116,
        size.height * 0.02800025,
        size.width * 0.4604049,
        size.height * 0.02809375,
        size.width * 0.4600973,
        size.height * 0.02835650);
    path.cubicTo(
        size.width * 0.4525987,
        size.height * 0.03476150,
        size.width * 0.4382862,
        size.height * 0.04698675,
        size.width * 0.4325711,
        size.height * 0.05186850);
    path.cubicTo(
        size.width * 0.4321382,
        size.height * 0.05223800,
        size.width * 0.4313609,
        size.height * 0.05243025,
        size.width * 0.4305844,
        size.height * 0.05235975);
    path.cubicTo(
        size.width * 0.4298080,
        size.height * 0.05228900,
        size.width * 0.4291773,
        size.height * 0.05196875,
        size.width * 0.4289738,
        size.height * 0.05154150);
    path.cubicTo(
        size.width * 0.4262391,
        size.height * 0.04580050,
        size.width * 0.4194684,
        size.height * 0.03158700,
        size.width * 0.4179644,
        size.height * 0.02842950);
    path.cubicTo(
        size.width * 0.4177689,
        size.height * 0.02801900,
        size.width * 0.4177813,
        size.height * 0.02758600,
        size.width * 0.4180000,
        size.height * 0.02717925);
    path.cubicTo(
        size.width * 0.4195267,
        size.height * 0.02433950,
        size.width * 0.4258662,
        size.height * 0.01254875,
        size.width * 0.4283933,
        size.height * 0.007849250);
    path.cubicTo(
        size.width * 0.4285040,
        size.height * 0.007642750,
        size.width * 0.4283462,
        size.height * 0.007420750,
        size.width * 0.4280133,
        size.height * 0.007314000);
    path.cubicTo(
        size.width * 0.4276800,
        size.height * 0.007207500,
        size.width * 0.4272600,
        size.height * 0.007244750,
        size.width * 0.4270013,
        size.height * 0.007404000);
    path.cubicTo(
        size.width * 0.4236013,
        size.height * 0.009496250,
        size.width * 0.4174973,
        size.height * 0.01325300,
        size.width * 0.4143187,
        size.height * 0.01520925);
    path.close();
    path.moveTo(size.width * 0.8002813, size.height * 0.09240750);
    path.cubicTo(
        size.width * 0.8006049,
        size.height * 0.09272250,
        size.width * 0.8013218,
        size.height * 0.09283075,
        size.width * 0.8018818,
        size.height * 0.09264875);
    path.lineTo(size.width * 0.8023893, size.height * 0.09248400);
    path.cubicTo(
        size.width * 0.8029489,
        size.height * 0.09230225,
        size.width * 0.8031413,
        size.height * 0.09189875,
        size.width * 0.8028178,
        size.height * 0.09158375);
    path.lineTo(size.width * 0.8002089, size.height * 0.08904200);
    path.cubicTo(
        size.width * 0.7998858,
        size.height * 0.08872700,
        size.width * 0.7991684,
        size.height * 0.08861875,
        size.width * 0.7986084,
        size.height * 0.08880075);
    path.lineTo(size.width * 0.7981013, size.height * 0.08896550);
    path.cubicTo(
        size.width * 0.7975413,
        size.height * 0.08914725,
        size.width * 0.7973493,
        size.height * 0.08955075,
        size.width * 0.7976724,
        size.height * 0.08986550);
    path.lineTo(size.width * 0.8002813, size.height * 0.09240750);
    path.close();
    path.moveTo(size.width * 0.7692716, size.height * 0.03896025);
    path.lineTo(size.width * 0.7766302, size.height * 0.03179075);
    path.cubicTo(
        size.width * 0.7767769,
        size.height * 0.03164825,
        size.width * 0.7765693,
        size.height * 0.02427650,
        size.width * 0.7764947,
        size.height * 0.02177850);
    path.cubicTo(
        size.width * 0.7764956,
        size.height * 0.02168425,
        size.width * 0.7766089,
        size.height * 0.02160200,
        size.width * 0.7767711,
        size.height * 0.02157825);
    path.cubicTo(
        size.width * 0.7769329,
        size.height * 0.02155450,
        size.width * 0.7771036,
        size.height * 0.02159525,
        size.width * 0.7771858,
        size.height * 0.02167725);
    path.cubicTo(
        size.width * 0.7786916,
        size.height * 0.02317825,
        size.width * 0.7820471,
        size.height * 0.02651350,
        size.width * 0.7820991,
        size.height * 0.02646250);
    path.lineTo(size.width * 0.7922547, size.height * 0.01656825);
    path.cubicTo(
        size.width * 0.7922649,
        size.height * 0.01655850,
        size.width * 0.7915680,
        size.height * 0.01059950,
        size.width * 0.7913484,
        size.height * 0.008728000);
    path.cubicTo(
        size.width * 0.7913444,
        size.height * 0.008678250,
        size.width * 0.7914036,
        size.height * 0.008634000,
        size.width * 0.7914893,
        size.height * 0.008622250);
    path.cubicTo(
        size.width * 0.7915751,
        size.height * 0.008610500,
        size.width * 0.7916636,
        size.height * 0.008634500,
        size.width * 0.7917004,
        size.height * 0.008679500);
    path.cubicTo(
        size.width * 0.7927156,
        size.height * 0.009910500,
        size.width * 0.7952938,
        size.height * 0.01303975,
        size.width * 0.7962196,
        size.height * 0.01416350);
    path.cubicTo(
        size.width * 0.7964222,
        size.height * 0.01440925,
        size.width * 0.7968773,
        size.height * 0.01455675,
        size.width * 0.7973569,
        size.height * 0.01453250);
    path.cubicTo(
        size.width * 0.7995489,
        size.height * 0.01442150,
        size.width * 0.8056524,
        size.height * 0.01411200,
        size.width * 0.8080542,
        size.height * 0.01399025);
    path.cubicTo(
        size.width * 0.8081427,
        size.height * 0.01398575,
        size.width * 0.8082240,
        size.height * 0.01401700,
        size.width * 0.8082489,
        size.height * 0.01406500);
    path.cubicTo(
        size.width * 0.8082738,
        size.height * 0.01411275,
        size.width * 0.8082347,
        size.height * 0.01416375,
        size.width * 0.8081564,
        size.height * 0.01418650);
    path.cubicTo(
        size.width * 0.8051658,
        size.height * 0.01501575,
        size.width * 0.7956471,
        size.height * 0.01765650,
        size.width * 0.7956369,
        size.height * 0.01766650);
    path.lineTo(size.width * 0.7854813, size.height * 0.02756100);
    path.cubicTo(
        size.width * 0.7854293,
        size.height * 0.02761150,
        size.width * 0.7922378,
        size.height * 0.02757750,
        size.width * 0.7953004,
        size.height * 0.02755975);
    path.cubicTo(
        size.width * 0.7954684,
        size.height * 0.02755875,
        size.width * 0.7956169,
        size.height * 0.02762150,
        size.width * 0.7956613,
        size.height * 0.02771275);
    path.cubicTo(
        size.width * 0.7957062,
        size.height * 0.02780375,
        size.width * 0.7956360,
        size.height * 0.02790050,
        size.width * 0.7954907,
        size.height * 0.02794825);
    path.cubicTo(
        size.width * 0.7916080,
        size.height * 0.02916075,
        size.width * 0.7801587,
        size.height * 0.03274650,
        size.width * 0.7800124,
        size.height * 0.03288925);
    path.lineTo(size.width * 0.7728080, size.height * 0.03990825);
    path.lineTo(size.width * 0.7901596, size.height * 0.04039375);
    path.lineTo(size.width * 0.7817791, size.height * 0.04958475);
    path.lineTo(size.width * 0.7968013, size.height * 0.04958475);
    path.cubicTo(
        size.width * 0.7970942,
        size.height * 0.04958475,
        size.width * 0.8083400,
        size.height * 0.04579800,
        size.width * 0.8121484,
        size.height * 0.04451250);
    path.cubicTo(
        size.width * 0.8122942,
        size.height * 0.04446575,
        size.width * 0.8124773,
        size.height * 0.04448000,
        size.width * 0.8125951,
        size.height * 0.04454700);
    path.cubicTo(
        size.width * 0.8127124,
        size.height * 0.04461425,
        size.width * 0.8127351,
        size.height * 0.04471750,
        size.width * 0.8126498,
        size.height * 0.04479850);
    path.cubicTo(
        size.width * 0.8110920,
        size.height * 0.04628275,
        size.width * 0.8076351,
        size.height * 0.04958475,
        size.width * 0.8077391,
        size.height * 0.04958475);
    path.lineTo(size.width * 0.8280502, size.height * 0.04958475);
    path.cubicTo(
        size.width * 0.8280702,
        size.height * 0.04958475,
        size.width * 0.8368964,
        size.height * 0.04626575,
        size.width * 0.8396684,
        size.height * 0.04522325);
    path.cubicTo(
        size.width * 0.8397427,
        size.height * 0.04519650,
        size.width * 0.8398404,
        size.height * 0.04520300,
        size.width * 0.8399013,
        size.height * 0.04523875);
    path.cubicTo(
        size.width * 0.8399622,
        size.height * 0.04527475,
        size.width * 0.8399698,
        size.height * 0.04533000,
        size.width * 0.8399187,
        size.height * 0.04537050);
    path.cubicTo(
        size.width * 0.8385311,
        size.height * 0.04648050,
        size.width * 0.8350022,
        size.height * 0.04930100,
        size.width * 0.8337351,
        size.height * 0.05031400);
    path.cubicTo(
        size.width * 0.8334582,
        size.height * 0.05053550,
        size.width * 0.8334582,
        size.height * 0.05083100,
        size.width * 0.8337356,
        size.height * 0.05105225);
    path.cubicTo(
        size.width * 0.8350027,
        size.height * 0.05206475,
        size.width * 0.8385307,
        size.height * 0.05488325,
        size.width * 0.8399191,
        size.height * 0.05599250);
    path.cubicTo(
        size.width * 0.8399702,
        size.height * 0.05603325,
        size.width * 0.8399627,
        size.height * 0.05608850,
        size.width * 0.8399013,
        size.height * 0.05612450);
    path.cubicTo(
        size.width * 0.8398400,
        size.height * 0.05616050,
        size.width * 0.8397422,
        size.height * 0.05616700,
        size.width * 0.8396676,
        size.height * 0.05614025);
    path.cubicTo(
        size.width * 0.8368956,
        size.height * 0.05509800,
        size.width * 0.8280707,
        size.height * 0.05178150,
        size.width * 0.8280502,
        size.height * 0.05178150);
    path.lineTo(size.width * 0.8077391, size.height * 0.05178150);
    path.cubicTo(
        size.width * 0.8076351,
        size.height * 0.05178150,
        size.width * 0.8110916,
        size.height * 0.05508125,
        size.width * 0.8126507,
        size.height * 0.05656425);
    path.cubicTo(
        size.width * 0.8127360,
        size.height * 0.05664550,
        size.width * 0.8127133,
        size.height * 0.05674925,
        size.width * 0.8125956,
        size.height * 0.05681650);
    path.cubicTo(
        size.width * 0.8124773,
        size.height * 0.05688375,
        size.width * 0.8122938,
        size.height * 0.05689800,
        size.width * 0.8121480,
        size.height * 0.05685125);
    path.cubicTo(
        size.width * 0.8083396,
        size.height * 0.05556600,
        size.width * 0.7970942,
        size.height * 0.05178150,
        size.width * 0.7968013,
        size.height * 0.05178150);
    path.lineTo(size.width * 0.7823747, size.height * 0.05178150);
    path.lineTo(size.width * 0.7901596, size.height * 0.06031950);
    path.lineTo(size.width * 0.7718187, size.height * 0.06083275);
    path.lineTo(size.width * 0.7794911, size.height * 0.06830800);
    path.cubicTo(
        size.width * 0.7796378,
        size.height * 0.06845050,
        size.width * 0.7910907,
        size.height * 0.07203525,
        size.width * 0.7949742,
        size.height * 0.07324800);
    path.cubicTo(
        size.width * 0.7951187,
        size.height * 0.07329550,
        size.width * 0.7951889,
        size.height * 0.07339175,
        size.width * 0.7951444,
        size.height * 0.07348275);
    path.cubicTo(
        size.width * 0.7950996,
        size.height * 0.07357350,
        size.width * 0.7949520,
        size.height * 0.07363625,
        size.width * 0.7947844,
        size.height * 0.07363525);
    path.cubicTo(
        size.width * 0.7917204,
        size.height * 0.07361850,
        size.width * 0.7849080,
        size.height * 0.07358550,
        size.width * 0.7849600,
        size.height * 0.07363625);
    path.lineTo(size.width * 0.7951156, size.height * 0.08353050);
    path.cubicTo(
        size.width * 0.7951258,
        size.height * 0.08354025,
        size.width * 0.8046484,
        size.height * 0.08618000,
        size.width * 0.8076396,
        size.height * 0.08700925);
    path.cubicTo(
        size.width * 0.8077182,
        size.height * 0.08703200,
        size.width * 0.8077569,
        size.height * 0.08708275,
        size.width * 0.8077324,
        size.height * 0.08713050);
    path.cubicTo(
        size.width * 0.8077076,
        size.height * 0.08717825,
        size.width * 0.8076262,
        size.height * 0.08720950,
        size.width * 0.8075382,
        size.height * 0.08720500);
    path.cubicTo(
        size.width * 0.8051356,
        size.height * 0.08708400,
        size.width * 0.7990289,
        size.height * 0.08677525,
        size.width * 0.7968356,
        size.height * 0.08666450);
    path.cubicTo(
        size.width * 0.7963560,
        size.height * 0.08664025,
        size.width * 0.7959013,
        size.height * 0.08678800,
        size.width * 0.7956987,
        size.height * 0.08703375);
    path.cubicTo(
        size.width * 0.7947738,
        size.height * 0.08815725,
        size.width * 0.7921987,
        size.height * 0.09128525,
        size.width * 0.7911849,
        size.height * 0.09251625);
    path.cubicTo(
        size.width * 0.7911476,
        size.height * 0.09256125,
        size.width * 0.7910587,
        size.height * 0.09258550,
        size.width * 0.7909729,
        size.height * 0.09257350);
    path.cubicTo(
        size.width * 0.7908867,
        size.height * 0.09256175,
        size.width * 0.7908276,
        size.height * 0.09251750,
        size.width * 0.7908316,
        size.height * 0.09246750);
    path.cubicTo(
        size.width * 0.7910502,
        size.height * 0.09059625,
        size.width * 0.7917440,
        size.height * 0.08463875,
        size.width * 0.7917338,
        size.height * 0.08462875);
    path.lineTo(size.width * 0.7815782, size.height * 0.07473450);
    path.cubicTo(
        size.width * 0.7815262,
        size.height * 0.07468375,
        size.width * 0.7781742,
        size.height * 0.07801750,
        size.width * 0.7766702,
        size.height * 0.07951825);
    path.cubicTo(
        size.width * 0.7765880,
        size.height * 0.07960075,
        size.width * 0.7764173,
        size.height * 0.07964150,
        size.width * 0.7762542,
        size.height * 0.07961775);
    path.cubicTo(
        size.width * 0.7760916,
        size.height * 0.07959400,
        size.width * 0.7759778,
        size.height * 0.07951150,
        size.width * 0.7759773,
        size.height * 0.07941700);
    path.cubicTo(
        size.width * 0.7760520,
        size.height * 0.07691925,
        size.width * 0.7762560,
        size.height * 0.06954900,
        size.width * 0.7761093,
        size.height * 0.06940625);
    path.lineTo(size.width * 0.7687342, size.height * 0.06222100);
    path.lineTo(size.width * 0.7594818, size.height * 0.07028250);
    path.lineTo(size.width * 0.7496916, size.height * 0.06175300);
    path.lineTo(size.width * 0.7420098, size.height * 0.06923700);
    path.cubicTo(
        size.width * 0.7418636,
        size.height * 0.06937975,
        size.width * 0.7420711,
        size.height * 0.07675150,
        size.width * 0.7421458,
        size.height * 0.07924950);
    path.cubicTo(
        size.width * 0.7421449,
        size.height * 0.07934375,
        size.width * 0.7420316,
        size.height * 0.07942575,
        size.width * 0.7418693,
        size.height * 0.07944950);
    path.cubicTo(
        size.width * 0.7417071,
        size.height * 0.07947325,
        size.width * 0.7415369,
        size.height * 0.07943275,
        size.width * 0.7414547,
        size.height * 0.07935050);
    path.cubicTo(
        size.width * 0.7399484,
        size.height * 0.07784975,
        size.width * 0.7365933,
        size.height * 0.07451450,
        size.width * 0.7365413,
        size.height * 0.07456525);
    path.lineTo(size.width * 0.7263858, size.height * 0.08445950);
    path.cubicTo(
        size.width * 0.7263756,
        size.height * 0.08446950,
        size.width * 0.7270724,
        size.height * 0.09042825,
        size.width * 0.7272920,
        size.height * 0.09230000);
    path.cubicTo(
        size.width * 0.7272960,
        size.height * 0.09234950,
        size.width * 0.7272369,
        size.height * 0.09239375,
        size.width * 0.7271511,
        size.height * 0.09240575);
    path.cubicTo(
        size.width * 0.7270653,
        size.height * 0.09241750,
        size.width * 0.7269769,
        size.height * 0.09239350,
        size.width * 0.7269396,
        size.height * 0.09234850);
    path.cubicTo(
        size.width * 0.7259249,
        size.height * 0.09111725,
        size.width * 0.7233467,
        size.height * 0.08798825,
        size.width * 0.7224204,
        size.height * 0.08686450);
    path.cubicTo(
        size.width * 0.7222182,
        size.height * 0.08661875,
        size.width * 0.7217631,
        size.height * 0.08647100,
        size.width * 0.7212836,
        size.height * 0.08649525);
    path.cubicTo(
        size.width * 0.7190916,
        size.height * 0.08660650,
        size.width * 0.7129880,
        size.height * 0.08691575,
        size.width * 0.7105858,
        size.height * 0.08703750);
    path.cubicTo(
        size.width * 0.7104978,
        size.height * 0.08704200,
        size.width * 0.7104164,
        size.height * 0.08701075,
        size.width * 0.7103916,
        size.height * 0.08696300);
    path.cubicTo(
        size.width * 0.7103667,
        size.height * 0.08691525,
        size.width * 0.7104053,
        size.height * 0.08686425,
        size.width * 0.7104840,
        size.height * 0.08684125);
    path.cubicTo(
        size.width * 0.7134747,
        size.height * 0.08601225,
        size.width * 0.7229933,
        size.height * 0.08337125,
        size.width * 0.7230036,
        size.height * 0.08336125);
    path.lineTo(size.width * 0.7331591, size.height * 0.07346700);
    path.cubicTo(
        size.width * 0.7332111,
        size.height * 0.07341625,
        size.width * 0.7264027,
        size.height * 0.07345025,
        size.width * 0.7233400,
        size.height * 0.07346825);
    path.cubicTo(
        size.width * 0.7231720,
        size.height * 0.07346900,
        size.width * 0.7230236,
        size.height * 0.07340625,
        size.width * 0.7229791,
        size.height * 0.07331525);
    path.cubicTo(
        size.width * 0.7229342,
        size.height * 0.07322400,
        size.width * 0.7230044,
        size.height * 0.07312725,
        size.width * 0.7231493,
        size.height * 0.07307975);
    path.cubicTo(
        size.width * 0.7270324,
        size.height * 0.07186725,
        size.width * 0.7384818,
        size.height * 0.06828150,
        size.width * 0.7386280,
        size.height * 0.06813875);
    path.lineTo(size.width * 0.7461556, size.height * 0.06080500);
    path.lineTo(size.width * 0.7288036, size.height * 0.06031950);
    path.lineTo(size.width * 0.7368973, size.height * 0.05144300);
    path.lineTo(size.width * 0.7218391, size.height * 0.05144300);
    path.cubicTo(
        size.width * 0.7215462,
        size.height * 0.05144300,
        size.width * 0.7103004,
        size.height * 0.05523000,
        size.width * 0.7064920,
        size.height * 0.05651525);
    path.cubicTo(
        size.width * 0.7063462,
        size.height * 0.05656200,
        size.width * 0.7061631,
        size.height * 0.05654800,
        size.width * 0.7060453,
        size.height * 0.05648075);
    path.cubicTo(
        size.width * 0.7059280,
        size.height * 0.05641375,
        size.width * 0.7059053,
        size.height * 0.05631050,
        size.width * 0.7059907,
        size.height * 0.05622925);
    path.cubicTo(
        size.width * 0.7075484,
        size.height * 0.05474525,
        size.width * 0.7110053,
        size.height * 0.05144300,
        size.width * 0.7109013,
        size.height * 0.05144300);
    path.lineTo(size.width * 0.6905902, size.height * 0.05144300);
    path.cubicTo(
        size.width * 0.6905702,
        size.height * 0.05144300,
        size.width * 0.6817440,
        size.height * 0.05476200,
        size.width * 0.6789720,
        size.height * 0.05580475);
    path.cubicTo(
        size.width * 0.6788978,
        size.height * 0.05583150,
        size.width * 0.6788000,
        size.height * 0.05582500,
        size.width * 0.6787391,
        size.height * 0.05578900);
    path.cubicTo(
        size.width * 0.6786782,
        size.height * 0.05575325,
        size.width * 0.6786707,
        size.height * 0.05569800,
        size.width * 0.6787213,
        size.height * 0.05565750);
    path.cubicTo(
        size.width * 0.6801093,
        size.height * 0.05454725,
        size.width * 0.6836378,
        size.height * 0.05172675,
        size.width * 0.6849053,
        size.height * 0.05071400);
    path.cubicTo(
        size.width * 0.6851822,
        size.height * 0.05049250,
        size.width * 0.6851822,
        size.height * 0.05019700,
        size.width * 0.6849049,
        size.height * 0.04997550);
    path.cubicTo(
        size.width * 0.6836378,
        size.height * 0.04896325,
        size.width * 0.6801098,
        size.height * 0.04614475,
        size.width * 0.6787213,
        size.height * 0.04503550);
    path.cubicTo(
        size.width * 0.6786702,
        size.height * 0.04499475,
        size.width * 0.6786778,
        size.height * 0.04493950,
        size.width * 0.6787387,
        size.height * 0.04490350);
    path.cubicTo(
        size.width * 0.6788000,
        size.height * 0.04486750,
        size.width * 0.6788978,
        size.height * 0.04486075,
        size.width * 0.6789724,
        size.height * 0.04488775);
    path.cubicTo(
        size.width * 0.6817444,
        size.height * 0.04592975,
        size.width * 0.6905698,
        size.height * 0.04924650,
        size.width * 0.6905902,
        size.height * 0.04924650);
    path.lineTo(size.width * 0.7109013, size.height * 0.04924650);
    path.cubicTo(
        size.width * 0.7110053,
        size.height * 0.04924650,
        size.width * 0.7075489,
        size.height * 0.04594675,
        size.width * 0.7059898,
        size.height * 0.04446375);
    path.cubicTo(
        size.width * 0.7059044,
        size.height * 0.04438225,
        size.width * 0.7059267,
        size.height * 0.04427875,
        size.width * 0.7060449,
        size.height * 0.04421125);
    path.cubicTo(
        size.width * 0.7061627,
        size.height * 0.04414400,
        size.width * 0.7063467,
        size.height * 0.04412975,
        size.width * 0.7064924,
        size.height * 0.04417675);
    path.cubicTo(
        size.width * 0.7103009,
        size.height * 0.04546200,
        size.width * 0.7215458,
        size.height * 0.04924650,
        size.width * 0.7218391,
        size.height * 0.04924650);
    path.lineTo(size.width * 0.7368756, size.height * 0.04924650);
    path.lineTo(size.width * 0.7288036, size.height * 0.04039375);
    path.lineTo(size.width * 0.7465169, size.height * 0.03989800);
    path.lineTo(size.width * 0.7391493, size.height * 0.03272000);
    path.cubicTo(
        size.width * 0.7390027,
        size.height * 0.03257725,
        size.width * 0.7275493,
        size.height * 0.02899250,
        size.width * 0.7236662,
        size.height * 0.02777975);
    path.cubicTo(
        size.width * 0.7235213,
        size.height * 0.02773225,
        size.width * 0.7234516,
        size.height * 0.02763600,
        size.width * 0.7234964,
        size.height * 0.02754525);
    path.cubicTo(
        size.width * 0.7235409,
        size.height * 0.02745425,
        size.width * 0.7236884,
        size.height * 0.02739175,
        size.width * 0.7238560,
        size.height * 0.02739275);
    path.cubicTo(
        size.width * 0.7269200,
        size.height * 0.02740950,
        size.width * 0.7337324,
        size.height * 0.02744250,
        size.width * 0.7336804,
        size.height * 0.02739175);
    path.lineTo(size.width * 0.7235249, size.height * 0.01749750);
    path.cubicTo(
        size.width * 0.7235147,
        size.height * 0.01748750,
        size.width * 0.7139916,
        size.height * 0.01484775,
        size.width * 0.7110004,
        size.height * 0.01401850);
    path.cubicTo(
        size.width * 0.7109222,
        size.height * 0.01399575,
        size.width * 0.7108836,
        size.height * 0.01394500,
        size.width * 0.7109080,
        size.height * 0.01389725);
    path.cubicTo(
        size.width * 0.7109329,
        size.height * 0.01384950,
        size.width * 0.7110142,
        size.height * 0.01381850,
        size.width * 0.7111022,
        size.height * 0.01382300);
    path.cubicTo(
        size.width * 0.7135049,
        size.height * 0.01394400,
        size.width * 0.7196116,
        size.height * 0.01425275,
        size.width * 0.7218049,
        size.height * 0.01436350);
    path.cubicTo(
        size.width * 0.7222844,
        size.height * 0.01438775,
        size.width * 0.7227391,
        size.height * 0.01424000,
        size.width * 0.7229413,
        size.height * 0.01399425);
    path.cubicTo(
        size.width * 0.7238667,
        size.height * 0.01287075,
        size.width * 0.7264418,
        size.height * 0.009742750,
        size.width * 0.7274556,
        size.height * 0.008511750);
    path.cubicTo(
        size.width * 0.7274929,
        size.height * 0.008466500,
        size.width * 0.7275818,
        size.height * 0.008442500,
        size.width * 0.7276676,
        size.height * 0.008454500);
    path.cubicTo(
        size.width * 0.7277533,
        size.height * 0.008466250,
        size.width * 0.7278124,
        size.height * 0.008510750,
        size.width * 0.7278084,
        size.height * 0.008560500);
    path.cubicTo(
        size.width * 0.7275898,
        size.height * 0.01043175,
        size.width * 0.7268964,
        size.height * 0.01638900,
        size.width * 0.7269067,
        size.height * 0.01639900);
    path.lineTo(size.width * 0.7370622, size.height * 0.02629350);
    path.cubicTo(
        size.width * 0.7371142,
        size.height * 0.02634400,
        size.width * 0.7404662,
        size.height * 0.02301050,
        size.width * 0.7419702,
        size.height * 0.02150950);
    path.cubicTo(
        size.width * 0.7420524,
        size.height * 0.02142725,
        size.width * 0.7422236,
        size.height * 0.02138625,
        size.width * 0.7423858,
        size.height * 0.02141025);
    path.cubicTo(
        size.width * 0.7425484,
        size.height * 0.02143400,
        size.width * 0.7426622,
        size.height * 0.02151650,
        size.width * 0.7426631,
        size.height * 0.02161100);
    path.cubicTo(
        size.width * 0.7425884,
        size.height * 0.02410875,
        size.width * 0.7423844,
        size.height * 0.03147875,
        size.width * 0.7425311,
        size.height * 0.03162150);
    path.lineTo(size.width * 0.7498880, size.height * 0.03878925);
    path.lineTo(size.width * 0.7594818, size.height * 0.03043075);
    path.lineTo(size.width * 0.7692716, size.height * 0.03896025);
    path.close();
    path.moveTo(size.width * 0.7153013, size.height * 0.09141475);
    path.cubicTo(
        size.width * 0.7149782,
        size.height * 0.09172950,
        size.width * 0.7151702,
        size.height * 0.09213300,
        size.width * 0.7157302,
        size.height * 0.09231475);
    path.lineTo(size.width * 0.7162373, size.height * 0.09247950);
    path.cubicTo(
        size.width * 0.7167973,
        size.height * 0.09266150,
        size.width * 0.7175147,
        size.height * 0.09255325,
        size.width * 0.7178378,
        size.height * 0.09223825);
    path.lineTo(size.width * 0.7204467, size.height * 0.08969650);
    path.cubicTo(
        size.width * 0.7207702,
        size.height * 0.08938150,
        size.width * 0.7205782,
        size.height * 0.08897800,
        size.width * 0.7200182,
        size.height * 0.08879625);
    path.lineTo(size.width * 0.7195107, size.height * 0.08863150);
    path.cubicTo(
        size.width * 0.7189507,
        size.height * 0.08844950,
        size.width * 0.7182338,
        size.height * 0.08855775,
        size.width * 0.7179102,
        size.height * 0.08887275);
    path.lineTo(size.width * 0.7153013, size.height * 0.09141475);
    path.close();
    path.moveTo(size.width * 0.3988427, size.height * 0.07037675);
    path.cubicTo(
        size.width * 0.3984222,
        size.height * 0.06987525,
        size.width * 0.3976551,
        size.height * 0.06949250,
        size.width * 0.3967200,
        size.height * 0.06931700);
    path.cubicTo(
        size.width * 0.3918444,
        size.height * 0.06840275,
        size.width * 0.3760556,
        size.height * 0.06544250,
        size.width * 0.3687898,
        size.height * 0.06408025);
    path.cubicTo(
        size.width * 0.3680849,
        size.height * 0.06394800,
        size.width * 0.3673080,
        size.height * 0.06405125,
        size.width * 0.3667827,
        size.height * 0.06434675);
    path.cubicTo(
        size.width * 0.3662573,
        size.height * 0.06464225,
        size.width * 0.3660738,
        size.height * 0.06507925,
        size.width * 0.3663089,
        size.height * 0.06547575);
    path.cubicTo(
        size.width * 0.3687307,
        size.height * 0.06956250,
        size.width * 0.3739938,
        size.height * 0.07844375,
        size.width * 0.3756191,
        size.height * 0.08118650);
    path.cubicTo(
        size.width * 0.3759307,
        size.height * 0.08171250,
        size.width * 0.3766116,
        size.height * 0.08214400,
        size.width * 0.3775031,
        size.height * 0.08238050);
    path.cubicTo(
        size.width * 0.3832333,
        size.height * 0.08390075,
        size.width * 0.4050698,
        size.height * 0.08969475,
        size.width * 0.4140271,
        size.height * 0.09207150);
    path.cubicTo(
        size.width * 0.4146133,
        size.height * 0.09222700,
        size.width * 0.4153098,
        size.height * 0.09215875,
        size.width * 0.4157680,
        size.height * 0.09190100);
    path.cubicTo(
        size.width * 0.4162262,
        size.height * 0.09164325,
        size.width * 0.4163476,
        size.height * 0.09125150,
        size.width * 0.4160711,
        size.height * 0.09092175);
    path.cubicTo(
        size.width * 0.4118458,
        size.height * 0.08588325,
        size.width * 0.4015458,
        size.height * 0.07360000,
        size.width * 0.3988427,
        size.height * 0.07037675);
    path.close();
    path.moveTo(size.width * 0.5310929, size.height * 0.07122850);
    path.cubicTo(
        size.width * 0.5316547,
        size.height * 0.07077275,
        size.width * 0.5318609,
        size.height * 0.07020775,
        size.width * 0.5316631,
        size.height * 0.06966450);
    path.cubicTo(
        size.width * 0.5306329,
        size.height * 0.06683225,
        size.width * 0.5272964,
        size.height * 0.05766075,
        size.width * 0.5257609,
        size.height * 0.05344025);
    path.cubicTo(
        size.width * 0.5256120,
        size.height * 0.05303075,
        size.width * 0.5250644,
        size.height * 0.05270375,
        size.width * 0.5243471,
        size.height * 0.05259575);
    path.cubicTo(
        size.width * 0.5236293,
        size.height * 0.05248750,
        size.width * 0.5228649,
        size.height * 0.05261675,
        size.width * 0.5223720,
        size.height * 0.05292925);
    path.cubicTo(
        size.width * 0.5172907,
        size.height * 0.05615250,
        size.width * 0.5062484,
        size.height * 0.06315700,
        size.width * 0.5028387,
        size.height * 0.06532000);
    path.cubicTo(
        size.width * 0.5021844,
        size.height * 0.06573500,
        size.width * 0.5018609,
        size.height * 0.06628225,
        size.width * 0.5019422,
        size.height * 0.06683475);
    path.cubicTo(
        size.width * 0.5024667,
        size.height * 0.07038650,
        size.width * 0.5044644,
        size.height * 0.08392075,
        size.width * 0.5052840,
        size.height * 0.08947275);
    path.cubicTo(
        size.width * 0.5053378,
        size.height * 0.08983600,
        size.width * 0.5057911,
        size.height * 0.09014125,
        size.width * 0.5064169,
        size.height * 0.09023550);
    path.cubicTo(
        size.width * 0.5070431,
        size.height * 0.09033000,
        size.width * 0.5077067,
        size.height * 0.09019300,
        size.width * 0.5080760,
        size.height * 0.08989350);
    path.cubicTo(
        size.width * 0.5137209,
        size.height * 0.08531600,
        size.width * 0.5274818,
        size.height * 0.07415675,
        size.width * 0.5310929,
        size.height * 0.07122850);
    path.close();
    path.moveTo(size.width * 0.4621427, size.height * 0.06083625);
    path.cubicTo(
        size.width * 0.4620613,
        size.height * 0.06028350,
        size.width * 0.4623849,
        size.height * 0.05973625,
        size.width * 0.4630391,
        size.height * 0.05932150);
    path.cubicTo(
        size.width * 0.4664489,
        size.height * 0.05715825,
        size.width * 0.4774911,
        size.height * 0.05015400,
        size.width * 0.4825724,
        size.height * 0.04693075);
    path.cubicTo(
        size.width * 0.4830653,
        size.height * 0.04661800,
        size.width * 0.4838298,
        size.height * 0.04648900,
        size.width * 0.4845476,
        size.height * 0.04659700);
    path.cubicTo(
        size.width * 0.4852649,
        size.height * 0.04670525,
        size.width * 0.4858124,
        size.height * 0.04703200,
        size.width * 0.4859613,
        size.height * 0.04744150);
    path.cubicTo(
        size.width * 0.4874964,
        size.height * 0.05166200,
        size.width * 0.4908333,
        size.height * 0.06083350,
        size.width * 0.4918636,
        size.height * 0.06366600);
    path.cubicTo(
        size.width * 0.4920613,
        size.height * 0.06420925,
        size.width * 0.4918551,
        size.height * 0.06477425,
        size.width * 0.4912933,
        size.height * 0.06522975);
    path.cubicTo(
        size.width * 0.4876822,
        size.height * 0.06815825,
        size.width * 0.4739213,
        size.height * 0.07931725,
        size.width * 0.4682764,
        size.height * 0.08389500);
    path.cubicTo(
        size.width * 0.4679071,
        size.height * 0.08419450,
        size.width * 0.4672436,
        size.height * 0.08433125,
        size.width * 0.4666173,
        size.height * 0.08423700);
    path.cubicTo(
        size.width * 0.4659916,
        size.height * 0.08414250,
        size.width * 0.4655382,
        size.height * 0.08383725,
        size.width * 0.4654844,
        size.height * 0.08347400);
    path.cubicTo(
        size.width * 0.4646649,
        size.height * 0.07792225,
        size.width * 0.4626671,
        size.height * 0.06438775,
        size.width * 0.4621427,
        size.height * 0.06083625);
    path.close();
    path.moveTo(size.width * 0.2914289, size.height * 0.07444475);
    path.cubicTo(
        size.width * 0.2924951,
        size.height * 0.07444475,
        size.width * 0.2933613,
        size.height * 0.07395750,
        size.width * 0.2933613,
        size.height * 0.07335775);
    path.lineTo(size.width * 0.2933613, size.height * 0.07281425);
    path.cubicTo(
        size.width * 0.2933613,
        size.height * 0.07221425,
        size.width * 0.2924951,
        size.height * 0.07172725,
        size.width * 0.2914289,
        size.height * 0.07172725);
    path.lineTo(size.width * 0.2828218, size.height * 0.07172725);
    path.cubicTo(
        size.width * 0.2817556,
        size.height * 0.07172725,
        size.width * 0.2808893,
        size.height * 0.07221425,
        size.width * 0.2808893,
        size.height * 0.07281425);
    path.lineTo(size.width * 0.2808893, size.height * 0.07335775);
    path.cubicTo(
        size.width * 0.2808893,
        size.height * 0.07395750,
        size.width * 0.2817556,
        size.height * 0.07444475,
        size.width * 0.2828218,
        size.height * 0.07444475);
    path.lineTo(size.width * 0.2914289, size.height * 0.07444475);
    path.close();
    path.moveTo(size.width * 0.01109378, size.height * 0.07116900);
    path.cubicTo(
        size.width * 0.01002756,
        size.height * 0.07116900,
        size.width * 0.009161333,
        size.height * 0.07165600,
        size.width * 0.009161333,
        size.height * 0.07225600);
    path.lineTo(size.width * 0.009161333, size.height * 0.07279950);
    path.cubicTo(
        size.width * 0.009161333,
        size.height * 0.07339925,
        size.width * 0.01002756,
        size.height * 0.07388650,
        size.width * 0.01109378,
        size.height * 0.07388650);
    path.lineTo(size.width * 0.01970089, size.height * 0.07388650);
    path.cubicTo(
        size.width * 0.02076711,
        size.height * 0.07388650,
        size.width * 0.02163333,
        size.height * 0.07339925,
        size.width * 0.02163333,
        size.height * 0.07279950);
    path.lineTo(size.width * 0.02163333, size.height * 0.07225600);
    path.cubicTo(
        size.width * 0.02163333,
        size.height * 0.07165600,
        size.width * 0.02076711,
        size.height * 0.07116900,
        size.width * 0.01970089,
        size.height * 0.07116900);
    path.lineTo(size.width * 0.01109378, size.height * 0.07116900);
    path.close();
    path.moveTo(size.width * 0.8443027, size.height * 0.05150700);
    path.cubicTo(
        size.width * 0.8449493,
        size.height * 0.05150700,
        size.width * 0.8454742,
        size.height * 0.05121150,
        size.width * 0.8454742,
        size.height * 0.05084800);
    path.lineTo(size.width * 0.8454742, size.height * 0.05051850);
    path.cubicTo(
        size.width * 0.8454742,
        size.height * 0.05015475,
        size.width * 0.8449493,
        size.height * 0.04985950,
        size.width * 0.8443027,
        size.height * 0.04985950);
    path.lineTo(size.width * 0.8390844, size.height * 0.04985950);
    path.cubicTo(
        size.width * 0.8384378,
        size.height * 0.04985950,
        size.width * 0.8379129,
        size.height * 0.05015475,
        size.width * 0.8379129,
        size.height * 0.05051850);
    path.lineTo(size.width * 0.8379129, size.height * 0.05084800);
    path.cubicTo(
        size.width * 0.8379129,
        size.height * 0.05121150,
        size.width * 0.8384378,
        size.height * 0.05150700,
        size.width * 0.8390844,
        size.height * 0.05150700);
    path.lineTo(size.width * 0.8443027, size.height * 0.05150700);
    path.close();
    path.moveTo(size.width * 0.6743422, size.height * 0.04952100);
    path.cubicTo(
        size.width * 0.6736956,
        size.height * 0.04952100,
        size.width * 0.6731707,
        size.height * 0.04981625,
        size.width * 0.6731707,
        size.height * 0.05018000);
    path.lineTo(size.width * 0.6731707, size.height * 0.05050950);
    path.cubicTo(
        size.width * 0.6731707,
        size.height * 0.05087325,
        size.width * 0.6736956,
        size.height * 0.05116850,
        size.width * 0.6743422,
        size.height * 0.05116850);
    path.lineTo(size.width * 0.6795604, size.height * 0.05116850);
    path.cubicTo(
        size.width * 0.6802071,
        size.height * 0.05116850,
        size.width * 0.6807320,
        size.height * 0.05087325,
        size.width * 0.6807320,
        size.height * 0.05050950);
    path.lineTo(size.width * 0.6807320, size.height * 0.05018000);
    path.cubicTo(
        size.width * 0.6807320,
        size.height * 0.04981625,
        size.width * 0.6802071,
        size.height * 0.04952100,
        size.width * 0.6795604,
        size.height * 0.04952100);
    path.lineTo(size.width * 0.6743422, size.height * 0.04952100);
    path.close();
    path.moveTo(size.width * 0.8033413, size.height * 0.009613250);
    path.cubicTo(
        size.width * 0.8036644,
        size.height * 0.009298250,
        size.width * 0.8034724,
        size.height * 0.008895000,
        size.width * 0.8029124,
        size.height * 0.008713000);
    path.lineTo(size.width * 0.8024053, size.height * 0.008548250);
    path.cubicTo(
        size.width * 0.8018453,
        size.height * 0.008366500,
        size.width * 0.8011280,
        size.height * 0.008474500,
        size.width * 0.8008049,
        size.height * 0.008789500);
    path.lineTo(size.width * 0.7981956, size.height * 0.01133150);
    path.cubicTo(
        size.width * 0.7978724,
        size.height * 0.01164650,
        size.width * 0.7980644,
        size.height * 0.01204975,
        size.width * 0.7986244,
        size.height * 0.01223175);
    path.lineTo(size.width * 0.7991320, size.height * 0.01239650);
    path.cubicTo(
        size.width * 0.7996920,
        size.height * 0.01257825,
        size.width * 0.8004089,
        size.height * 0.01247025,
        size.width * 0.8007320,
        size.height * 0.01215525);
    path.lineTo(size.width * 0.8033413, size.height * 0.009613250);
    path.close();
    path.moveTo(size.width * 0.7183609, size.height * 0.008620250);
    path.cubicTo(
        size.width * 0.7180378,
        size.height * 0.008305250,
        size.width * 0.7173209,
        size.height * 0.008197250,
        size.width * 0.7167609,
        size.height * 0.008379000);
    path.lineTo(size.width * 0.7162533, size.height * 0.008543750);
    path.cubicTo(
        size.width * 0.7156933,
        size.height * 0.008725750,
        size.width * 0.7155013,
        size.height * 0.009129000,
        size.width * 0.7158244,
        size.height * 0.009444000);
    path.lineTo(size.width * 0.7184338, size.height * 0.01198600);
    path.cubicTo(
        size.width * 0.7187569,
        size.height * 0.01230100,
        size.width * 0.7194742,
        size.height * 0.01240900,
        size.width * 0.7200342,
        size.height * 0.01222725);
    path.lineTo(size.width * 0.7205413, size.height * 0.01206250);
    path.cubicTo(
        size.width * 0.7211013,
        size.height * 0.01188050,
        size.width * 0.7212933,
        size.height * 0.01147725,
        size.width * 0.7209702,
        size.height * 0.01116225);
    path.lineTo(size.width * 0.7183609, size.height * 0.008620250);
    path.close();
    path.moveTo(size.width * 0.2238676, size.height * 0.005344750);
    path.cubicTo(
        size.width * 0.2244009,
        size.height * 0.004825000,
        size.width * 0.2240840,
        size.height * 0.004159750,
        size.width * 0.2231604,
        size.height * 0.003859750);
    path.lineTo(size.width * 0.2223236, size.height * 0.003588000);
    path.cubicTo(
        size.width * 0.2214000,
        size.height * 0.003288250,
        size.width * 0.2202173,
        size.height * 0.003466500,
        size.width * 0.2196840,
        size.height * 0.003986000);
    path.lineTo(size.width * 0.2153804, size.height * 0.008178750);
    path.cubicTo(
        size.width * 0.2148471,
        size.height * 0.008698250,
        size.width * 0.2151640,
        size.height * 0.009363500,
        size.width * 0.2160876,
        size.height * 0.009663500);
    path.lineTo(size.width * 0.2169244, size.height * 0.009935250);
    path.cubicTo(
        size.width * 0.2178480,
        size.height * 0.01023525,
        size.width * 0.2190307,
        size.height * 0.01005700,
        size.width * 0.2195640,
        size.height * 0.009537500);
    path.lineTo(size.width * 0.2238676, size.height * 0.005344750);
    path.close();
    path.moveTo(size.width * 0.08370000, size.height * 0.003706750);
    path.cubicTo(
        size.width * 0.08316667,
        size.height * 0.003187250,
        size.width * 0.08198400,
        size.height * 0.003009000,
        size.width * 0.08106044,
        size.height * 0.003309000);
    path.lineTo(size.width * 0.08022356, size.height * 0.003580750);
    path.cubicTo(
        size.width * 0.07930000,
        size.height * 0.003880750,
        size.width * 0.07898311,
        size.height * 0.004546000,
        size.width * 0.07951644,
        size.height * 0.005065500);
    path.lineTo(size.width * 0.08382000, size.height * 0.009258250);
    path.cubicTo(
        size.width * 0.08435333,
        size.height * 0.009777750,
        size.width * 0.08553600,
        size.height * 0.009956000,
        size.width * 0.08645956,
        size.height * 0.009656250);
    path.lineTo(size.width * 0.08729644, size.height * 0.009384500);
    path.cubicTo(
        size.width * 0.08822000,
        size.height * 0.009084500,
        size.width * 0.08853689,
        size.height * 0.008419250,
        size.width * 0.08800356,
        size.height * 0.007899500);
    path.lineTo(size.width * 0.08370000, size.height * 0.003706750);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
