
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../responsive/column_row_builder.dart';
import '../web/web_link.dart';

class SocialsBar extends StatelessWidget {
  const SocialsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        var socialIconSize = SizeInfo.switchButtonIconSize;
        var socialSubtitleFontSize = SizeInfo.calendarDaySize;
        var socialPadding = SizeInfo.edgePadding;
        return RowBuilder(
          itemCount: settingsProvider.socialList.socialsListCounter,
          itemBuilder: (context, index) {
            final listItem = settingsProvider.socialList.socials[index];
            return GestureDetector(
              onTap: () async {
                if (index == 2) {
                  // Share.share(
                  //     'https://play.google.com/store/apps/details?id=org.r85.calendar_todo');
                } else {
                  await Navigator.push(
                      context,
                      CustomPageRoute(
                          child: Web(
                            link: listItem.link!,
                          ),
                          direction: AxisDirection.up));
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).indicatorColor,
                    radius: socialIconSize,
                    child: Icon(
                      listItem.icon,
                      color: Theme.of(context).textTheme.headlineLarge!.color,
                      size: socialIconSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: socialPadding),
                    child: Text(
                      listItem.title!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: socialSubtitleFontSize),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
