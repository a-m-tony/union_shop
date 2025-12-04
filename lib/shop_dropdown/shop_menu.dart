import 'package:flutter/material.dart';

class ShopMenu extends StatelessWidget {
  const ShopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String result) {
        switch (result) {
          case 'Clothing':
            Navigator.pushNamed(context, '/clothing');
            break;
          case 'Product':
            Navigator.pushNamed(context, '/product');
            break;
          case 'Collection':
            Navigator.pushNamed(context, '/collection');
            break;
          case 'Graduation':
            Navigator.pushNamed(context, '/graduation');
            break;
          case 'Personalisation':
            Navigator.pushNamed(context, '/personalisation');
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Clothing',
          child: Text('Clothing'),
        ),
        const PopupMenuItem<String>(
          value: 'Product',
          child: Text('Product'),
        ),
        const PopupMenuItem<String>(
          value: 'Collection',
          child: Text('Collection'),
        ),
        const PopupMenuItem<String>(
          value: 'Graduation',
          child: Text('Graduation'),
        ),
        const PopupMenuItem<String>(
          value: 'Personalisation',
          child: Text('Personalisation'),
        ),
      ],
      child: const Row(
        children: [
          Text(
            'Shop',
            style: TextStyle(color: Colors.black),
          ),
          Icon(Icons.arrow_drop_down, color: Colors.black),
        ],
      ),
    );
  }
}
