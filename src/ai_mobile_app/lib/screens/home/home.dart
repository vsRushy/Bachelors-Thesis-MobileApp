import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AI Learning App'),
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          TextButton.icon(
              label: Text('Log out'),
              icon: Icon(Icons.logout),
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: () async {
                await _auth.signOut();
              })
        ],
      ),
    );
  }
}
