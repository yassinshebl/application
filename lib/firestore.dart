import 'dart:async';
import 'package:application/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatasource {
  final _firestore = FirebaseFirestore.instance;
  late StreamController<List<Users>> _usersStreamController;

  Stream<List<Users>> getUsersStream() {
    _usersStreamController = StreamController<List<Users>>();
    _firestore.collection('user').snapshots().listen((snapshot) {
      List<Users> users = [];
      for (var doc in snapshot.docs) {
        var user = _createUserFromSnapshot(doc);
        users.add(user);
      }
      _usersStreamController.add(users);
    });
    return _usersStreamController.stream;
  }

  Users _createUserFromSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    print(data);

    return Users(
      type: data['type'] ?? "",
      email: data['email'] ?? "",
      firstName: data['firstName'] ?? "",
      lastName: data['lastName'] ?? "",
    );
  }

  void dispose() {
    _usersStreamController.close();
  }
}
