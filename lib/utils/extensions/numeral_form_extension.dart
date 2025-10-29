import 'package:flutter/material.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

String plForm(
    BuildContext context, {
      required int count,
      required String oneKey, // 1
      required String fewKey, // 2-4 (z wyjątkiem 12-14)
      required String manyKey, // 0, 5-21, 25-... oraz 12-14
    }) {
  final mod10 = count % 10;
  final mod100 = count % 100;

  if (count == 1) {
    return context.t(oneKey);
  } else if (mod10 >= 2 && mod10 <= 4 && !(mod100 >= 12 && mod100 <= 14)) {
    return context.t(fewKey);
  } else {
    return context.t(manyKey);
  }
}
