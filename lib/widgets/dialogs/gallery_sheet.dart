import 'dart:io';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../providers/note_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../cameraLoader/camera_loader.dart';
import '../cards/image_card.dart';

class GallerySheet extends StatefulWidget {
  const GallerySheet({Key? key, required this.pickImage}) : super(key: key);

  final Function(Uint8List img) pickImage;

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

    WidgetsBinding.instance!.addPostFrameCallback((_) async {
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
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: Theme.of(context).colorScheme.onSurface),
                child: Consumer<NoteProvider>(
                  builder: (context, noteProvider, child) {
                    return Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                              physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics()),
                              controller: _tabController,
                              children: [
                                NotificationListener<ScrollNotification>(
                                  onNotification: (ScrollNotification scroll) {
                                    //noteProvider.getGalleryImages();
                                    if (scroll.metrics.pixels /
                                            scroll.metrics.maxScrollExtent >
                                        0.4) {
                                      if (currentPage != lastPage) {
                                        lastPage = currentPage;
                                        noteProvider.getGalleryImages();
                                      }
                                    }
                                    return true;
                                  },
                                  child: AnimationLimiter(
                                    child: GridView.builder(
                                      controller: scrollController,
                                      physics: const BouncingScrollPhysics(
                                          parent:
                                              AlwaysScrollableScrollPhysics()),
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(8.0),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 5.0,
                                        crossAxisSpacing: 5.0,
                                      ),
                                      itemCount: noteProvider.imageListCounter,
                                      itemBuilder: (context, index) {
                                          final img =
                                              noteProvider.imageList[index];
                                        return
                                        // if (noteProvider.imageList.isEmpty) {
                                        //   return const CircularProgressIndicator();
                                        // } else {
                                        //   //zwraca AssetEntity:
                                        //   final img =
                                        //       noteProvider.imageList[index];
                                        //   return AnimationConfiguration
                                        //       .staggeredGrid(
                                        //     columnCount: 3,
                                        //     position: index,
                                        //     duration: const Duration(
                                        //         milliseconds: 375),
                                        //     child: ScaleAnimation(
                                        //       scale: 0.5,
                                        //       child: FadeInAnimation(
                                        //           child: ImageAssetCard(
                                        //         img: img,
                                        //         onTap: () async {
                                        //           img.file.then((value) {
                                        //             if (value != null) {
                                        //               return widget.pickImage(
                                        //                   value
                                        //                       .readAsBytesSync());
                                        //             }
                                        //           });
                                        //
                                        //           Navigator.of(context).pop();
                                        //         },
                                        //       )),
                                        //     ),
                                        //   );
                                        // }

                                        FutureBuilder<Uint8List?>(
                                          future: img.thumbnailDataWithSize(const ThumbnailSize(100, 100)), //
                                          builder: (context, snapshot) {
                                            if (snapshot.connectionState == ConnectionState.done &&
                                                snapshot.hasData) {
                                              return AnimationConfiguration.staggeredGrid(
                                                columnCount: 3,
                                                position: index,
                                                duration: const Duration(milliseconds: 375),
                                                child: ScaleAnimation(
                                                  scale: 0.5,
                                                  child: FadeInAnimation(
                                                    child: ImageAssetCard(
                                                      img: snapshot.data!,
                                                      onTap: () async {
                                                        final file = await img.file;
                                                        if (file != null) {
                                                          widget.pickImage(file.readAsBytesSync());
                                                        }
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              );
                                            } else {
                                              return Center(child: CircularProgressIndicator());
                                            }
                                          },
                                        );
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
                                          await _cameraController
                                              .takePicture()
                                              .then((res) {
                                            return res
                                                .readAsBytes()
                                                .then((value) {
                                              noteProvider
                                                  .addTakenPictureToGallery(
                                                      value);
                                              return widget.pickImage(value);
                                            });
                                          });

                                          Navigator.pop(context);
                                        },
                                      )
                                    : const CircularProgressIndicator(),
                              ]),
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
                              Tab(
                                text: 'Gallery',
                              ),
                              Tab(
                                text: 'Camera',
                              ),
                            ])
                      ],
                    );
                  },
                ),
              );
            }),
      ),
    );
  }
}
