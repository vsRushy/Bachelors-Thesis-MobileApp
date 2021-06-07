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
          subTitle: 'AI & ML concepts and Environment setup',
          description: 'Learn the main concepts of Artificial Intelligence and Machine Learning at the same time of setting up the Environment.',
          moreInfo: "This lesson doesn't have a test.",
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 2,
          icon: Icons.looks_two,
          title: 'Lesson 2',
          subTitle: 'Phase 1: Target finder',
          description: 'Development of an agent that finds a defined target in any direction.',
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 3,
          icon: Icons.looks_3,
          title: 'Lesson 3',
          subTitle: 'Phase 2: Autonomous car using checkpoints.',
          description: 'Create a car that drives autonomously using the checkpoints training method.',
        ),
        SizedBox(
          height: 25.0,
        ),
        LessonItem(
          index: 4,
          icon: Icons.looks_4,
          title: 'Lesson 4',
          subTitle: 'Phase 3: Autonomous car without checkpoints.',
          description: 'Develop a car that drives autonomously without the necessity of using checkpoints.',
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
