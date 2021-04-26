import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/screens/home/lessons.dart';

class LessonItem extends StatelessWidget {
  final CustomTest test;

  LessonItem({required this.test});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
        child: ListTile(
          title: Text(test.name),
          subtitle: Text('First test (${test.name})'),
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
