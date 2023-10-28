import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Add this line

Future<bool> checkIfUserIsAdmin(User? user) async {
  if (user == null) {
    return false;
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final DocumentSnapshot docSnap = await firestore.collection('users').doc(user.uid).get();

  if (docSnap.exists) {
    final Map<String, dynamic>? data = docSnap.data() as Map<String, dynamic>?;
    final String? role = data?['role'];
    return role == 'admin';
  } else {
    return false;
  }
}
