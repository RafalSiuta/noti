
import 'package:flutter/material.dart';
import '../../model/menu/nav_model.dart';
import '../responsive/screen_type_layout.dart';

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
  final bool isCreator;

  const SideNav(
      {Key? key,
      required this.itemCount,
      required this.titles,
      required this.onTap,
      required this.selectedItem,
      this.isCreator = false,
      this.leading,
      this.trailing,
      this.quarterTurns = -1,
      this.backgroundColor = Colors.transparent,
      this.navDotIndicatorSize = 8.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(
        width: 45,

        key: key,
        margin: isCreator
            ? const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0)
            :  const EdgeInsets.only(left: .0,right: 10.0),//EdgeInsets.zero,
        decoration: BoxDecoration(
            color: isCreator
                ? Theme.of(context).colorScheme.background
                : Colors.transparent,
            borderRadius: isCreator
                ? const BorderRadius.all(Radius.circular(15))
                : BorderRadius.zero,
            boxShadow: [
              isCreator
                  ? const BoxShadow(
                      color: Colors.black54,
                      blurRadius: 3.0,
                      offset: Offset(.0, .0),
                      spreadRadius: 2.0)
                  : const BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 0.0,
                      offset: Offset(.0, .0),
                      spreadRadius: 0.0),
            ]),
        child: ClipRRect(
          borderRadius: isCreator
              ? const BorderRadius.all(Radius.circular(15))
              : BorderRadius.zero,
          child: NavigationRail(
              minWidth: 40,
              leading: leading,
              trailing: trailing,
              backgroundColor: backgroundColor,
              destinations: List.generate(
                  itemCount,
                  (index) => NavigationRailDestination(
                        icon: Icon(
                          titles[index].icon, //FontAwesomeIcons.solidCircle,
                          size: navDotIndicatorSize,
                        ),
                        label: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '${titles[index].title}  ',
                            )),
                      )).toList(),
              selectedIndex: selectedItem,
              onDestinationSelected: onTap),
        ),
      ),
      tablet: Container(
        key: key,
        margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 16.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 3.0,
                  offset: Offset(.0, .0),
                  spreadRadius: 2.0),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: NavigationRail(
              minWidth: 80,
              leading: leading,
              trailing: trailing,
              backgroundColor: backgroundColor,
              groupAlignment: -0.2,
              destinations: List.generate(
                  itemCount,
                  (index) => NavigationRailDestination(
                        icon: Icon(
                          titles[index].icon,
                          size: navDotIndicatorSize,
                        ),
                        label: RotatedBox(
                          quarterTurns: -1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              '${titles[index].title}  ',
                            ),
                          ),
                        ),
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
      ),
    );
  }
}
