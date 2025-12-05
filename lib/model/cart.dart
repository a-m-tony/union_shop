import 'package:flutter/material.dart';
import 'package:union_shop/repository/price_repository.dart';
import 'product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  double get totalPrice {
    return _items.fold(0.0, (sum, current) {
      final priceString = PriceRepository.getPrice(current.title) ?? '£0.0';
      return sum + double.parse(priceString.substring(1));
    });
  }
}
