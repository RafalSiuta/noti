import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/text_icon_button.dart';

class GallerySheet extends StatefulWidget {
  const GallerySheet({super.key, required this.pickImage});

  final Function(Uint8List img) pickImage;

  @override
  State<GallerySheet> createState() => _GallerySheetState();
}

class _GallerySheetState extends State<GallerySheet>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool expand = true;

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  CameraController? _cameraController;
  final ImagePicker _imagePicker = ImagePicker();
  bool _isInit = false;
  bool _isFlashOn = false;
  bool _isCameraReverse = false;
  bool _isPickingImage = false;

  final DraggableScrollableController _scrollableController =
      DraggableScrollableController();

  Future<void> switchCamera() async {
    await _fadeController
        .forward()
        .whenComplete(() async {
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

          await _cameraController?.dispose();
          _cameraController = CameraController(
            newCamera,
            ResolutionPreset.max,
            enableAudio: false,
          );

          await _cameraController?.initialize();

          if (!mounted) return;
          setState(() {
            _isInit = true;
            _isCameraReverse = !_isCameraReverse;
          });
        })
        .then((val) => _fadeController.reverse());
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final cameras = await availableCameras();
      if (cameras.isEmpty) return;
      final initialCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );

      _cameraController = CameraController(
        initialCamera,
        ResolutionPreset.max,
        enableAudio: false,
      );

      await _cameraController?.initialize();

      if (!mounted) return;
      setState(() {
        _isInit = true;
      });

      await _cameraController?.setFlashMode(FlashMode.off);
    });
  }

  Future<void> _pickGalleryImage() async {
    if (_isPickingImage) return;

    setState(() {
      _isPickingImage = true;
    });

    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 90,
      );

      if (image == null) return;

      final bytes = await image.readAsBytes();
      if (bytes.isEmpty) return;

      widget.pickImage(bytes);

      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (_) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            context.t("headers_text.header_gallery").capitalizeFirstLetter(),
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isPickingImage = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _cameraController?.dispose();
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
            return Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(bottomSheetBorderRadius),
                ),
                color: Theme.of(context).colorScheme.onSurface,
              ),
              child: Builder(
                builder: (context) {
                  final cameraPadding = SizeInfo.edgePadding;
                  return Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: [
                            _isInit
                                ? Padding(
                                    padding: EdgeInsets.all(cameraPadding),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: cameraPadding,
                                      children: [
                                        Expanded(
                                          child: FadeTransition(
                                            opacity: _fadeAnimation,
                                            child: RotatedBox(
                                              quarterTurns: 0,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    bottomSheetBorderRadius / 2,
                                                  ),
                                                ),
                                                child: CameraPreview(
                                                  _cameraController!,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          spacing: cameraPadding,
                                          children: [
                                            IconButtonWithText(
                                              value: true,
                                              iconData: Icons.camera,
                                              iconName: 'icons_text.photo_shot',
                                              padding: EdgeInsets.all(
                                                cameraPadding,
                                              ),
                                              onChanged: (value) async {
                                                final res =
                                                    await _cameraController!
                                                        .takePicture();
                                                final value = await res
                                                    .readAsBytes();
                                                if (!context.mounted) return;
                                                widget.pickImage(value);
                                                Navigator.pop(context);
                                              },
                                            ),
                                            IconButtonWithText(
                                              value: _isCameraReverse,
                                              iconData: Icons.cameraswitch,
                                              iconName:
                                                  'icons_text.camera_switch',
                                              padding: EdgeInsets.all(
                                                cameraPadding,
                                              ),
                                              onChanged: (value) async {
                                                await switchCamera();
                                              },
                                            ),
                                            IconButtonWithText(
                                              value: _isFlashOn,
                                              iconData: Icons.flash_on,
                                              iconName: 'icons_text.flash',
                                              padding: EdgeInsets.all(
                                                cameraPadding,
                                              ),
                                              onChanged: (value) async {
                                                setState(() {
                                                  _isFlashOn = !_isFlashOn;
                                                  if (_isFlashOn == true) {
                                                    _cameraController
                                                        ?.setFlashMode(
                                                          FlashMode.always,
                                                        );
                                                  } else {
                                                    _cameraController
                                                        ?.setFlashMode(
                                                          FlashMode.off,
                                                        );
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
                                    child: CircularProgressIndicator(),
                                  ),
                            const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      TabBar(
                        onTap: (index) async {
                          if (index != 1) return;

                          await _pickGalleryImage();

                          if (mounted) {
                            _tabController.animateTo(0);
                          }
                        },
                        labelStyle: Theme.of(context).tabBarTheme.labelStyle!
                            .copyWith(fontSize: tabTitleSize),
                        unselectedLabelStyle: Theme.of(context)
                            .tabBarTheme
                            .unselectedLabelStyle!
                            .copyWith(fontSize: tabTitleSize - 1),
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: context
                                .t("headers_text.header_camera")
                                .capitalizeFirstLetter(),
                          ),
                          Tab(
                            text: context
                                .t("headers_text.header_gallery")
                                .capitalizeFirstLetter(),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
