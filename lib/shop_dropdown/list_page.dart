import 'package:flutter/material.dart';
import '../header.dart';
import '../product_card.dart';
import '../model/product.dart';
import '../model/price.dart';
import '../model/hoodie.dart';
import '../model/sweater.dart';
import '../model/t_shirt.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final priceMap = {for (var p in products) p.title: p.price};

    final productsToShow = [
      Product(
        title: 't shirts',
        price: priceMap['T-Shirt']!,
        imageUrl: TShirt.clothing.image,
      ),
      Product(
        title: 'Sweater 4',
        price: priceMap['Sweater']!,
        imageUrl: Sweater.sweater4.image,
      ),
      Product(
        title: 'Sweater 3',
        price: priceMap['Sweater']!,
        imageUrl: Sweater.sweater3.image,
      ),
      Product(
        title: 'Sweater 2',
        price: priceMap['Sweater']!,
        imageUrl: Sweater.sweater2.image,
      ),
      Product(
        title: 'hoodie',
        price: priceMap['Hoodie']!,
        imageUrl: Hoodie.hoodie1.image,
      ),
      Product(
        title: 't shirts',
        price: priceMap['T-Shirt']!,
        imageUrl: TShirt.clothing4.image,
      ),
      Product(
        title: 't shirts',
        price: priceMap['T-Shirt']!,
        imageUrl: TShirt.clothing.image,
      ),
      Product(
        title: 't shirts',
        price: priceMap['T-Shirt']!,
        imageUrl: TShirt.clothing2.image,
      ),
      Product(
        title: 't shirts',
        price: priceMap['T-Shirt']!,
        imageUrl: TShirt.clothing4.image,
      ),
      Product(
        title: 'hoodie',
        price: priceMap['Hoodie']!,
        imageUrl: Hoodie.hoodie1.image,
      ),
      Product(
        title: 'hoodie',
        price: priceMap['Hoodie']!,
        imageUrl: Hoodie.hoodie4.image,
      ),
      Product(
        title: 'hoodie',
        price: priceMap['Hoodie']!,
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
              children: productsToShow
                  .map((product) => ProductCard(
                        product: product,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
