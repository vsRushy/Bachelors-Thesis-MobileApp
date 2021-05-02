import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/screens/home/lessons.dart';
import 'package:ai_mobile_app/screens/home/profile.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  int _selectedIndex = 0;

  static List<Widget> _bodyOptions = <Widget>[
    Lessons(),
    Lessons(),
    Lessons(),
    Profile(),
  ];

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
        body: _bodyOptions.elementAt(_selectedIndex),
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
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: GNav(
                rippleColor: Colors.lightBlue,
                hoverColor: Colors.lightBlue[100]!,
                haptic: true,
                tabBorderRadius: 9,
                tabActiveBorder: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                tabBorder: Border.all(
                  color: Colors.lightBlue,
                  width: 1,
                ),
                curve: Curves.easeOutExpo,
                duration: Duration(
                  milliseconds: 900,
                ),
                gap: 8,
                color: Colors.lightBlue,
                activeColor: Colors.blue,
                iconSize: 24,
                tabBackgroundColor: Colors.lightBlue.withOpacity(0.1),
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
                    icon: LineIcons.questionCircleAlt,
                    text: 'Tests',
                  ),
                  GButton(
                    icon: LineIcons.book,
                    text: 'Summary',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
