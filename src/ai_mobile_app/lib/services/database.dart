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
        testId: doc.data()['testId'] ?? '',
        mark: doc.data()['mark'] ?? '',
        correctAnswers: doc.data()['correctAnswers'] ?? '',
        incorrectAnswers: doc.data()['incorrectAnswers'] ?? '',
      );
    }).toList();
  }

  Stream<List<CustomTest>> get tests {
    return collection.snapshots().map(_testListFromSnapshot);
  }
}
