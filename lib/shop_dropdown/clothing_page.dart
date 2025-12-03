import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  const ClothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothing'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/images/clothes7.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/clothing3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/hat.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/clothing2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/clothing.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/hat2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/clothing4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/clothing4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/hat1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}