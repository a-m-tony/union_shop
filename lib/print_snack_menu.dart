import 'package:flutter/material.dart';

class PrintSnackMenu extends StatelessWidget {
  const PrintSnackMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String result) {
        switch (result) {
          case 'About The Print Snack':
            Navigator.pushNamed(context, '/about-print-snack');
            break;
          case 'Personalisation':
            Navigator.pushNamed(context, '/personalisation');
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'About The Print Snack',
          child: Text('About The Print Snack'),
        ),
        const PopupMenuItem<String>(
          value: 'Personalisation',
          child: Text('Personalisation'),
        ),
      ],
      child: const Row(
        children: [
          Text(
            'The Print Snack',
            style: TextStyle(color: Colors.black),
          ),
          Icon(Icons.arrow_drop_down, color: Colors.black),
        ],
      ),
    );
  }
}
