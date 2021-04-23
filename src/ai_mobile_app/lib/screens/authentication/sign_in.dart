import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text('Sign in as anonymous'),
          onPressed: () async {
            dynamic result = await _auth.signInAnonymous();
            if (result != null) {
              print('Signed in anonimously');
              print(result.uid);
            } else {
              print('Error signing in');
            }
          },
        ),
      ),
    );
  }
}
