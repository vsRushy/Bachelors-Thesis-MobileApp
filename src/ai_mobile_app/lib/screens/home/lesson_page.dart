import 'package:ai_mobile_app/shared/lesson_text_styles.dart';
import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  final int? index;

  LessonPage(this.index);

  SingleChildScrollView? _currentLessonPage() {
    switch (index) {
      case 1:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("Title"),
                LessonSubtitle("Subtitle"),
                LessonText("Text"),
              ],
            ),
          ),
        );

      case 2:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("Phase 1: Target finder"),
                SizedBox(height: 15),
                LessonSubtitle("Introduction"),
                SizedBox(height: 15),
                LessonText("The phase 1 consists in developing an agent that learns to find a defined target."),
              ],
            ),
          ),
        );

      case 3:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("Title"),
                LessonSubtitle("Subtitle"),
                LessonText("Text"),
              ],
            ),
          ),
        );

      case 4:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("Title"),
                LessonSubtitle("Subtitle"),
                LessonText("Text"),
              ],
            ),
          ),
        );

      case 5:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("Title"),
                LessonSubtitle("Subtitle"),
                LessonText("Text"),
              ],
            ),
          ),
        );

      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson $index'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {},
          ),
        ],
      ),
      body: _currentLessonPage(),
    );
  }
}
