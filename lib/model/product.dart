class Product {
  final String title;
  final String imageUrl;
  final String? description; // Make description optional

  const Product({
    required this.title,
    required this.imageUrl,
    this.description, required String price,
  });

  String get name => title;

  String get image => imageUrl;

}
