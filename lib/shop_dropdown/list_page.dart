import 'package:flutter/material.dart';
import '../header.dart';
import '../product_card.dart';
import '../model/product.dart';
import '../repository/price.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Cart();
    final products = [
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: 'assets/images/sweater1.png',
      ),
      Product(
        title: 'Sweater 4',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: 'assets/images/sweater4.PNG',
      ),
      Product(
        title: 'Sweater 3',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: 'assets/images/sweater3.png',
      ),
      Product(
        title: 'Sweater 2',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: 'assets/images/sweater2.png',
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: 'assets/images/hoodie1.png',
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: 'assets/images/clothing3.png',
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: 'assets/images/clothing.png',
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: 'assets/images/clothing2.png',
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: 'assets/images/clothing3.png',
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: 'assets/images/hoodie1.png',
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: 'assets/images/hoodie2.png',
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: 'assets/images/hoodie3.png',
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: products
                  .map((product) => ProductCard(
                        title: product.title,
                        price: product.price,
                        imageUrl: product.imageUrl,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
