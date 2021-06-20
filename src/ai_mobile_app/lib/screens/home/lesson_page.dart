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
            padding: EdgeInsets.all(26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LessonTitle("AI & ML concepts and Environment setup"),
                LessonSubtitle("Introduction"),
                LessonText(
                    "The first lesson consists on explaining the main concepts of AI and ML and also set up the Environment. It is crucial to set up the environment correctly because all of the next lessons are based on this setup."),
                LessonSubtitle("Requirements"),
                LessonText("Unity 2020.3.0f1 LTS."),
                LessonText("ML-Agents 2.0.0."),
                LessonTextCursive("Note: To install the software above, please click "),
                LessonSubtitle("What is Machine Learning?"),
                LessonText(
                    "Machine learning is a subset or branch of Artificial Intelligence that imitate the way humans learn making use of data and algorithms."),
                LessonText(
                    "An agent is the entity that has to go through the training process in order to do some tasks. An agent, because of the training, should be capable to know how to act in front of any situation."),
                LessonSubtitle("The concept of an agent"),
                LessonText("An agent, which is the training entity, is divided into three parts."),
                LessonSubtitleSmall("Actions"),
                LessonText(""),
                LessonSubtitleSmall("Observations"),
                LessonText(""),
                LessonSubtitleSmall("Rewards"),
                LessonText(""),
                LessonSubtitle("Types of actions"),
                LessonSubtitleSmall("Continuous"),
                LessonText(""),
                LessonSubtitleSmall("Discrete"),
                LessonText(""),
                LessonSubtitle("Types of algorithms"),
                LessonSubtitleSmall("Proximal Policy Optimization"),
                LessonText(
                    "PPO is a Deep Reinforcement Learning (DLR) algorithm mainly used on any physical-based activity. Even though it's very effective, reaching very high-quality results, it is not very efficient. The main reason for that is because it needs large amounts of training data and, thus, training time. PPO is an on-policy algorithm. Essentially, it implies that the agent's optimal policy value is calculated taking into account the agent's actions."),
                LessonSubtitleSmall("Soft Actor-Critic"),
                 LessonText("SAC is "),
                LessonSubtitleSmall("Generative Adversarial Imitation Learning"),
                LessonSubtitleSmall("Behavioral Cloning"),
                LessonSubtitle("Training concepts"),
                LessonSubtitleSmall("Sample throughput"),
                LessonText("It is the number of samples gathered in any period of time. It is generally measured in seconds. The higher, the better."),
                LessonSubtitleSmall("Sample efficiency"),
                LessonText("It is the number of samples required to learn good and correct behaviour. The lesser, the better."),
                LessonSubtitle("Next steps"),
                LessonText(
                    "On the following lessons, we will develop intelligent agents using Machine Learning and Artificial Neural Networks, so that we can actually put these concepts into practice."),
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
        actions: <Widget>[],
      ),
      body: _currentLessonPage(),
    );
  }
}
