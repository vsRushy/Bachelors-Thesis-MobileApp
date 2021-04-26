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
    final lessons = Provider.of<List<CustomTest>?>(context);

    return ListView.builder(
      itemCount: lessons!.length,
      itemBuilder: (context, index) {
        return LessonItem(test: lessons[index]);
      },
    );
  }
}