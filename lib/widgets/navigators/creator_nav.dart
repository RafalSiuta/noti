import 'package:flutter/material.dart';

import '../../models/menu_model/nav_model.dart';
import '../responsive/screen_type_layout.dart';


class CreatorNav extends StatelessWidget {
  final int itemCount;
  final List<NavModel> titles;
  final Function(int index) onTap;
  final int selectedItem;
  final Color backgroundColor;
  final double navDotIndicatorSize;

  const CreatorNav(
      {super.key,
      required this.itemCount,
      required this.titles,
      required this.onTap,
      required this.selectedItem,
      this.backgroundColor = Colors.transparent,
      this.navDotIndicatorSize = 8.0});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(
        key: key,
        margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54.withOpacity(0.3),
                  blurRadius: 1.0,
                  offset: Offset(.0, .0),
                  spreadRadius: 1.0)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 12,
              children: List.generate(
                itemCount,
                (index) =>


                    IconButton(
                  onPressed: () {
                    onTap(index);
                  },
                  disabledColor: Theme.of(context).unselectedWidgetColor,
                  icon: Icon(
                    titles[index].icon,
                    size: navDotIndicatorSize,
                    color: selectedItem == index
                        ? Theme.of(context).indicatorColor
                        : Theme.of(context).unselectedWidgetColor,
                  ),
                ),
              ).toList(),
              direction: Axis.vertical,
            ),
          ),
        ),
      ),
      tablet: Container(
        width: 50,
        key: key,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow:  [
              BoxShadow(
                  color: Colors.black54.withOpacity(0.5),
                  blurRadius: 1.5,
                  offset: Offset(.0, .0),
                  spreadRadius: 1.0)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Wrap(
            spacing: 15,
            children: List.generate(
              itemCount,
              (index) => IconButton(
                  onPressed: () {},
                  icon: Icon(
                    titles[index].icon,
                    size: navDotIndicatorSize,
                  )),
            ).toList(),
            direction: Axis.vertical,
          ),
        ),
      ),
    );
  }
}
