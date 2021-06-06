import 'package:flutter/material.dart';

class LessonTitle extends StatelessWidget {
  final String text;

  LessonTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}

class LessonSubtitle extends StatelessWidget {
  final String text;

  LessonSubtitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}

class LessonText extends StatelessWidget {
  final String text;

  LessonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 20,
      ),
    );
  }
}
