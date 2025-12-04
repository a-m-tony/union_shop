
import 'package:flutter/material.dart';
import 'product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _items = [
    const Product(
      title: 'T-Shirt',
      price: '£10.00',
      imageUrl:
          'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    const Product(
      title: 'Sweater',
      price: '£25.00',
      imageUrl:
          'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    const Product(
      title: 'Hoodie',
      price: '£35.00',
      imageUrl:
          'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
  ];

  List<Product> get items => _items;

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
