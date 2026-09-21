import 'package:flutter/material.dart';
import 'package:noti/utils/crypto_helper/crypto_helper.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

import '../../utils/dimensions/size_info.dart';
import '../buttons/custom_text_button.dart';
import '../buttons/dialog_button.dart';
import '../text_display/password_input.dart';
import 'custom_dialog.dart';

class ExportPasswordDialog extends StatefulWidget {
  const ExportPasswordDialog({
    super.key,
    this.forImport = false,
    this.invalidPassword = false,
  });

  final bool forImport;
  final bool invalidPassword;

  @override
  State<ExportPasswordDialog> createState() => _ExportPasswordDialogState();
}

class _ExportPasswordDialogState extends State<ExportPasswordDialog> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmation = TextEditingController();
  String? _errorKey;

  @override
  void initState() {
    super.initState();
    if (widget.invalidPassword) {
      _errorKey = 'dialogs_text.password_incorrect';
    }
  }

  @override
  void dispose() {
    _password.dispose();
    _confirmation.dispose();
    super.dispose();
  }

  void _confirm() {
    if (widget.forImport) {
      if (_password.text.isEmpty) {
        setState(() => _errorKey = 'dialogs_text.password_required');
        return;
      }
    } else {
      if (_password.text.length < CryptoHelper.minimumPasswordLength) {
        setState(() => _errorKey = 'dialogs_text.password_too_short');
        return;
      }
      if (_password.text != _confirmation.text) {
        setState(() => _errorKey = 'dialogs_text.passwords_differ');
        return;
      }
    }
    Navigator.of(context).pop(_password.text);
  }

  @override
  Widget build(BuildContext context) {
    return CustomDial(
      title: widget.forImport
          ? 'dialogs_text.import_password_title'
          : 'dialogs_text.export_password_title',
      isBtnVisible: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: SizeInfo.edgePadding,
          children: [
            Text(
              context.t(
                widget.forImport
                    ? 'dialogs_text.import_password_explanation'
                    : 'dialogs_text.export_password_explanation',
              ),
            ),
            PasswordInput(
              controller: _password,
              labelText: context.t('dialogs_text.password_label'),
              helperText: widget.forImport && _errorKey != null
                  ? context.t(_errorKey!)
                  : null,
            ),
            if (!widget.forImport)
              PasswordInput(
                controller: _confirmation,
                labelText: context.t('dialogs_text.confirm_password_label'),
                helperText: _errorKey != null ? context.t(_errorKey!) : null,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: SizeInfo.edgePadding * 2,
              children: [
                DialogButton(
                  isConfirmed: false,
                  popOnConfirm: true,
                  onConfirm: () => Navigator.of(context).pop(),
                  // child: Text(context.t('dialogs_text.cancel')),
                ),
                DialogButton(
                  isConfirmed: true,
                  popOnConfirm: false,
                  onConfirm: _confirm,
                  // child: Text(context.t('dialogs_text.confirm')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
