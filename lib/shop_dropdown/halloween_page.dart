import 'package:flutter/material.dart';

class HalloweenPage extends StatelessWidget {
  const HalloweenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halloween'),
      ),
      body: const Center(
        child: Text('Halloween Page'),
      ),
    );
  }
}