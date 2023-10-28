import 'package:firebase_auth/firebase_auth.dart';
import 'package:mysql_client/mysql_client.dart';

Future<bool> checkIfUserIsAdmin(User? user) async {
  if (user == null) {
    return false;
  }

  final conn = await MySQLConnection.createConnection(
    host: '172.20.10.3',
    port: 3306,
    userName: 'root',
    password: 'wadihan0610',
    databaseName: 'mpkps',
  );

  // actually connect to database
  await conn.connect();

  final result = await conn.execute(
      'SELECT role FROM users WHERE uid = ?', [user.uid] as Map<String, dynamic>?);

  await conn.close();

  if (result.rows.isNotEmpty) {
    final row = result.rows.first;
    final String? role = row.colAt(0);
    return role == 'admin';
  } else {
    return false;
  }
}
