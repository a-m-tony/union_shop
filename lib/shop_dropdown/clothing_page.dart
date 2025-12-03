import 'package:flutter/material.dart';
import 'package:union_shop/header.dart';

class ClothingPage extends StatelessWidget {
  const ClothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/hat.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/hat2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/clothing4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/hat1.png',
                          fit: BoxFit.cover,
                        ),
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
