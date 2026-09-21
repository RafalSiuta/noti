import 'package:flutter/material.dart';
import 'package:noti/utils/dimensions/size_info.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    required this.controller,
    required this.labelText,
    this.maxCharacters = 12,
    this.helperText,
  });

  final TextEditingController controller;
  final String labelText;
  final int maxCharacters;
  final String? helperText;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isObscured = true;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(covariant PasswordInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onTextChanged);
      widget.controller.addListener(_onTextChanged);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();
    super.dispose();
  }

  void _onTextChanged() => setState(() {});
  void _onFocusChanged() => setState(() {});

  String _labelWithCharacterCount() {
    final counter = widget.labelText;
    final characterCount = widget.controller.text.length;
    if (!_focusNode.hasFocus) return counter;
    return '$counter $characterCount/${widget.maxCharacters}';
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      obscureText: _isObscured,
      autocorrect: false,
      enableSuggestions: false,
      cursorWidth: 1,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: SizeInfo.settingsCardTitleFontSize,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        labelText: _labelWithCharacterCount(),
        labelStyle: Theme.of(context).inputDecorationTheme.helperStyle!
            .copyWith(fontSize: SizeInfo.settingsCardTitleFontSize),
        helperText: widget.helperText,
        helperStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: SizeInfo.helpTextSize,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).unselectedWidgetColor,
          ),
          onPressed: () => setState(() => _isObscured = !_isObscured),
        ),
      ),
    );
  }
}
