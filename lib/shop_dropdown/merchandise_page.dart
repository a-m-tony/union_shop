import 'package:flutter/material.dart';

class MerchandisePage extends StatelessWidget {
  const MerchandisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchandise'),
      ),
      body: const Center(
        child: Text('Merchandise Page'),
      ),
    );
  }
}
