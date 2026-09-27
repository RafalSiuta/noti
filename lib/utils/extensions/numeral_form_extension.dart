import 'package:flutter/material.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

String plForm(
  BuildContext context, {
  required int count,
  required String oneKey,
  required String fewKey,
  required String manyKey,
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
