import 'package:flutter/material.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/app_icon_card.dart';
import '../policy_screen/policy_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, this.scaleAnim});

  final Animation<double>? scaleAnim;

  @override
  Widget build(BuildContext context) {
    var sidePadding = SizeInfo.edgePadding;
    var textFontSize = SizeInfo.calendarDaySize;
    double topMargin = SizeInfo.pageTopMargin;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sidePadding, vertical: topMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppIconCard(),
          TextButton.icon(
            onPressed: () async {
              await Navigator.push(
                  context,
                  CustomPageRoute(
                      child: const PolicyScreen(),
                      direction: AxisDirection.up));
            },
            icon: Icon(
              Icons.copyright,
              color: Theme.of(context).textTheme.bodyMedium!.color,
              size: textFontSize,
            ),
            label: Text(
              "Privacy Policy",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: textFontSize,),
            ),
          ),
        ],
      ),
    );
  }
}
