import 'package:ai_mobile_app/shared/lesson_text_styles.dart';
import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  final int? index;

  LessonPage(this.index);

  SingleChildScrollView? _currentLessonPage() {
    switch (index) {
      case 1:
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              LessonTitle("Title"),
              LessonSubtitle("Subtitle"),
              LessonText("Text"),
            ],
          ),
        );

      case 2:
        return SingleChildScrollView();

      case 3:
        return SingleChildScrollView();

      case 4:
        return SingleChildScrollView();

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
