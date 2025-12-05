import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/model/cart.dart';
import 'package:union_shop/model/product.dart';
import 'header.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    const saleProducts = [
      Product(
        title: 'Clothing 5',
        price: '£25.30',
        imageUrl: 'assets/images/clothing5.png',
      ),
      Product(
        title: 'Clothing 6',
        price: '£170.99',
        imageUrl: 'assets/images/clothing6.png',
      ),
      Product(
        title: 'Clothing 7',
        price: '£15.00',
        imageUrl: 'assets/images/clothing7.png',
      ),
    ];

    const originalPrices = [
      '£30',
      '£200',
      '£20',
    ];

    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: Text(
                'SALE',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(saleProducts.length, (index) {
                final product = saleProducts[index];
                final originalPrice = originalPrices[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              product.price,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              originalPrice,
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false).add(product);
                            Navigator.pushNamed(context, '/cart');
                          },
                          child: const Text('Add to Cart'),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
