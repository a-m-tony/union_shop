import 'package:flutter/material.dart';
import 'About.dart';
import 'shop_dropdown/product_page.dart';
import 'sale_page.dart';
import 'shop_dropdown/clothing_page.dart';
import 'shop_dropdown/graduation_page.dart';
import 'shop_dropdown/collection_page.dart';
import 'shop_dropdown/shop_menu.dart';
import 'about_us_page.dart';
import 'header.dart';
import 'shop_dropdown/Personalisation.dart';
import 'product_card.dart';
import 'model/product.dart';

void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/product': (context) => const ProductPage(),
        '/about': (context) => const AboutUsPage(),
        '/clothing': (context) => const ClothingPage(),
        '/collection': (context) => const CollectionPage(),
        '/graduation': (context) => const GraduationPage(),
        '/about-print-snack': (context) => const AboutPrintSnackPage(),
        '/personalisation': (context) => const PersonalisationPage(),
        '/sale': (context) => const SalePage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void navigateToAbout(BuildContext context) {
    Navigator.pushNamed(context, '/about');
  }

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }

  @override
  Widget build(BuildContext context) {
    const products = [
      Product(
        title: 'Placeholder Product 1',
        price: '£10.00',
        imageUrl:
            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
      ),
      Product(
        title: 'Placeholder Product 2',
        price: '£15.00',
        imageUrl:
            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
      ),
      Product(
        title: 'Placeholder Product 3',
        price: '£20.00',
        imageUrl:
            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
      ),
      Product(
        title: 'Placeholder Product 4',
        price: '£25.00',
        imageUrl:
            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Essential Range - Over 20 % off',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "20% range come & grab",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        const ShopMenu(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: products
                          .map((product) => ProductCard(
                                title: product.title,
                                price: product.price,
                                imageUrl: product.imageUrl,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Opening Hours',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '❄️ Winter Break Closure ❄️',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Closing 4pm 19/12/2025',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Reopening 10am 5/01/2026',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Last post date: 12 pm on 18/12/2025',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '-----------------------',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '(Term Time)',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Monday - Friday 10am - 4pm',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '(Outside of Term Time / Consolidation Weeks)',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Monday - Friday 10am - 3pm',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                                            Text(
                        ' Purchase online 24/7',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Help and Information',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height:.8),
                      Text('Search', style: const TextStyle(fontSize: 12)),
                      SizedBox(height: 8),
                      Text('Delivery Information', style: const TextStyle(fontSize: 12)),
                      SizedBox(height: 8),
                      Text('Returns and Refunds', style: const TextStyle(fontSize: 12)),
                      SizedBox(height: 8),
                      Text('FAQs', style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latest Offers',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Check out our latest deals!', style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
