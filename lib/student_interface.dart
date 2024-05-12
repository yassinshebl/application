import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

class StudentInterface extends StatelessWidget {
  const StudentInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      appBar: AppBar(
        title: const Text(
          'Student Interface',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppTheme.accent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(
        child: Text('Welcome, Student!'),
      ),
    );
  }
}
