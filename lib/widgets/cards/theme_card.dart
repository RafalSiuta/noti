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
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.outherCardCornerRadius),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.outherCardCornerRadius),
          ),
          child: Image.asset(
            'assets/images/${themeData!.imgThemePath}',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
