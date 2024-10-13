import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

class ImageAssetCard extends StatelessWidget {
  const ImageAssetCard(
      {super.key,
      required this.img,
      this.size = 100,
      this.onTap,
      this.onHold,
      this.cornerRadius = 15});

  final AssetEntity img;
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
          child:
          // Image.memory(
          //   img,
          //   fit: BoxFit.cover,
          //   width: size,
          //   height: size,
          //   filterQuality: FilterQuality.medium,
          // ),
          // AssetEntityImage(
          //   img,
          //   isOriginal: false,
          //   // thumbnailSize: option.size,
          //   // thumbnailFormat: option.format,
          //   fit: BoxFit.cover,
          // ),
          Image(
            image: AssetEntityImageProvider(
              img,
              isOriginal: false,
              thumbnailSize: ThumbnailSize.square(size.toInt()),
              thumbnailFormat: ThumbnailFormat.jpeg,
            ),
            width:size,
            height: size,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          )
        ),
      ),
    );
  }
}
class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.img,
      this.width = 100,
      this.height = 120,
      this.onTap,
      this.onHold,
      this.cornerRadius = 15});

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
              aspectRatio: 3/5,
              child: Image.memory(
                img,
                fit: BoxFit.cover,
                // width: width,
                // height: height,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
