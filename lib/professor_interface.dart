import 'package:application/user_model.dart';
import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfessorInterface extends StatelessWidget {
  Users profUser;

  ProfessorInterface({super.key, required this.profUser});

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
              backgroundImage:
                  AssetImage("assets\\Screenshot 2021-08-22 135451.png"),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        title: const Text(
          "Professor Homepage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${profUser.firstName}!', // Displaying professor's first name
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
