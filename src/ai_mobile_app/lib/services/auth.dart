import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create custom user
  CustomUser? _createCustomUser(User? user) {
    return CustomUser(uid: user?.uid);
  }

  // User authentication stream
  Stream<CustomUser?> get user {
    return _auth.authStateChanges().map(_createCustomUser);
  }

  // Anonymous sign-in
  Future signInAnonymous() async {
    try {
      UserCredential credential = await _auth.signInAnonymously();
      User? user = credential.user;
      return _createCustomUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // E-mail sign-in
  Future signInEmail(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;
      return _createCustomUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // E-mail register
  Future signUpEmail(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;

      //await DatabaseService(uid: user!.uid).updateUserData(1, 0.0, 0, 0);
      return _createCustomUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
