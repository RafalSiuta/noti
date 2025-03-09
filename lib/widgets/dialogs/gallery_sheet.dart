import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/image_provider/gallery_image_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/text_icon_button.dart';
import '../camera_loader/camera_loader.dart';
import '../cards/image_card.dart';

class GallerySheet extends StatefulWidget {
  const GallerySheet({super.key, required this.pickImage});

  final Function(Uint8List img) pickImage;

  @override
  State<GallerySheet> createState() => _GallerySheetState();
}

class _GallerySheetState extends State<GallerySheet>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int currentPage = 0;
  int? lastPage;
  bool expand = true;

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  late CameraController _cameraController;
  bool _isInit = false;
  bool _isFlashOn = false;
  bool _isCameraReverse = false;

  final DraggableScrollableController _scrollableController = DraggableScrollableController();

  bool isFullyCollapsed = false;

  Future<void> switchCamera() async {

    await _fadeController.forward().whenComplete(()async{
      final cameras = await availableCameras();

      CameraDescription? newCamera;
      if (_isCameraReverse == false) {
        newCamera = cameras.firstWhere(
              (camera) => camera.lensDirection == CameraLensDirection.front,
          orElse: () => cameras.first,
        );
      } else {
        newCamera = cameras.firstWhere(
              (camera) => camera.lensDirection == CameraLensDirection.back,
          orElse: () => cameras.first,
        );
      }

      if (newCamera != null) {
        _cameraController.dispose();
        _cameraController = CameraController(
          newCamera,
          ResolutionPreset.max,
          enableAudio: false,
        );

        await _cameraController.initialize();

        setState(() {
          _isInit = true;
          _isCameraReverse = !_isCameraReverse;
        });
      }
    }).then((val)=>_fadeController.reverse());

  }


  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        currentPage = _tabController.index;
      });
    });
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250), // Szybka animacja
    );

    _fadeAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    ));

    _scrollableController.addListener(() {
      double currentSize = _scrollableController.size;

      if (currentSize <= 0.2) {
        isFullyCollapsed = true;
      } else {
        isFullyCollapsed = false;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final cameras = await availableCameras();
      final initialCamera = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );

      _cameraController = CameraController(
        initialCamera,
        ResolutionPreset.max,
        enableAudio: false,
      );

      await _cameraController.initialize();

      setState(() {
        _isInit = true;
      });

      await _cameraController.setFlashMode(FlashMode.off);
    });
   /* WidgetsBinding.instance.addPostFrameCallback((_) async {
      await availableCameras().then((value) {
        _cameraController = CameraController(value[0], ResolutionPreset.max,
            enableAudio: false);
        _cameraController.initialize().then((value) => {
              setState(() {
                _isInit = true;

              })
            });
      });
      await _cameraController.setFlashMode(FlashMode.off);
    });*/
  }

  @override
  void dispose() {
    _tabController.dispose();
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabTitleSize = SizeInfo.noteCardTitle;
    var bottomSheetBorderRadius = 20.0;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: Colors.transparent,
        child: DraggableScrollableSheet(
            controller: _scrollableController,
            initialChildSize: .6,
            minChildSize: .2,
            maxChildSize: .8,
            expand: expand,
            builder: (context, scrollController) {
              final txtStyle = Theme.of(context).textTheme.bodyMedium;
              return Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(bottomSheetBorderRadius)),
                      color: Theme.of(context).colorScheme.onSurface),
                  child: Consumer<GalleryImageProvider>(
                    builder: (context, imageProvider, child) {
                      var cameraPadding = SizeInfo.edgePadding;
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

                                    if (scroll.metrics.pixels /
                                            scroll.metrics.maxScrollExtent >
                                        0.4) {
                                      if (currentPage != lastPage) {
                                        lastPage = currentPage;
                                        imageProvider.getGalleryImages();
                                      }
                                    }
                                    return true;
                                  },

                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: AnimationLimiter(
                                          child: GridView.builder(
                                            controller: scrollController,
                                            physics: const BouncingScrollPhysics(
                                              parent: AlwaysScrollableScrollPhysics(),
                                            ),
                                            shrinkWrap: true,
                                            padding:  EdgeInsets.all(cameraPadding),
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              mainAxisSpacing: 5.0,
                                              crossAxisSpacing: 5.0,
                                            ),
                                            itemCount: imageProvider.imageListCounter,
                                            itemBuilder: (context, index) {
                                              if (imageProvider.imageList.isEmpty) {
                                                return Center(
                                                  child: Text(
                                                    'Loading images',
                                                    style: txtStyle,
                                                  ),
                                                );
                                              } else {
                                                final img =
                                                    imageProvider.imageList[index];

                                                return AnimationConfiguration
                                                    .staggeredGrid(
                                                  columnCount: 3,
                                                  position: index,
                                                  duration: const Duration(
                                                      milliseconds: 374),
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
                                      Visibility(
                                        visible: !isFullyCollapsed,
                                        child: Container(
                                          padding: EdgeInsets.all(cameraPadding),
                                          height: 60,
                                          child: ListView.builder(
                                            itemCount: imageProvider.albumsListCounter,
                                            shrinkWrap: true,
                                            padding: EdgeInsets.symmetric(horizontal:cameraPadding),
                                            itemBuilder: (context, index){
                                              var album = imageProvider.albumsList[index];
                                              return TextButton(
                                                  onPressed: (){
                                                    imageProvider.onAlbumChoose(index);
                                                  }, child: Text(album.name,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                  fontSize: tabTitleSize,color: imageProvider.selectedAlbum == index ? Theme.of(context).indicatorColor : Theme.of(context).textTheme.bodyMedium!.color
                                              ),)
                                              );
                                            },scrollDirection: Axis.horizontal,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _isInit
                                    ? Padding(
                                        padding: EdgeInsets.all(cameraPadding),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          spacing: cameraPadding,
                                          children: [
                                            Expanded(
                                              child: FadeTransition(
                                                opacity: _fadeAnimation,
                                                child: RotatedBox(
                                                    quarterTurns: _isCameraReverse ? 3 : 1,
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.all(Radius.circular(bottomSheetBorderRadius/2)),
                                                      child: CameraPreview(
                                                        _cameraController,
                                                      ),
                                                    )),
                                              )
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              spacing: cameraPadding,
                                              children: [
                                                IconButtonWithText(
                                                  value: true,
                                                  iconData: Icons.camera,
                                                  iconName: 'photo',
                                                  padding: EdgeInsets.all(cameraPadding),
                                                  onChanged: (value)async {
                                                  final res = await _cameraController.takePicture();
                                                  final value = await res.readAsBytes();
                                                  imageProvider.addTakenPictureToGallery(value);
                                                  widget.pickImage(value);
                                                   Navigator.pop(context);
                                                   },
                                                ),
                                                IconButtonWithText(
                                                  value: _isCameraReverse,
                                                  iconData: Icons.cameraswitch,
                                                  iconName: 'camera switch',
                                                  padding: EdgeInsets.all(cameraPadding),
                                                  onChanged: (value) async {
                                                    // setState(() {
                                                    //   _isCameraReverse = !_isCameraReverse;
                                                    // });
                                                     await switchCamera();
                                                  },
                                                ),
                                                IconButtonWithText(
                                                  value: _isFlashOn,
                                                  iconData: Icons.flash_on,
                                                  iconName: 'flash',
                                                  padding: EdgeInsets.all(cameraPadding),
                                                  onChanged: (value) async {
                                                    setState(() {
                                                      _isFlashOn = !_isFlashOn;
                                                      if(_isFlashOn == true){
                                                         _cameraController.setFlashMode(FlashMode.always);
                                                      }else{
                                                        _cameraController.setFlashMode(FlashMode.off);
                                                      }
                                                    });

                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : const Center(
                                        child: CircularProgressIndicator()),
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
                  ));
            }),
      ),
    );
  }
}
