import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import '../../utils/dimensions/size_info.dart';

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
    var textSize = SizeInfo.headerSubtitleSize;
    return
      Card(
        elevation: 5.0,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/14, vertical: MediaQuery.of(context).size.height/6),
              color: Theme.of(context).colorScheme.onSurface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: textSize * 3,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Theme.of(context).datePickerTheme.headerBackgroundColor),
              child: Center(
                child: Text(
                  widget.title!,
                  style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: widget.child!,
              ),
            ),
            Visibility(
              visible: widget.isBtnVisible,
              child: const Divider()),
            // const SizedBox(height: 5.0,),
            Visibility(
              visible: widget.isBtnVisible,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    //Navigator.of(context).pop(),
                    child: Text(
                      'Ok',
                      style: Theme.of(context)
                          .dialogTheme
                          .contentTextStyle!
                          .copyWith(fontSize: textSize),
                    )),
              ),
            )
          ],
        ),
      );
  }
}
