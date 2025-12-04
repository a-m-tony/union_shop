import 'package:flutter/material.dart';
import '../header.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: Center(
              child: Text('List Page'),
            ),
          ),
        ],
      ),
    );
  }
}
