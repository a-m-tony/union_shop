import 'package:flutter/material.dart';
import '../header.dart';
import '../product_card.dart';
import 'package:union_shop/repository/product_repository.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: products
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
