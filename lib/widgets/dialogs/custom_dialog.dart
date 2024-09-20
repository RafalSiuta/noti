import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class CustomDialog {
  showDialog(context, title, child) => showModal(
      configuration: const FadeScaleTransitionConfiguration(
          transitionDuration: Duration(milliseconds: 300)),
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            titlePadding:
                const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              title,
              style:
                  Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 18),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  child,
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Ok',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 23),
                      ))
                ],
              ),
            ));
      });
}

class CustomDial extends StatefulWidget {
  final String? title;
  final Widget? child;
  final bool isBtnVisible;
  const CustomDial({
    super.key,
    required this.title,
    required this.child,
    this.isBtnVisible = true,
  });

  @override
  _CustomDialState createState() => _CustomDialState();
}

class _CustomDialState extends State<CustomDial> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetAnimationDuration: const Duration(milliseconds: 500),
      insetAnimationCurve: Curves.easeIn,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
          elevation: 5.0,
          color: Theme.of(context).colorScheme.onSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Theme.of(context).indicatorColor),
                child: Center(
                  child: Text(
                    widget.title!,
                    style: Theme.of(context).dialogTheme.titleTextStyle,
                  ),
                ),
              ),
              widget.child!,
              const SizedBox(height: 5.0,),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Visibility(
                    visible: widget.isBtnVisible,
                    child: Text(
                      'Ok',
                      style: Theme.of(context)
                          .dialogTheme
                          .contentTextStyle!
                          .copyWith(fontSize: 18),
                    ),
                  ))
            ],
          )),
    );
  }
}
