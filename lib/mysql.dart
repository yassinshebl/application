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
