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
                    title: 'Placeholder Product 1',
                    price: '£10.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 2',
                    price: '£15.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 3',
                    price: '£20.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 4',
                    price: '£25.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 5',
                    price: '£10.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 6',
                    price: '£15.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 7',
                    price: '£20.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 8',
                    price: '£25.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  ProductCard(
                    title: 'Placeholder Product 9',
                    price: '£10.00',
                    imageUrl:
                        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
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
