class ItemPeca {
  String imageAssetPath;
  bool isSelected;

  ItemPeca({this.imageAssetPath, this.isSelected});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
