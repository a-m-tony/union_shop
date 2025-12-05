import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/model/cart.dart';
import 'package:union_shop/model/product.dart';

void main() {
  group('Cart', () {
    test('should add a product to the cart', () {
      final cart = Cart();
      final product = Product(
        title: 't shirts',
        imageUrl: 'assets/images/t-shirt.png',
      );
      cart.add(product);
      expect(cart.items.contains(product), isTrue);
    });

    test('should remove a product from the cart', () {
      final cart = Cart();
      final product = Product(
        title: 't shirts',
        imageUrl: 'assets/images/t-shirt.png',
      );
      cart.add(product);
      cart.remove(product);
      expect(cart.items.contains(product), isFalse);
    });

    test('should calculate the total price of items in the cart', () {
      final cart = Cart();
      final product1 = Product(
        title: 't shirts',
        imageUrl: 'assets/images/t-shirt.png',
      );
      final product2 = Product(
        title: 'sweater',
        imageUrl: 'assets/images/sweater.png',
      );
      cart.add(product1);
      cart.add(product2);
      expect(cart.totalPrice, 45.00);
    });
  });
}
