import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/gallery_image_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../cameraLoader/camera_loader.dart';
import '../cards/image_card.dart';

class GallerySheet extends StatefulWidget {
  const GallerySheet({super.key, required this.pickImage});

  final Function(Uint8List img) pickImage;
  //final Function(AssetEntity img) pickImage;

  @override
  State<GallerySheet> createState() => _GallerySheetState();
}

class _GallerySheetState extends State<GallerySheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentPage = 0;
  int? lastPage;
  bool expand = true;

  late CameraController _cameraController;
  bool _isInited = false;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        currentPage = _tabController.index;
      });
    });
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await availableCameras().then((value) {
        _cameraController = CameraController(value[0], ResolutionPreset.medium);
        _cameraController.initialize().then((value) => {
              setState(() {
                _isInited = true;
              })
            });
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabTitleSize = SizeInfo.noteCardTitle;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: Colors.transparent,
        child: DraggableScrollableSheet(
            initialChildSize: .5,
            minChildSize: .1,
            maxChildSize: .8,
            expand: expand,
            builder: (context, scrollController) {
              final txtStyle = Theme.of(context)
                  .textTheme
                  .bodyMedium;
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: Theme.of(context).colorScheme.onSurface),
                child:
                Consumer<GalleryImageProvider>(
                  builder: (context, imageProvider, child) {
                    return Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics(),
                            ),
                            controller: _tabController,
                            children: [
                              NotificationListener<ScrollNotification>(
                                onNotification: (ScrollNotification scroll) {
                                  if (scroll.metrics.pixels / scroll.metrics.maxScrollExtent > 0.4) {
                                    if (currentPage != lastPage) {
                                      lastPage = currentPage;
                                      imageProvider.getGalleryImages();
                                    }
                                  }
                                  return true;
                                },
                                child: AnimationLimiter(
                                  child: GridView.builder(
                                    controller: scrollController,
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
                                          child: Text('Loading images',style: txtStyle,),//CircularProgressIndicator(),
                                        );
                                      } else {
                                        final img = imageProvider.imageList[index];

                                        return AnimationConfiguration.staggeredGrid(
                                          columnCount: 3,
                                          position: index,
                                          duration: const Duration(milliseconds: 374),
                                          child: ScaleAnimation(
                                            scale: 0.5,
                                            child: FadeInAnimation(
                                              child: ImageAssetCard(
                                                img: img,
                                                onTap: () async {
                                                  img.file.then((value) {
                                                    if (value != null) {
                                                      return widget.pickImage(
                                                          value
                                                              .readAsBytesSync());
                                                    }
                                                  });
                                                  //widget.pickImage(img);
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              _isInited
                                  ? CameraScreen(
                                key: widget.key,
                                controller: _cameraController,
                                scrollController: scrollController,
                                onPhoto: () async {
                                  final res = await _cameraController.takePicture();
                                  final value = await res.readAsBytes();
                                  imageProvider.addTakenPictureToGallery(value);
                                  widget.pickImage(value);
                                  Navigator.pop(context);
                                },
                              )
                                  : const Center(child: CircularProgressIndicator()),
                            ],
                          ),
                        ),
                        TabBar(
                          onTap: (index) {
                            setState(() {
                              currentPage = index;
                            });
                          },
                          labelStyle: Theme.of(context)
                              .tabBarTheme
                              .labelStyle!
                              .copyWith(fontSize: tabTitleSize),
                          unselectedLabelStyle: Theme.of(context)
                              .tabBarTheme
                              .unselectedLabelStyle!
                              .copyWith(fontSize: tabTitleSize - 1),
                          controller: _tabController,
                          tabs: const [
                            Tab(text: 'Gallery'),
                            Tab(text: 'Camera'),
                          ],
                        ),
                      ],
                    );
                  },
                )



                // Consumer<GalleryImageProvider>(
                //   builder: (context, imageProvider, child) {
                //     return Column(
                //       children: [
                //         Expanded(
                //           child: TabBarView(
                //               physics: const BouncingScrollPhysics(
                //                   parent: AlwaysScrollableScrollPhysics()),
                //               controller: _tabController,
                //               children: [
                //                 NotificationListener<ScrollNotification>(
                //                   onNotification: (ScrollNotification scroll) {
                //                     //noteProvider.getGalleryImages();
                //                     if (scroll.metrics.pixels /
                //                             scroll.metrics.maxScrollExtent >
                //                         0.4) {
                //                       if (currentPage != lastPage) {
                //                         lastPage = currentPage;
                //                         imageProvider.getGalleryImages();
                //                       }
                //                     }
                //                     return true;
                //                   },
                //                   child: AnimationLimiter(
                //                     child: GridView.builder(
                //                       controller: scrollController,
                //                       physics: const BouncingScrollPhysics(
                //                           parent:
                //                               AlwaysScrollableScrollPhysics()),
                //                       shrinkWrap: true,
                //                       padding: const EdgeInsets.all(8.0),
                //                       gridDelegate:
                //                           const SliverGridDelegateWithFixedCrossAxisCount(
                //                         crossAxisCount: 3,
                //                         mainAxisSpacing: 5.0,
                //                         crossAxisSpacing: 5.0,
                //                       ),
                //                       itemCount: imageProvider.imageListCounter,
                //                       itemBuilder: (context, index) {
                //                           // final img =
                //                           //     imageProvider.imageList[index];
                //
                //                         if (imageProvider.imageList.isEmpty) {
                //                           return const CircularProgressIndicator();
                //                         } else {
                //                           //zwraca AssetEntity:
                //                           final img =
                //                               imageProvider.imageList[index];
                //                           return AnimationConfiguration
                //                               .staggeredGrid(
                //                             columnCount: 3,
                //                             position: index,
                //                             duration: const Duration(
                //                                 milliseconds: 300),
                //                             child: ScaleAnimation(
                //                               scale: 0.5,
                //                               child: FadeInAnimation(
                //                                   child: ImageAssetCard(
                //                                 img: img,
                //                                 onTap: () async {
                //                                   img.file.then((value) {
                //                                     if (value != null) {
                //                                       return widget.pickImage(
                //                                           value.readAsBytesSync());
                //                                     }
                //                                   });
                //
                //                                   Navigator.of(context).pop();
                //                                 },
                //                               )),
                //                             ),
                //                           );
                //                         }
                //
                //                         // FutureBuilder<AssetEntity?>( //Uint8List
                //                         //   future: img,//.thumbnailDataWithSize(const ThumbnailSize(100, 100)), //
                //                         //   builder: (context, snapshot) {
                //                         //     if (snapshot.connectionState == ConnectionState.done &&
                //                         //         snapshot.hasData) {
                //                         //       return AnimationConfiguration.staggeredGrid(
                //                         //         columnCount: 3,
                //                         //         position: index,
                //                         //         duration: const Duration(milliseconds: 375),
                //                         //         child: ScaleAnimation(
                //                         //           scale: 0.5,
                //                         //           child: FadeInAnimation(
                //                         //             child: ImageAssetCard(
                //                         //               img: snapshot.data!,
                //                         //               onTap: () async {
                //                         //                 final file = await img.file;
                //                         //                 if (file != null) {
                //                         //                   widget.pickImage(file.readAsBytesSync());
                //                         //                 }
                //                         //                 Navigator.of(context).pop();
                //                         //               },
                //                         //             ),
                //                         //           ),
                //                         //         ),
                //                         //       );
                //                         //     } else {
                //                         //       return const Center(child: CircularProgressIndicator());
                //                         //     }
                //                         //   },
                //                         // );
                //                       },
                //                     ),
                //                   ),
                //                 ),
                //                 _isInited
                //                     ? CameraScreen(
                //                         key: widget.key,
                //                         controller: _cameraController,
                //                         scrollController: scrollController,
                //                         onPhoto: () async {
                //                           await _cameraController
                //                               .takePicture()
                //                               .then((res) {
                //                             return res
                //                                 .readAsBytes()
                //                                 .then((value) {
                //                               imageProvider
                //                                   .addTakenPictureToGallery(
                //                                       value);
                //                               return widget.pickImage(value);
                //                             });
                //                           });
                //
                //                           Navigator.pop(context);
                //                         },
                //                       )
                //                     : const CircularProgressIndicator(),
                //               ]),
                //         ),
                //         TabBar(
                //             onTap: (index) {
                //               setState(() {
                //                 currentPage = index;
                //               });
                //             },
                //             labelStyle: Theme.of(context)
                //                 .tabBarTheme
                //                 .labelStyle!
                //                 .copyWith(fontSize: tabTitleSize),
                //             unselectedLabelStyle: Theme.of(context)
                //                 .tabBarTheme
                //                 .unselectedLabelStyle!
                //                 .copyWith(fontSize: tabTitleSize - 1),
                //             controller: _tabController,
                //             tabs: const [
                //               Tab(
                //                 text: 'Gallery',
                //               ),
                //               Tab(
                //                 text: 'Camera',
                //               ),
                //             ])
                //       ],
                //     );
                //   },
                // ),
              );
            }),
      ),
    );
  }
}
