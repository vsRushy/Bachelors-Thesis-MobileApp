import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({ this.uid });

  final CollectionReference collection = FirebaseFirestore.instance.collection('test');

  Future updateUserData(String name) async {
    return await collection.doc(uid).set({
      'name': name,
    });
  }

  Stream<QuerySnapshot> get tests {
    return collection.snapshots();
  }
}