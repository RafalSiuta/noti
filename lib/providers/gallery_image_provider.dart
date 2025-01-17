import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryImageProvider extends ChangeNotifier {

  GalleryImageProvider() {
    initImageGallery();
  }

  Future<void> initImageGallery() async {
    print('IMAGE PROVIDER WAS LOADED');
    await getGalleryImages();

    notifyListeners();
  }

  List<AssetEntity> _galleryImages = [];

  AssetEntity? savedImage;

  int get imageListCounter {
    return _galleryImages.length;
  }

  UnmodifiableListView<AssetEntity> get imageList {
    return UnmodifiableListView(_galleryImages);
  }

  bool isImageExist() {
    if (savedImage == null || savedImage!.id.isEmpty) {
      return false;
    }
    return true;
  }

  void addTakenPictureToGallery(Uint8List value) async {
    if (value.isNotEmpty) {
      final AssetEntity? asset = await _saveImageToGallery(value);
      if (asset != null) {
        _galleryImages.add(asset);

        notifyListeners();
      }
    }
  }

  Future<AssetEntity?> _saveImageToGallery(Uint8List imageData) async {
    //DateTime.now().day;
    final AssetEntity? asset = await PhotoManager.editor.saveImage(
        imageData,
        title: 'Noti${imageData.length.toStringAsFixed(4)}',
        filename: "noti${imageData.length.toStringAsFixed(2)}.jpg"
    );
    return asset;
  }


  Future<List<AssetEntity>> getGalleryImages() async {
    final PermissionRequestOption requestOption = PermissionRequestOption(
      androidPermission: const AndroidPermission(
        type: RequestType(1),
        mediaLocation: false,
      ),
    );
    final PermissionState permissionState = await PhotoManager.requestPermissionExtend(
      requestOption: requestOption,
    );

    print("PERMISSION STATE: ${permissionState}");

    PhotoManager.setIgnorePermissionCheck(true);
    List<AssetPathEntity> paths = await PhotoManager.getAssetPathList(
     // onlyAll: true,
      type: RequestType.image,
      hasAll: true,
      filterOption: FilterOptionGroup(onlyLivePhotos: true),
    );
    //todo remove prints:
    //print("\n###############  ASSETENTITY PATHS: ${paths} ############################\n");

    final int count = await PhotoManager.getAssetCount();

    AssetPathEntity album = paths.firstWhere(
          (album) => album.name == "Recent",
      orElse: () => paths.first,
    );
    await album.getAssetListRange(start: 0, end: 200).then((images){
        for(AssetEntity image in images){
          _galleryImages.add(image);
          //print("\n###############  ENTIETIES: ${images} ############################\n");
          notifyListeners();
        }
    });
    return _galleryImages;
  }
}