import 'package:flutter/material.dart';

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({super.key, this.value = false, this.onChanged});

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: Switch(
          value: value,
          onChanged: (val) {
            onChanged!(value);
          }
      ),
    );
  }
}
