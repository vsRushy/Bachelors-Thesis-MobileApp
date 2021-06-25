import 'package:ai_mobile_app/shared/constants.dart';
import 'package:flutter/material.dart';

class LessonTitle extends StatelessWidget {
  final String text;

  LessonTitle(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    shadows: [
      Shadow(
        blurRadius: 1.0,
        color: Colors.black,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonSubtitle extends StatelessWidget {
  final String text;

  LessonSubtitle(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonSubtitleSmall extends StatelessWidget {
  final String text;

  LessonSubtitleSmall(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonSubtitleVerySmall extends StatelessWidget {
  final String text;

  LessonSubtitleVerySmall(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonText extends StatelessWidget {
  final String text;

  LessonText(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class LessonTextBold extends StatelessWidget {
  final String text;

  LessonTextBold(this.text);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}

class LessonTextCursive extends StatelessWidget {
  final String text;
  final bool? newLine;

  LessonTextCursive(this.text, [this.newLine = true]);

  static final TextStyle style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: style,
        ),
        if (newLine!) SizedBox(height: 15),
      ],
    );
  }
}

class LessonTextUrl extends StatelessWidget {
  final String text;
  final String url;
  final bool? newLine;

  LessonTextUrl(this.text, this.url, [this.newLine = true]);

  static final TextStyle style = TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            launchUrl(url);
          },
          child: Text(
            text,
            style: style,
          ),
        ),
        if (newLine!) SizedBox(height: 15),
      ],
    );
  }
}

class LessonTextUrlCursive extends StatelessWidget {
  final String text;
  final String url;
  final bool? newLine;

  LessonTextUrlCursive(this.text, this.url, [this.newLine = true]);

  static final TextStyle style = TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            launchUrl(url);
          },
          child: Text(
            text,
            style: style,
          ),
        ),
        if (newLine!) SizedBox(height: 15),
      ],
    );
  }
}
