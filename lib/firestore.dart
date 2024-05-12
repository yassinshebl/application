import 'package:application/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Firestore_Datasource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> CreateUser(String email, String type) async {
    try {
      await _firestore.collection('user').doc(_auth.currentUser!.uid).set({
        "uid": _auth.currentUser!.uid,
        "email": _auth.currentUser!.email,
        "type": type,
      });
      return true;
    } catch (e) {
      return true;
    }
  }

  Stream<List<Users>> getUsersStream() {
    return _firestore.collection('user').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Users(
          data['type'],
          data['email'],
        );
      }).toList();
    });
  }
}
