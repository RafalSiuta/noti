extension Titles on String {
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return "";
    }
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
