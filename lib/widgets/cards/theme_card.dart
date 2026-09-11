import 'package:flutter/material.dart';
import '../../models/theme_model/theme_model.dart';
import '../../utils/dimensions/size_info.dart';

class ThemeCard extends StatelessWidget {
  const ThemeCard({
    super.key,
    required this.themeData,
    required this.onChangeTheme,
  });

  final ThemeModel? themeData;
  final Function()? onChangeTheme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onChangeTheme,
        child: Card(
          color: Colors.transparent,
          shadowColor: Theme.of(context).shadowColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius))
          ),
          child: ClipRRect(
            borderRadius:  BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius)),
            child: Image.asset(
              'assets/images/${themeData!.imgThemePath}',
              fit: BoxFit.contain,
            ),
            // Stack(
            //   alignment: Alignment.bottomRight,
            //     children: [
            //   Image.asset(
            //     'assets/images/${themeData!.imgThemePath}',
            //     fit: BoxFit.contain,
            //   ),
            //   Container(
            //     margin: const EdgeInsets.all(5.0),
            //     height: themeIndicatorBtnSize,
            //     width: themeIndicatorBtnSize,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius)/ 2),
            //       color: themeData!.themeData!.indicatorColor,
            //     ),
            //     child: Icon(Icons.add,size: indicatorIconSize,color: themeData!.themeData!.colorScheme.primary,),
            //   ),
            // ]),
          ),
        ));
  }
}
