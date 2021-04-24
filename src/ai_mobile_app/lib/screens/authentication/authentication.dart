import 'package:ai_mobile_app/screens/authentication/sign_in.dart';
import 'package:ai_mobile_app/screens/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignUp(),
    );
  }
}
