import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/header.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/model/cart.dart';
import 'package:union_shop/model/product.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 24,
                mainAxisSpacing: 48,
                children: [
                  ProductCard(
                    product: const Product(
                      title: 't shirts',
                      price: '£10.00',
                      imageUrl: 'assets/images/clothing.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 't shirts',
                      price: '£10.00',
                      imageUrl: 'assets/images/clothing2.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 't shirts',
                      price: '£10.00',
                      imageUrl: 'assets/images/clothing3.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'Sweater 4',
                      price: '£25.00',
                      imageUrl: 'assets/images/sweater4.PNG',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'Sweater 3',
                      price: '£25.00',
                      imageUrl: 'assets/images/sweater3.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'Sweater 2',
                      price: '£25.00',
                      imageUrl: 'assets/images/sweater2.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'hoodie',
                      price: '£35.00',
                      imageUrl: 'assets/images/hoodie1.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'hoodie',
                      price: '£35.00',
                      imageUrl: 'assets/images/hoodie3.png',
                    ),
                  ),
                  ProductCard(
                    product: const Product(
                      title: 'hoodie',
                      price: '£35.00',
                      imageUrl: 'assets/images/hoodie4.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
