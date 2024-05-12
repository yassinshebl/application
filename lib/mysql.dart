import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

class Mysql {
  static const String host = 'localhost';
  static const String user = 'root';
  static const String password = 'MySQL_12345';
  static const String db = 'university';
  static const int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final db = Mysql();
  String mail = '';

  Future<void> _getMail() async {
    try {
      final conn = await db.getConnection();
      final results = await conn
          .query('SELECT s_Email FROM student WHERE s_StudentID = 221100986');
      print(results);
      await conn.close();
      if (results.isNotEmpty) {
        setState(() {
          mail = results.first[0].toString();
        });
      } else {
        setState(() {
          mail = 'Email not found';
        });
      }
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getMail,
        tooltip: 'Get Email',
        child: const Icon(Icons.email),
      ),
    );
  }
}
