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

  String? _selectedOption1;
  String? _selectedOption2;
  String? _selectedOption3;

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
                        value: _selectedOption1,
                        hint: const Text('Dropdown 1'),
                        isExpanded: true,
                        items: ['Option A', 'Option B', 'Option C']
                            .map((String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedOption1 = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButton<String>(
                        value: _selectedOption2,
                        hint: const Text('Dropdown 2'),
                        isExpanded: true,
                        items: ['Option D', 'Option E', 'Option F']
                            .map((String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedOption2 = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButton<String>(
                        value: _selectedOption3,
                        hint: const Text('Dropdown 3'),
                        isExpanded: true,
                        items: ['Option G', 'Option H', 'Option I']
                            .map((String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedOption3 = newValue;
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
