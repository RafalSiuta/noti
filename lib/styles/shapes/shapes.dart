import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider/settings_provider.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        return Align(
          alignment: Alignment.topLeft,
          child: AspectRatio(
            aspectRatio: screenWidth / screenHeight,
            child: ClipPath(
              clipper: settingsProvider.getShape(),
              child: AnimatedContainer(
                duration: const Duration(microseconds: 500),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
