import 'package:ai_mobile_app/models/custom_test.dart';
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

  List<CustomTest> _testListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return CustomTest(
        name: doc.data()['name'] ?? '',
      );
    }).toList();
  }

  Stream<List<CustomTest>> get tests {
    return collection.snapshots().map(_testListFromSnapshot);
  }
}