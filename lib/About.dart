import 'package:flutter/material.dart';

class AboutPrintSnackPage extends StatelessWidget {
  const AboutPrintSnackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About The Print Snack'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 16, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Welcome to the Union Shop!\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        'We’re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!\n\n'),
                TextSpan(
                    text:
                        'All online purchases are available for delivery or instore collection!\n\n'),
                TextSpan(
                    text:
                        'We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
