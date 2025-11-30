import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  const ClothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothing'),
      ),
      body: const Center(
        child: Text('Clothing Page'),
      ),
    );
  }
}
