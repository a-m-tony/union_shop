
import 'package:flutter/material.dart';

class PersonalisationPage extends StatelessWidget {
  const PersonalisationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalisation'),
      ),
      body: const Center(
        child: Text('This is the Personalisation page.'),
      ),
    );
  }
}
