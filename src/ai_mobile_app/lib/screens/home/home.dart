import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/screens/home/lessons.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<CustomTest>?>.value(
      value: DatabaseService().tests,
      initialData: null,
      child: Scaffold(
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
        body: Lessons(),
      ),
    );
  }
}
