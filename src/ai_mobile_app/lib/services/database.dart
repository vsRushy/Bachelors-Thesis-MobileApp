import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});

  final CollectionReference collection =
      FirebaseFirestore.instance.collection('tests');

  Future updateUserData(
      int testId, double mark, int correctAnswers, int incorrectAnswers) async {
    return await collection.doc(uid).set({
      'testId': testId,
      'mark': mark,
      'correctAnswers': correctAnswers,
      'incorrectAnswers': incorrectAnswers,
    });
  }

  List<CustomTest> _testListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return CustomTest(
        testId: doc.data()['testId'] ?? 1,
        mark: doc.data()['mark'] ?? 0.0,
        correctAnswers: doc.data()['correctAnswers'] ?? 0,
        incorrectAnswers: doc.data()['incorrectAnswers'] ?? 0,
      );
    }).toList();
  }

  Stream<List<CustomTest>> get tests {
    return collection.snapshots().map(_testListFromSnapshot);
  }
}
