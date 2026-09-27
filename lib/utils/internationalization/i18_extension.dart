import 'package:flutter/material.dart';
import 'app_localizations.dart';

extension I18nX on BuildContext {
  AppLocalizations get i18n => AppLocalizations.of(this)!;
  String t(String key, {String? fallback}) => i18n.tr(key, fallback: fallback);
}
