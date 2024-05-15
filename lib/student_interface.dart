import 'package:application/user_model.dart';
import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

class StudentInterface extends StatelessWidget {
  final Users user;

  const StudentInterface({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppTheme.accent,
        actions: [
          GestureDetector(
            onTap: () {
              // Handle profile section press
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets\\Snapchat-243070012.jpg"),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        title: const Text(
          "Student Homepage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text('Welcome, Student!'),
      ),
    );
  }
}
