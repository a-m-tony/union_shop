import 'package:flutter/material.dart';
import 'package:union_shop/clothing_page.dart';
import 'package:union_shop/merchandise_page.dart';
import 'package:union_shop/signal_essentials_page.dart';
import 'package:union_shop/portsmouth_collection_page.dart';
import 'package:union_shop/pride_collection_page.dart';
import 'package:union_shop/graduation_page.dart';

class ShopMenu extends StatelessWidget {
  const ShopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String result) {
        switch (result) {
          case 'Clothing':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ClothingPage()),
            );
            break;
          case 'Merchandise':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MerchandisePage()),
            );
            break;
          case 'Signal & Essential Range':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignalEssentialsPage()),
            );
            break;
          case 'Portsmouth Collection':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PortsmouthCollectionPage()),
            );
            break;
          case 'Pride Collection':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrideCollectionPage()),
            );
            break;
          case 'Graduation':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GraduationPage()),
            );
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Clothing',
          child: Text('Clothing'),
        ),
        const PopupMenuItem<String>(
          value: 'Merchandise',
          child: Text('Merchandise'),
        ),
        const PopupMenuItem<String>(
          value: 'Signal & Essential Range',
          child: Text('Signal & Essential Range'),
        ),
        const PopupMenuItem<String>(
          value: 'Portsmouth Collection',
          child: Text('Portsmouth Collection'),
        ),
        const PopupMenuItem<String>(
          value: 'Pride Collection',
          child: Text('Pride Collection'),
        ),
        const PopupMenuItem<String>(
          value: 'Graduation',
          child: Text('Graduation'),
        ),
      ],
      child: const Text(
        'Shop',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
