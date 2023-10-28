import 'package:firebase_auth/firebase_auth.dart';
import 'package:mysql1/mysql1.dart';

Future<bool> checkIfUserIsAdmin(User? user) async {
  if (user == null) {
    return false;
  }

  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: '172.20.10.3',
    port: 3306,
    user: 'root',
    password: 'wadihan0610',
    db: 'mpkps',
  ));

  final results = await conn.query( //ERROR : SocketException (SocketException: Socket has been closed)
      'SELECT role FROM users WHERE uid = ?', [user.uid]);

  await conn.close();

  if (results.isNotEmpty) {
    final row = results.first;
    final String role = row[0];
    return role == 'admin';
  } else {
    return false;
  }
}
