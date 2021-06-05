import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/screens/home/lesson_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    /*final lessons = Provider.of<List<CustomTest>?>(context);

    return ListView.builder(
      itemCount: lessons!.length,
      itemBuilder: (context, index) {
        return LessonItem(test: lessons[index]);
      },
    );*/

    return ListView(
      padding: EdgeInsets.all(25),
      children: <Widget>[
        LessonItem(
          index: 1,
          icon: Icons.looks_one,
          title: 'Lesson 1',
          subTitle: 'Environment setup',
          description: 'This is the first lesson.',
          moreInfo: "This lesson doesn't have a test.",
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 2,
          icon: Icons.looks_two,
          title: 'Lesson 2',
          subTitle: 'Simple ANN movement',
          description: 'This is the second lesson.',
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 3,
          icon: Icons.looks_3,
          title: 'Lesson 3',
          subTitle: 'Autonomous car using checkpoints.',
          description: 'A car that drives autonomously using the checkpoints training method.',
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 4,
          icon: Icons.looks_4,
          title: 'Lesson 4',
          subTitle: 'Car ANN movement #2',
          description: 'This is the fourth lesson.',
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 5,
          icon: Icons.looks_5,
          title: 'Lesson 5',
          subTitle: 'Own Artificial Neural Network',
          description: 'This is the fifth lesson.',
        ),
      ],
    );
  }
}
