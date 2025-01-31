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
    var menuTop = 18.0;//SizeInfo.menuTopMargin;
    return ScreenTypeLayout(
      mobile: Container(
        key: key,
        margin:  EdgeInsets.only( bottom: 8.0, left: 8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).unselectedWidgetColor.withValues(alpha:0.5),
                  blurRadius: 1.0,
                  offset: const Offset(.0, .0),
                  spreadRadius: 1.0)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: menuTop),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              direction: Axis.vertical,
              children: List.generate(
                itemCount,
                (index) =>
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 10.0),
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                   Icon(
                                    titles[index].icon,
                                    size: navDotIndicatorSize,
                                    color: selectedItem == index
                                        ? Theme.of(context).indicatorColor
                                        : Theme.of(context).unselectedWidgetColor,
                                  ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(titles[index].title,style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                              fontSize:navDotIndicatorSize * 0.52, color:selectedItem == index
                                    ? Theme.of(context).indicatorColor
                                    : Theme.of(context).unselectedWidgetColor,),)

                          ],
                        ),
                        onTap: (){
                          onTap(index);
                        },
                      ),
                    )
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
                  color: Theme.of(context).unselectedWidgetColor.withValues(alpha:0.5),
                  blurRadius: 1.0,
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

    );
  }
}
