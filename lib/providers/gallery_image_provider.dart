import 'dart:collection';
import 'package:flutter/foundation.dart';
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

    final AssetEntity asset = await PhotoManager.editor.saveImage(
        imageData,
        title: 'Noti${imageData.length.toStringAsFixed(4)}',
        filename: "noti${imageData.length.toStringAsFixed(2)}.jpg"
    );
    return asset;
  }

  int selectedAlbum = 0;

  List<AssetPathEntity> _albums = [];

  int get albumsListCounter {
    return _albums.length;
  }

  UnmodifiableListView<AssetPathEntity> get albumsList {
    return UnmodifiableListView(_albums);
  }

  void onAlbumChoose(int index){
    selectedAlbum = index;
    getGalleryImages();
    notifyListeners();
  }

  Future<void> fetchAlbums() async {
    final PermissionState permissionState = await PhotoManager.requestPermissionExtend(
      requestOption: PermissionRequestOption(
        androidPermission: const AndroidPermission(
          type: RequestType(1),
          mediaLocation: false,
        ),
      ),
    );

    if (!permissionState.hasAccess) return;

    _albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
      hasAll: true,
    );

    notifyListeners();
  }

  Future<void> getGalleryImages() async {

    if (_albums.isEmpty) {
      await fetchAlbums();
    }

    if (_albums.isEmpty) return; // secure problems in case is no albums

    AssetPathEntity album = _albums[selectedAlbum];

    final images = await album.getAssetListRange(start: 0, end: 200);

    _galleryImages = images;
    notifyListeners();
  }


  // Future<List<AssetEntity>> getGalleryImages() async {
  //   final PermissionRequestOption requestOption = PermissionRequestOption(
  //     androidPermission: const AndroidPermission(
  //       type: RequestType(1),
  //       mediaLocation: false,
  //     ),
  //   );
  //   final PermissionState permissionState = await PhotoManager.requestPermissionExtend(
  //     requestOption: requestOption,
  //   );
  //
  //   PhotoManager.setIgnorePermissionCheck(true);
  //   List<AssetPathEntity> paths = await PhotoManager.getAssetPathList(
  //
  //     type: RequestType.image,
  //     hasAll: true,
  //     filterOption: FilterOptionGroup(onlyLivePhotos: true),
  //   );
  //
  //   final int count = await PhotoManager.getAssetCount();
  //
  //   AssetPathEntity album = paths.firstWhere(
  //         (album) => album.name == "Recent",
  //     orElse: () => paths.first,
  //   );
  //   await album.getAssetListRange(start: 0, end: 200).then((images){
  //       for(AssetEntity image in images){
  //         _galleryImages.add(image);
  //
  //         notifyListeners();
  //       }
  //   });
  //   return _galleryImages;
  // }
}