import 'package:ai_mobile_app/models/custom_user.dart';
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
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // E-mail sign-in
  

  // E-mail register
  

  // Sign out
}