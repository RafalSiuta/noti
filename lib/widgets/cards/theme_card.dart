import 'package:flutter/material.dart';

import '../../models/theme_model/theme_model.dart';
import '../../utils/dimensions/size_info.dart';

class ThemeCard extends StatelessWidget {
  const ThemeCard({
    Key? key,
    required this.themeData,
    required this.onChangeTheme,
  }) : super(key: key);

  final ThemeModel? themeData;
  final Function()? onChangeTheme;

  @override
  Widget build(BuildContext context) {
    var indicatorIconSize = SizeInfo.smallIndicatorIconSize;
    return GestureDetector(
        onTap: onChangeTheme,
        child: Card(
          color: Colors.transparent,
          shadowColor: Theme.of(context).shadowColor,
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Stack(children: [
            Image.asset(
              'assets/images/${themeData!.imgThemePath}',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  themeData!.title,
                  style: themeData!.themeData!.textTheme.headlineMedium!
                      .copyWith(fontSize: indicatorIconSize),
                ),
              ),
            ),
          ]),
        ));
  }
}
