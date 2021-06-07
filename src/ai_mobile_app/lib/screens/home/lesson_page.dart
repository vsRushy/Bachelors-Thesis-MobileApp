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
                LessonTitle("AI & ML concepts and Environment setup"),
                SizedBox(height: 15),
                LessonSubtitle("Introduction"),
                SizedBox(height: 15),
                LessonText(
                    "The first lesson consists on explaining the main concepts of AI and ML and also set up the Environment. It is crucial to set up the environment correctly because all of the next lessons are based on this setup."),
                SizedBox(height: 15),
                LessonSubtitle("Requirements"),
                SizedBox(height: 15),
                LessonText("Unity"),
                SizedBox(height: 15),
                LessonText("ML-Agents"),
                SizedBox(height: 15),
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
                LessonText(
                    "The phase 1 consists in developing an agent that learns to find a defined target."),
                SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/first_phase_individual.jpg",
                  ),
                ),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Algorithm used: "),
                  LessonText("PPO.")
                ]),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Difficulty: "),
                  LessonText("Easy.")
                ]),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                SizedBox(height: 15),
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
                LessonTitle("Phase 2: Car driving with checkpoints"),
                SizedBox(height: 15),
                LessonSubtitle("Introduction"),
                SizedBox(height: 15),
                LessonText(
                    "The phase 2 consists in developing a car agent that learns to drive through a defined track using the checkpoint method."),
                SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_track.jpg",
                  ),
                ),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Algorithm used: "),
                  LessonText("PPO.")
                ]),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Difficulty: "),
                  LessonText("Medium.")
                ]),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                SizedBox(height: 15),
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
                LessonTitle("Phase 3: Car driving without checkpoints"),
                SizedBox(height: 15),
                LessonSubtitle("Introduction"),
                SizedBox(height: 15),
                LessonText(
                    "The phase 3 consists in developing a car agent that learns to drive through a defined track without checkpoints."),
                SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    "assets/images/phase3/phase3_track.jpg",
                  ),
                ),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Algorithm used: "),
                  LessonText("SAC.")
                ]),
                SizedBox(height: 15),
                Row(children: [
                  LessonTextBold("Difficulty: "),
                  LessonText("Hard.")
                ]),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                SizedBox(height: 15),
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
