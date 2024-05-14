import 'package:application/user_model.dart';
import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

class StudentInterface extends StatelessWidget {
  final Users user;

  const StudentInterface({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      appBar: AppBar(
        backgroundColor: AppTheme.accent,
        actions: [
          GestureDetector(
            onTap: () {
              // Handle profile section press
            },
            child: const CircleAvatar(
              // You can replace this with your profile image or icon
              backgroundImage: AssetImage("assets/profile_picture.png"),
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
