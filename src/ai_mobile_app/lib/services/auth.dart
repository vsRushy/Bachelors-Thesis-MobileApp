import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Anonymous sign-in
  Future signInAnonymous() async {
    try {
      UserCredential credential = await _auth.signInAnonymously();
      User? user = credential.user;
      return user;
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // E-mail sign-in
  

  // E-mail register
  

  // Sign out
}