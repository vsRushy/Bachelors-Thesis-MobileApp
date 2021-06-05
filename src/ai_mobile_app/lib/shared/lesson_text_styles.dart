import 'package:flutter/material.dart';

class LessonTitle extends StatelessWidget {
  final String text;

  LessonTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class LessonSubtitle extends StatelessWidget {
  final String text;

  LessonSubtitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class LessonText extends StatelessWidget {
  final String text;

  LessonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}