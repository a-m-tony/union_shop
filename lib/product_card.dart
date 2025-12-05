import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/model/cart.dart';
import 'package:union_shop/model/product.dart';
import 'package:union_shop/repository/price_repository.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final price = PriceRepository.getPrice(product.title) ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/product', arguments: product);
            },
            child: Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              product.title,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Provider.of<Cart>(context, listen: false).add(product);
                Navigator.pushNamed(context, '/cart');
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ],
    );
  }
}
