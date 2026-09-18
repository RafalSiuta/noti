import 'package:flutter/material.dart';
import 'package:noti/utils/crypto_helper/crypto_helper.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

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
          children: [
            Text(
              context.t(
                widget.forImport
                    ? 'dialogs_text.import_password_explanation'
                    : 'dialogs_text.export_password_explanation',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _password,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: context.t('dialogs_text.password_label'),
              ),
            ),
            if (!widget.forImport)
              TextField(
                controller: _confirmation,
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                  labelText: context.t('dialogs_text.confirm_password_label'),
                ),
              ),
            if (_errorKey != null) ...[
              const SizedBox(height: 8),
              Text(
                context.t(_errorKey!),
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(context.t('dialogs_text.cancel')),
                ),
                TextButton(
                  onPressed: _confirm,
                  child: Text(context.t('dialogs_text.confirm')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
