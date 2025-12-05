import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/repository/price_repository.dart';
import '../model/cart.dart';
import '../header.dart';
import '../model/product.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: Consumer<Cart>(
              builder: (context, cart, child) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: cart.items.length,
                        itemBuilder: (context, index) {
                          final Product product = cart.items[index];
                          final price = PriceRepository.getPrice(product.title) ?? '';
                          return ListTile(
                            leading: Image.asset(product.imageUrl),
                            title: Text(product.title),
                            subtitle: Text(price),
                            trailing: IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () {
                                cart.remove(product);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total: £${cart.totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Placeholder for checkout
                            },
                            child: const Text('Checkout'),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
