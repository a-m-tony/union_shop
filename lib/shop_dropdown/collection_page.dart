import 'package:flutter/material.dart';
import 'package:union_shop/header.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: Center(
              child: Text('Collection Page'),
            ),
          ),
        ],
      ),
    );
  }
}
