import 'package:flutter/material.dart';
import '../header.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                // You can add search results here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
