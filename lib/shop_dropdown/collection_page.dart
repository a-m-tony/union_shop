import 'package:flutter/material.dart';
import 'package:union_shop/header.dart';
import 'package:union_shop/product_card.dart';

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
                children: const [
                  ProductCard(
                    title: 't shirt',
                    price: '£10.00',
                    imageUrl: 'assets/images/clothing.png',
                  ),
                  ProductCard(
                    title: 't shirt',
                    price: '£10.00',
                    imageUrl: 'assets/images/clothing2.png',
                  ),
                  ProductCard(
                    title: 't shirt',
                    price: '£10.00',
                    imageUrl: 'assets/images/clothing3.png',
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
