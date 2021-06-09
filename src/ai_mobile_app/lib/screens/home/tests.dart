import 'package:ai_mobile_app/data/test_questions.dart';
import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:ai_mobile_app/screens/home/lesson_item.dart';
import 'package:ai_mobile_app/screens/home/test_page.dart';
import 'package:ai_mobile_app/models/test_item.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Tests extends StatefulWidget {
  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  final AuthService _auth = AuthService();

  List<TestItem> tests = [
    TestItem(
      name: 'First test',
      number: 1,
    ),
    TestItem(
      name: 'Second test',
      number: 2,
    ),
    TestItem(
      name: 'Third test',
      number: 3,
    ),
    TestItem(
      name: 'Fourth test',
      number: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(25),
      itemCount: tests.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          margin: EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(1.2, 0.0),
              colors: <Color>[Colors.white, Colors.lightBlue],
              tileMode: TileMode.repeated,
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.book),
            title: Text(tests[index].name!),
            subtitle: Text('Points: 10  Experience: 100'),
            //trailing: Icon(Icons.expand_more), TODO on summary?
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(category: QuestionCategory(name: "Test $index", questions: questionLibrary),)));
            },
            enabled: true, // TODO: change for locked tests
          ),
        );
      },
    );
  }
}
