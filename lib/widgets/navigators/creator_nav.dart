import 'package:flutter/material.dart';

import '../../models/menu_model/nav_model.dart';
import '../../utils/dimensions/size_info.dart';
import '../responsive/screen_type_layout.dart';


class CreatorNav extends StatelessWidget {
  final int itemCount;
  final List<NavModel> titles;
  final Function(int index) onTap;
  final int selectedItem;
  final Color backgroundColor;
  final double navDotIndicatorSize;
  final bool isIconsNamed;

  const CreatorNav(
      {super.key,
      required this.itemCount,
      required this.titles,
      required this.onTap,
      required this.selectedItem,
      this.backgroundColor = Colors.transparent,
      this.navDotIndicatorSize = 8.0,
      this.isIconsNamed = false});

  @override
  Widget build(BuildContext context) {
    var menuTop = SizeInfo.menuTopMargin;
    return ScreenTypeLayout(
      mobile: Container(
        key: key,
        margin:  EdgeInsets.only(top: menuTop, bottom: 8.0, left: 8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
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
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              direction: Axis.vertical,
              children: List.generate(
                itemCount,
                (index) =>  Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0),
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
                    Text(titles[index].title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 8.0, color:selectedItem == index
                        ? Theme.of(context).indicatorColor
                        : Theme.of(context).unselectedWidgetColor,),)
                  ],
                ),
              ).toList(),

            ),
          ),
        ),
      ),
      tablet:Container(
        key: key,
        constraints: const BoxConstraints(
          minWidth: 120,
        ),
        margin: EdgeInsets.only(top: menuTop, bottom: 8.0, left: 8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
                  blurRadius: 1.0,
                  //offset: Offset(.0, .0),
                  spreadRadius: 1.0)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 15,
              direction: Axis.vertical,
              children: List.generate(
                itemCount,
                    (index) =>  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                           padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0),
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
                        Text(titles[index].title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12.0, color:selectedItem == index
                            ? Theme.of(context).indicatorColor
                            : Theme.of(context).unselectedWidgetColor,),)
                      ],
                    ),
              ).toList(),

            ),
          ),
        ),
      ),

      // Container(
      //   width: 50,
      //   key: key,
      //   margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      //   decoration: BoxDecoration(
      //       color: Theme.of(context).colorScheme.onSurface,
      //       borderRadius: const BorderRadius.all(Radius.circular(15)),
      //       boxShadow:  [
      //         BoxShadow(
      //             color: Colors.black54.withOpacity(0.5),
      //             blurRadius: 1.5,
      //             offset: const Offset(.0, .0),
      //             spreadRadius: 1.0)
      //       ]),
      //   child: ClipRRect(
      //     borderRadius: const BorderRadius.all(Radius.circular(15)),
      //     child: Wrap(
      //       spacing: 10,
      //       direction: Axis.vertical,
      //       children:  List.generate(
      //         itemCount,
      //         (index) => IconButton(
      //             onPressed: () {
      //               onTap(index);
      //             },
      //             icon: Icon(
      //               titles[index].icon,
      //               size: navDotIndicatorSize,
      //             )),
      //       ).toList(),
      //
      //     ),
      //   ),
      // ),
    );
  }
}
