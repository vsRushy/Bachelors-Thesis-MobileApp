import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LessonTitle extends StatelessWidget {
  final String text;

  LessonTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
            fontSize: 32,
            shadows: [
              Shadow(
                blurRadius: 1.0,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonSubtitle extends StatelessWidget {
  final String text;

  LessonSubtitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonSubtitleSmall extends StatelessWidget {
  final String text;

  LessonSubtitleSmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonText extends StatelessWidget {
  final String text;

  LessonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonTextBold extends StatelessWidget {
  final String text;

  LessonTextBold(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class LessonTextCursive extends StatelessWidget {
  final String text;
  final bool? newLine;

  LessonTextCursive(this.text, [this.newLine = true]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        if (newLine!) SizedBox(height: 15),
      ],
    );
  }
}

class LessonTextUrl extends StatelessWidget {
  final String text;
  final bool? newLine;

  LessonTextUrl(this.text, [this.newLine = true]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            String url = Uri.encodeFull(
                "https://github.com/Unity-Technologies/ml-agents/blob/main/docs/Installation.md");
            launch(url);
          },
          child: Text(
            text,
            style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ),
        if (newLine!) SizedBox(height: 15),
      ],
    );
  }
}
