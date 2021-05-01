import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/screens/home/lessons.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[800]!,
                hoverColor: Colors.grey[700]!,
                haptic: true,
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                tabBorder: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                tabShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                  )
                ],
                curve: Curves.easeOutExpo,
                duration: Duration(
                  milliseconds: 900,
                ),
                gap: 8,
                color: Colors.grey[800],
                activeColor: Colors.purple,
                iconSize: 24,
                tabBackgroundColor: Colors.purple.withOpacity(0.1),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
