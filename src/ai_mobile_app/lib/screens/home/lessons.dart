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
        Container(
          padding: EdgeInsets.all(1),
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
          ),
          child: Card(
            color: Colors.lightBlue,
            shadowColor: Colors.black,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.looks_one),
                  title: Text(
                    'Lesson 1',
                  ),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'This is the first lesson.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text('START'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('More info'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white,
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
          ),
          child: Card(
            color: Colors.lightBlue,
            shadowColor: Colors.black,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    'Lesson 2',
                  ),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Lorem Ipsum Dolor Avet Sit Amet.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text('ACTION 1'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('ACTION 2'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white,
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
          ),
          child: Card(
            color: Colors.lightBlue,
            shadowColor: Colors.black,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.looks_3),
                  title: Text(
                    'Lesson 3',
                  ),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Lorem Ipsum Dolor Avet Sit Amet.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text('ACTION 1'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('ACTION 2'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white,
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
          ),
          child: Card(
            color: Colors.lightBlue,
            shadowColor: Colors.black,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.looks_4),
                  title: Text(
                    'Lesson 4',
                  ),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Lorem Ipsum Dolor Avet Sit Amet.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text('ACTION 1'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('ACTION 2'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
