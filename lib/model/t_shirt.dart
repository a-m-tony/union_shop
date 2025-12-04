enum TShirt {
  clothing,
  clothing4,
  clothing2;

  String get image {
    switch (this) {
      case TShirt.clothing:
        return 'assets/images/clothing.png';
      case TShirt.clothing4:
        return 'assets/images/clothing4.png';
      case TShirt.clothing2:
        return 'assets/images/clothing2.png';
    }
  }
}