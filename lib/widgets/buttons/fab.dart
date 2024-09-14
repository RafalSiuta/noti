import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class CustomFab extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Function addTask;
  final Function addNote;
  final Function hideBtn;
  final double translationValueOne;
  final double translationValueTwo;
  final double rotationValue;

  final bool ignorePointer;

  const CustomFab(
      {super.key,
      required this.hideBtn,
      required this.icon,
      required this.onTap,
      required this.addNote,
      required this.translationValueOne,
      required this.translationValueTwo,
      required this.rotationValue,
      required this.addTask,
      required this.ignorePointer});

  double getRadianFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  Widget build(BuildContext context) {
    var fabSize = SizeInfo.fabSize;
    double btnRadius = 15.0;
    double iconSize = SizeInfo.leadingAndTrailingIconSize;
    return Padding(
      padding: EdgeInsets.only(bottom: fabSize * 0.2),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Visibility(
            visible: ignorePointer,
            child: IgnorePointer(
              child: Container(
                color: Colors.transparent,
                height: fabSize * 3.0,
                width: fabSize,
                margin: EdgeInsets.only(bottom: fabSize * 0.2),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(270),
                translationValueOne * (fabSize * 2 + 40)),
            child: Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(rotationValue))
                ..scale(translationValueOne),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                    shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
                      offset: const Offset(0.5, 0.5),
                      blurRadius: 0.2,
                    ),
                  ],
                borderRadius: BorderRadius.all(Radius.circular(btnRadius)),),
                width: fabSize,
                height: fabSize,
                child: IconButton(
                  icon: Icon(Icons.note_add,
                      color: Theme.of(context).textTheme.headlineMedium!.color,
                      size: iconSize),
                  onPressed: () {
                    addTask();
                    hideBtn();
                  },
                  enableFeedback: true,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(270),
                translationValueTwo * (fabSize + 20)),
            child: Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(rotationValue))
                ..scale(translationValueTwo),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
                        offset: const Offset(0.5, 0.5),
                        blurRadius: 0.2,
                      ),
                    ],
                    shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(btnRadius))),
                width: fabSize,
                height: fabSize,
                child: IconButton(
                  icon: Icon(
                    Icons.task,
                    color: Theme.of(context).textTheme.headlineMedium!.color,
                    size: iconSize,
                  ),
                  onPressed: () {
                    addNote();
                    hideBtn();
                  },
                  enableFeedback: true,
                ),
              ),
            ),
          ),
          FloatingActionButton(
            elevation: 2,
            isExtended: true,
            child: Icon(Icons.edit,
                size: iconSize,
                color: Theme.of(context).textTheme.headlineMedium!.color),
            onPressed: () {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
