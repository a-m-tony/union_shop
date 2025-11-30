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
          case 'Merchandise':
            Navigator.pushNamed(context, '/merchandise');
            break;
          case 'Signal & Essential Range':
            Navigator.pushNamed(context, '/signal-essentials');
            break;
          case 'Portsmouth Collection':
            Navigator.pushNamed(context, '/portsmouth-collection');
            break;
          case 'Pride Collection':
            Navigator.pushNamed(context, '/pride-collection');
            break;
          case 'Graduation':
            Navigator.pushNamed(context, '/graduation');
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
