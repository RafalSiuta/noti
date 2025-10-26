import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import '../../models/menu_model/nav_model.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';
import '../responsive/screen_type_layout.dart';
import '../../utils/internationalization/i18_extension.dart';

class SideNav extends StatelessWidget {
  final int itemCount;
  final List<NavModel> titles;
  final Function(int index) onTap;
  final int selectedItem;
  final Widget? leading;
  final Widget? trailing;
  final int quarterTurns;
  final Color backgroundColor;
  final double navDotIndicatorSize;

  const SideNav(
      {super.key,
      required this.itemCount,
      required this.titles,
      required this.onTap,
      required this.selectedItem,
      this.leading,
      this.trailing,
      this.quarterTurns = -1,
      this.backgroundColor = Colors.transparent,
      this.navDotIndicatorSize = 8.0});
  @override
  Widget build(BuildContext context) {
    var menuTop = SizeInfo.menuTopMargin;
    return ScreenTypeLayout(
      mobile: Container(
        key: key,
        margin: EdgeInsets.zero,
        child: NavigationRail(
            minWidth: 40,
            leading: leading,
            trailing: trailing,
            backgroundColor: Colors.transparent,
            destinations: List.generate(
                itemCount,
                (index) => NavigationRailDestination(
                  icon: Icon(
                    titles[index].icon,
                    size: navDotIndicatorSize,
                    fill: 0.0,
                  ),
                  selectedIcon: Icon(
                    titles[index].icon,
                    size: navDotIndicatorSize,
                    fill: 0.0,
                  ),

                      label: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            context.t("menu_text.${titles[index].title}").capitalizeFirstLetter()
                           // '${titles[index].title}  ',
                          )),
                    )).toList(),
            selectedIndex: selectedItem,
            onDestinationSelected: onTap),
      ),
      tablet: Container(
        key: key,
        margin: EdgeInsets.symmetric(vertical: menuTop , horizontal: 8.0),

        child: NavigationRail(
            minWidth: 120,
            leading: leading,
            trailing: trailing,
            groupAlignment: -0.2,
            backgroundColor: Colors.transparent,
            destinations: List.generate(
                itemCount,
                    (index) => NavigationRailDestination(
                      padding: EdgeInsets.symmetric(vertical: 24),
                  icon: Icon(
                    titles[index].icon,
                    size: 12,
                    fill: 0.0,

                  ),
                  selectedIcon: Icon(
                    titles[index].icon,
                    size: 12,
                    fill: 0.0,
                  ),
                  label: RotatedBox(
                      quarterTurns: -1,
                      child:
                      Text(
                          context.t("menu_text.${titles[index].title}").capitalizeFirstLetter()
                        //'${titles[index].title}  ',
                      )),
                )).toList(),
            selectedIndex: selectedItem,
                    selectedLabelTextStyle: Theme.of(context)
                        .navigationRailTheme
                        .selectedLabelTextStyle!
                        .copyWith(fontSize: 32),
                    unselectedLabelTextStyle: Theme.of(context)
                        .navigationRailTheme
                        .unselectedLabelTextStyle!
                        .copyWith(fontSize: 32),
            onDestinationSelected: onTap),
      ),

    );
  }
}
