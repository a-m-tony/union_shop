import 'package:flutter/material.dart';
import 'package:union_shop/header.dart';

class AboutPrintSnackPage extends StatelessWidget {
  const AboutPrintSnackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About The Print Snack'),
      ),
      body: const Column(
        children: [
          Header(),
          Center(
            child: Text('This is the About The Print Snack page.'),
          ),
        ],
      ),
    );
  }
}
