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
    var indicatorIconSize = SizeInfo.smallIndicatorIconSize;
    var cardBorderRadius = Radius.circular(10);
    var themeIndicatorBtnSize = SizeInfo.fabSize / 2;
    return GestureDetector(
        onTap: onChangeTheme,
        child: Card(
          color: Colors.transparent,
          shadowColor: Theme.of(context).shadowColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(cardBorderRadius)
          ),
          child: ClipRRect(
            borderRadius:  BorderRadius.all(cardBorderRadius),
            child: Stack(
              alignment: Alignment.bottomRight,
                children: [
              Image.asset(
                'assets/images/${themeData!.imgThemePath}',
                fit: BoxFit.contain,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: themeIndicatorBtnSize,
                width: themeIndicatorBtnSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(cardBorderRadius / 2),
                  color: themeData!.themeData!.indicatorColor,
                ),
                child: Icon(Icons.add,size: indicatorIconSize,color: themeData!.themeData!.colorScheme.primary,),
              ),
            ]),
          ),
        ));
  }
}
