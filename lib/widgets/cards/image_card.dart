import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';


class ImageAssetCard extends StatelessWidget {
  const ImageAssetCard(
      {super.key,
      required this.img,
      this.size = 100,
      this.onTap,
      this.onHold,
      this.cornerRadius = 15});

  final Uint8List img;
  final double size;
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
          child: Image.memory(
            img,
            fit: BoxFit.cover,
            width: size,
            height: size,
            filterQuality: FilterQuality.medium,
          ),

        ),
      ),
    );
  }
}
// Image.memory(
//   image:
//   AssetEntityImageProvider(
//     img,
//     isOriginal: false,
//     thumbnailSize: const ThumbnailSize.square(200),
//     thumbnailFormat: ThumbnailFormat.jpeg,
//     fit: BoxFit.cover,
//   ),
//   filterQuality: FilterQuality.high,
// ),
// AssetEntityImageProvider(
//   img,
//   isOriginal: false,
//   // thumbnailSize: option.size,
//   // thumbnailFormat: option.format,
//   fit: BoxFit.cover,
// ),

// SizedBox(
//   width: 30,
//   height: 30,
// )
//ImageItem()
// Image.memory(
//   img,
//   fit: BoxFit.cover,
//   width: size,
//   height: size,
//   filterQuality: FilterQuality.medium,
// ),
class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.img,
      this.size = 100,
      this.onTap,
      this.onHold,
      this.cornerRadius = 15});

  final Uint8List img;
  final double size;
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
          child: Image.memory(
            img,
            fit: BoxFit.cover,
            width: size,
            height: size,
            filterQuality: FilterQuality.medium,
          ),
        ),
      ),
    );
  }
}
