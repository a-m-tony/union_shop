import 'package:flutter/material.dart';

class ShopModal extends StatelessWidget {
  const ShopModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Shop Categories'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('Category 1'),
            Text('Category 2'),
            Text('Category 3'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
