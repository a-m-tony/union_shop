class Product {
  final String title;
  final String price;
  final String imageUrl;
  final String? description; // Make description optional

  const Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    this.description, // Add description to the constructor
  });

  String get name => title;

  String get image => imageUrl;
}
