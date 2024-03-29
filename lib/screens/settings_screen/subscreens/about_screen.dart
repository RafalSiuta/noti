
import 'package:flutter/material.dart';

import '../../../utils/custom_page_route/custom_page_route.dart';
import '../../../utils/dimensions/size_info.dart';
import '../../../widgets/cards/app_icon_card.dart';
import '../../../widgets/cards/socials_bar.dart';
import 'licence_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key, this.scaleAnim}) : super(key: key);

  final Animation<double>? scaleAnim;

  @override
  Widget build(BuildContext context) {
    var sidePadding = SizeInfo.edgePadding;
    var textFontSize = SizeInfo.calendarDaySize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sidePadding, vertical: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppIconCard(),
          const SizedBox(
            height: 50,
          ),
          const SocialsBar(),
          const SizedBox(
            height: 100,
          ),
          TextButton.icon(
            onPressed: () async {
              await Navigator.push(
                  context,
                  CustomPageRoute(
                      child: const LicenceScreen(),
                      direction: AxisDirection.up));
            },
            icon: Icon(
              Icons.copyright,
              color: Theme.of(context).textTheme.displayMedium!.color,
              size: textFontSize,
            ),
            label: Text(
              "Licences",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: textFontSize, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
