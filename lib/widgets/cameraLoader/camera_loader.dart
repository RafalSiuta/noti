import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({
    super.key,
    required this.controller,
    required this.onPhoto,
    required this.scrollController,
  });
  final CameraController controller;
  final Function onPhoto;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    var cameraIconSize = SizeInfo.cameraIconButtonSize;
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CameraPreview(
                  controller,
                ),
              )),
        ),

        ///note if wrap with raw is easier to add another functions to camera shots:
        SizedBox(
          height: cameraIconSize + 12,
          child: IconButton(
            padding: const EdgeInsets.all(12),
            onPressed: () {
              onPhoto();
            },
            icon: Icon(
              Icons.camera,
              size: cameraIconSize,
            ),
          ),
        ),
      ],
    );
  }
}
