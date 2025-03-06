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
        double opacity =
            settingsProvider.isShapeTransparent == true ? 1.0 : 0.3;
        return Align(
          alignment: Alignment.topLeft,
          child:
          AspectRatio(
            aspectRatio: screenWidth/screenHeight,
            child:

            ClipPath(
              clipper: settingsProvider.getShape(),
              child: AnimatedContainer(
                duration: const Duration(microseconds: 500),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      stops: const [0.0, 0.5, 1.0],
                      colors: [
                        Theme.of(context).primaryColor.withValues(alpha: opacity),
                        Theme.of(context)
                            .primaryColorLight
                            .withValues(alpha: opacity),
                        Theme.of(context).primaryColorDark.withValues(alpha: opacity),
                      ],
                    )),
              ),
            ),
          ),
        );
      },
    );
  }
}
