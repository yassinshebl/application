import 'package:application/user_model.dart';
import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProfessorInterface extends StatelessWidget {
  final Users user;

  const ProfessorInterface({super.key, required this.user});

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
