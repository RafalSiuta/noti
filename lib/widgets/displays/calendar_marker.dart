import 'package:flutter/material.dart';

class CalendarMarker extends StatelessWidget {
  const CalendarMarker(this.itemsQty, this.markerRadius, this.markerFontSize, {super.key});
  final int? itemsQty;
  final double? markerRadius;
  final double? markerFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(8.0)),
            // shape: BoxShape.circle,


            color: Theme.of(context).indicatorColor,
          ),
          width: markerRadius! - 2,
          height: markerRadius,
          child: Center(
            child: Text('${itemsQty}',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: markerFontSize)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
            // shape: BoxShape.circle,
            border: Border.symmetric(horizontal: BorderSide(color:Theme.of(context)
                .textTheme
                .bodySmall!.color!, width: 0.5 ), ),
            color: Theme.of(context).indicatorColor,
          ),
          width: markerRadius! - 2,
          height: markerRadius,
          child: Center(
            child: Text('${itemsQty! - 1}',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: markerFontSize)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
            // shape: BoxShape.circle,
            color: Theme.of(context).indicatorColor,
          ),
          width: markerRadius! - 2,
          height: markerRadius,
          child: Center(
            child: Text('${itemsQty! + 1}',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: markerFontSize)),
          ),
        ),
      ],
    );
  }
}
