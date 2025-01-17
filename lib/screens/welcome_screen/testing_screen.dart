import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/gallery_image_provider.dart';
import '../../widgets/cards/image_card.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        child:
        Consumer<GalleryImageProvider>(
        builder: (context, imageProvider, child) {
          return Column(
            children: [

              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: imageProvider.imageListCounter,
                  itemBuilder: (context, index) {
                    if (imageProvider.imageList.isEmpty) {
                      return  Center(
                        child: Text('Loading images',style: Theme.of(context).textTheme.bodyMedium,),
                      );
                    } else {
                      final img = imageProvider.imageList[index];

                      return ImageAssetCard(
                        img: img,
                        onTap: () async {
                          img.file.then((value) {
                          });
                          Navigator.of(context).pop();
                        },
                      );
                  }
                  },
                ),
              ),
            ],
          );
    }
    ));
  }
}
