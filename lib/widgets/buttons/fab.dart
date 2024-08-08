import 'package:flutter/material.dart';

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
      {Key? key,
      required this.hideBtn,
      required this.icon,
      required this.onTap,
      required this.addNote,
      required this.translationValueOne,
      required this.translationValueTwo,
      required this.rotationValue,
      required this.addTask,
      required this.ignorePointer})
      : super(key: key);

  double getRadianFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  Widget build(BuildContext context) {
    var fabRadius = 50.0;
    double btnRadius = 15.0;

    return Padding(
      padding: EdgeInsets.only(bottom: fabRadius * 0.2),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Visibility(
            visible: ignorePointer,
            child: IgnorePointer(
              child: Container(
                color: Colors.transparent,
                height: fabRadius * 3.0,
                width: fabRadius,
                margin: EdgeInsets.only(bottom: fabRadius * 0.2),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(270),
                translationValueOne * (fabRadius * 2 + 30)),
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
                borderRadius: BorderRadius.all(Radius.circular(btnRadius))),
                width: fabRadius,
                height: fabRadius,
                child: IconButton(
                  icon: Icon(Icons.note_add,
                      color: Theme.of(context).textTheme.displayMedium!.color,
                      size: fabRadius - 20),
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
                translationValueTwo * (fabRadius + 20)),
            child: Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(rotationValue))
                ..scale(translationValueTwo),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                    shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(btnRadius))),
                width: fabRadius,
                height: fabRadius,
                child: IconButton(
                  icon: Icon(
                    Icons.task,
                    color: Theme.of(context).textTheme.displayMedium!.color,
                    size: fabRadius - 20,
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
            elevation: 3,
            child: Icon(Icons.edit,
                size: fabRadius - 15,
                color: Theme.of(context).textTheme.displayMedium!.color),
            onPressed: () {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
