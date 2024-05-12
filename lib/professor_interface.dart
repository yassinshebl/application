import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProfessorInterface extends StatelessWidget {
  const ProfessorInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      appBar: AppBar(
        title: const Text(
          'Professor Interface',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppTheme.accent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome, Professor!'),
        ],
      ),
    );
  }
}
