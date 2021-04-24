import 'package:ai_mobile_app/screens/authentication/sign_in.dart';
import 'package:ai_mobile_app/screens/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool is_sign_in = true;

  void toggleAuthenticationType() {
    setState(() {
      is_sign_in = !is_sign_in;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (is_sign_in) ? SignIn(toggleAuthenticationType: toggleAuthenticationType)
    : SignUp(toggleAuthenticationType: toggleAuthenticationType);
  }
}
