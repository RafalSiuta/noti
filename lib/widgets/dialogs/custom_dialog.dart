import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import '../../utils/dimensions/size_info.dart';

class CustomDialog {
  showDialog(context, title, child) => showModal(
    configuration: const FadeScaleTransitionConfiguration(
      transitionDuration: Duration(milliseconds: 300),
    ),
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        titlePadding: const EdgeInsets.symmetric(
          horizontal: 36.0,
          vertical: 10,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(fontSize: 18),
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
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
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
    final textSize = SizeInfo.headerSubtitleSize;
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: screenSize.width * 6 / 7,
          maxHeight: screenSize.height * 2 / 3,
        ),
        child: Card(
          elevation: 5.0,
          margin: EdgeInsets.zero,
          color: Theme.of(context).colorScheme.onSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: textSize * 3,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      stops: const [0.0, 0.5, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColorLight,
                        Theme.of(context).primaryColorDark,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      context
                          .t(widget.title!, fallback: widget.title)
                          .capitalizeFirstLetter(),
                      style: Theme.of(context).dialogTheme.titleTextStyle!
                          .copyWith(
                            fontSize: textSize,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(SizeInfo.edgePadding * 2),
                  child: widget.child!,
                ),
                if (widget.isBtnVisible) const Divider(),
                if (widget.isBtnVisible)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Ok',
                        style: Theme.of(context).dialogTheme.contentTextStyle!
                            .copyWith(fontSize: textSize),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
