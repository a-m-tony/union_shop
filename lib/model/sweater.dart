enum Sweater {
  sweater4,
  sweater3,
  sweater2;

  String get image {
    switch (this) {
      case Sweater.sweater4:
        return 'assets/images/sweater4.PNG';
      case Sweater.sweater3:
        return 'assets/images/sweater3.png';
      case Sweater.sweater2:
        return 'assets/images/sweater2.png';
    }
  }
}