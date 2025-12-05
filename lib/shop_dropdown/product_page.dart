import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../header.dart';
import '../model/cart.dart';
import '../model/product.dart';
import '../repository/price_repository.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String? _selectedSize;
  String? _selectedColour;
  int? _selectedQuantity;

  bool _areOptionsSelected() {
    return _selectedSize != null &&
        _selectedColour != null &&
        _selectedQuantity != null;
  }

  void _showAddedToCartDialog(Product product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Added to Cart'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(product.imageUrl, width: 100, height: 100),
              const SizedBox(height: 16),
              Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Continue Shopping'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(context, '/cart');
              },
              child: const Text('Go to Cart'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    final price = PriceRepository.getPrice(product.title) ?? '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Options', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16),
                      DropdownButton<String>(
                        value: _selectedSize,
                        hint: const Text('Size'),
                        isExpanded: true,
                        items: ['small', 'medium', 'Large']
                            .map((String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedSize = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButton<String>(
                        value: _selectedColour,
                        hint: const Text('Colour'),
                        isExpanded: true,
                        items: ['red', 'white', 'black']
                            .map((String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedColour = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButton<int>(
                        value: _selectedQuantity,
                        hint: const Text('Quantity'),
                        isExpanded: true,
                        items: List<int>.generate(10, (i) => i + 1)
                            .map((int value) => DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedQuantity = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: _areOptionsSelected()
                            ? () {
                                Provider.of<Cart>(context, listen: false).add(product);
                                _showAddedToCartDialog(product);
                              }
                            : null,
                        child: Text(_areOptionsSelected() ? 'Add to Cart' : 'Select options'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
