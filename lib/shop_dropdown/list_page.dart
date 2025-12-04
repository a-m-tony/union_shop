import 'package:flutter/material.dart';
import '../header.dart';
import '../product_card.dart';
import '../model/product.dart';
import '../repository/price.dart';
import '../model/hoodie.dart';
import '../model/sweater.dart';
import '../model/t_shirt.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Cart();
    final products = [
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: TShirt.clothing.image,
      ),
      Product(
        title: 'Sweater 4',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: Sweater.sweater4.image,
      ),
      Product(
        title: 'Sweater 3',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: Sweater.sweater3.image,
      ),
      Product(
        title: 'Sweater 2',
        price: cart.items.firstWhere((p) => p.title == 'Sweater').price,
        imageUrl: Sweater.sweater2.image,
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: Hoodie.hoodie1.image,
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: TShirt.clothing4.image,
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: TShirt.clothing.image,
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: TShirt.clothing2.image,
      ),
      Product(
        title: 't shirts',
        price: cart.items.firstWhere((p) => p.title == 'T-Shirt').price,
        imageUrl: TShirt.clothing4.image,
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: Hoodie.hoodie1.image,
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: Hoodie.hoodie4.image,
      ),
      Product(
        title: 'hoodie',
        price: cart.items.firstWhere((p) => p.title == 'Hoodie').price,
        imageUrl: Hoodie.hoodie3.image,
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
