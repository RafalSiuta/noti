import 'dart:typed_data';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.img,
    this.width = 100,
    this.height = 120,
    this.onTap,
    this.onHold,
    this.cornerRadius = 15,
  });

  final Uint8List img;
  final double width;
  final double height;
  final Function()? onTap;
  final Function()? onHold;
  final double cornerRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onHold,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius - 1)),
          child: SizedBox(
            width: width,
            child: AspectRatio(
              aspectRatio: 3 / 5,
              child: Image.memory(
                img,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
