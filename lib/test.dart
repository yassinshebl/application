import 'package:application/mysql.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final db = Mysql();
  var mail = '';

  Future<void> _getMail() async {
    try {
      final conn = await db.getConnection();
      print('Connected to database');

      final results = await conn
          .query('SELECT s_Email FROM student WHERE s_StudentID = 221100986;');

      print(
          'SQL Query executed: SELECT s_Email FROM student WHERE s_StudentID = 221100986;');

      print('Results: $results');

      if (results.isNotEmpty) {
        setState(() {
          mail = results.first[0]
              .toString();
        });
      } else {
        setState(() {
          mail = 'Email not found';
        });
      }

      await conn.close(); // Close connection after all queries are done
      print('Connection closed');
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Email:',
            ),
            Text(
              mail,
            ),
            FloatingActionButton(
              onPressed: _getMail,
              tooltip: 'Get Email',
              child: const Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}
