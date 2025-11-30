import 'package:flutter/material.dart';

class GraduationPage extends StatelessWidget {
  const GraduationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graduation'),
      ),
      body: const Center(
        child: Text('Graduation Page'),
      ),
    );
  }
}
