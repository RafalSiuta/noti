import 'package:flutter/material.dart';

import '../../utils/colors/priority_color.dart';

typedef RatingChangeCallback = void Function(double rating);

class Rater extends StatelessWidget {
  final int starCount;
  final int rating;
  final double size;
  final double height;
  final double helperTextSize;
  final RatingChangeCallback? onRatingChanged;

  const Rater({
    super.key,
    this.starCount = 5,
    this.rating = 0,
    this.onRatingChanged,
    this.height = 8.0,
    this.size = 10,
    this.helperTextSize = 8.0,
  });

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    var markerColor = priorityColor(context,rating);

    if (index >= rating) {
      icon = Icon(
        Icons.circle,
        color: Theme.of(context).unselectedWidgetColor,
        size: size,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.circle,
        color: markerColor,
        size: size,
      );
    } else {
      icon = Icon(
        Icons.circle,
        color:markerColor,
        size: size,
      );
    }
    return InkResponse(
      radius: height,
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: Padding(
        padding: const EdgeInsets.only(right: 3.0, top: .0),
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: .0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                  starCount, (index) => buildStar(context, index))),
          const SizedBox(
            height: 8.0,
          ),
          Text('Priority',
              textAlign: TextAlign.left,
              style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                        fontSize: helperTextSize,
                      )),
        ],
      ),
    );
  }
}
