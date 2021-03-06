import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});

  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  Future createUser() async {
    return await collection.doc(uid).set({
      'experience': 0,
      'points': 0,
    });
  }

  Future createCustomTest(
      int testId, double mark, int correctAnswers, int incorrectAnswers) async {
    return await collection.doc(uid).collection('tests').doc().set({
      'testId': testId,
      'mark': mark,
      'correctAnswers': correctAnswers,
      'incorrectAnswers': incorrectAnswers,
    });
  }

  Future updateUserData(int experience, int points) async {
    return await collection.doc(uid).set({
      'experience': experience,
      'points': points,
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

  UserData? _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid!,
      experience: snapshot.data()!['experience'],
      points: snapshot.data()!['points'],
    );
  }

  Stream<List<CustomTest>> get tests {
    return collection
        .doc(uid)
        .collection('tests')
        .snapshots()
        .map(_testListFromSnapshot);
  }

  Stream<UserData?> get userData {
    return collection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
