class ImageItem {
  // The albums' ID
  final String? id;
  // The albums name
  final String? name;
  // How many assets the album holds
  final int? assetCount;
  // The album's type
  final int? albumType;

  ImageItem({this.id, this.albumType, this.assetCount, this.name});
}
