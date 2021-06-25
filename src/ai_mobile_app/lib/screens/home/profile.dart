import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:ai_mobile_app/shared/constants.dart';
import 'package:ai_mobile_app/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        StreamBuilder<UserData?>(
          stream: DatabaseService(uid: user!.uid).userData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              UserData userData = snapshot.data!;

              return Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Experience",
                          style: profileElementTextStyle,
                        ),
                        Text(
                          userData.experience.toString(),
                          style: profileElementNumberStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Points",
                          style: profileElementTextStyle,
                        ),
                        Text(
                          userData.points.toString(),
                          style: profileElementNumberStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Loading();
            }
          },
        ),
        ElevatedButton(
          child: Text('Log out'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            minimumSize: Size(140, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () async {
            await _auth.signOut();
          },
        ),
      ],
    );
  }
}
