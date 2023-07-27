import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({required this.progressValue, super.key});

  final double progressValue;

//   @override
//   State<CustomProgressBar> createState() => _CustomProgressBarState();
// }
//
// class _CustomProgressBarState extends State<CustomProgressBar> with SingleTickerProviderStateMixin{
  // late AnimationController controller;
  //
  // String displayValue = "0%";


  // @override
  // void initState() {
  //   controller = AnimationController(
  //     /// [AnimationController]s can be created with `vsync: this` because of
  //     /// [TickerProviderStateMixin].
  //     value: 0.5,
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //     setState(() {
  //
  //     });
  //   });
  //   displayValue = (controller.value * 100).toStringAsFixed(0) + "%";
  //  // controller.repeat(reverse: false);
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Progress', style:Theme.of(context)
                  .inputDecorationTheme
                  .helperStyle!),
              Text("${(progressValue * 100).toStringAsFixed(0)}%", style:Theme.of(context)
                  .inputDecorationTheme
                  .helperStyle!),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            child: LinearProgressIndicator(
              value: progressValue,
              valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).indicatorColor),
              //semanticsLabel: 'Linear progress indicator',
            ),
          ),
        ],
      ),

    );
  }
}
