enum Hoodie {
  hoodie4,
  hoodie3,
  hoodie1;

  String get image {
    switch (this) {
      case Hoodie.hoodie4:
        return 'assets/images/hoodie4.png';
      case Hoodie.hoodie3:
        return 'assets/images/hoodie3.png';
      case Hoodie.hoodie1:
        return 'assets/images/hoodie1.png';
    }
  }
}