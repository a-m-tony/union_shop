import 'package:flutter/material.dart';
import '../header.dart';
import '../product_card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final products = const [
    ProductCard(
      title: 'Placeholder Product 1',
      price: '£10.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 2',
      price: '£15.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 3',
      price: '£20.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 4',
      price: '£25.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 5',
      price: '£10.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 6',
      price: '£15.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 7',
      price: '£20.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
    ProductCard(
      title: 'Placeholder Product 8',
      price: '£25.00',
      imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    ),
  ];

  String? _selectedSize;
  String? _selectedColour;
  int? _selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Products',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: SizedBox(
                          height: 300,
                          child: products[index],
                        ),
                      );
                    },
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
