import 'package:ai_mobile_app/shared/constants.dart';
import 'package:ai_mobile_app/shared/lesson_text_styles.dart';
import 'package:flutter/gestures.dart';
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Note: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(
                          text: "To install the software above, please click ",
                          style: LessonTextCursive.style),
                      TextSpan(
                        text: "here",
                        style: LessonTextUrlCursive.style,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                                "https://github.com/Unity-Technologies/ml-agents/blob/main/docs/Installation.md");
                          },
                      ),
                      TextSpan(
                          text: " and follow the instructions.",
                          style: LessonTextCursive.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitle("What is Machine Learning?"),
                LessonText(
                    "Machine learning is a subset or branch of Artificial Intelligence that imitate the way humans learn making use of data and algorithms."),
                LessonText(
                    "An agent is the entity that has to go through the training process in order to do some tasks. An agent, because of the training, should be capable to know how to act in front of any situation."),
                LessonSubtitle("The concept of an agent"),
                LessonText(
                    "An agent, which is the training entity, has three main properties that affect its behaviour. They are as follows:"),
                LessonSubtitleSmall("Actions"),
                LessonText(
                    "An agent can do decisions on its own, given by the Actions Vector. Essentially, an agent has a vector that contains a value that refers to an acrtion. On the next two points, this is explained in more detail."),
                LessonSubtitleVerySmall("Continuous"),
                LessonText(
                    "The values stored in the Actions Vector are floating points. Each floating point value can vary continuously, defining and modifying the action. The clearest example is as follows: a spaceship that exists in a 3-dimensional space can move towards each axis. Thus, the Action Vector will be of size 3. For instance, the first value in the Action Vector could define the y-axis velocity. If it is positive, it means the spaceship is moving upwards, and the same happens in the inverse direction, if the value is negative. It is important to mention that each value varies in a continuous manner."),
                LessonSubtitleVerySmall("Discrete"),
                LessonText(
                    "The Actions Vector regarding the discrete actions contains branches. Each branch is another vector  with a predefined size that contains integers. Fundamentally, a branch defines an action. In order to visualize this, let's imagine an object that can move in a single axis and also jumping. One branch would refer to the movement, and the other one to the jumping. Furthermore, the movement branch would contain a vector with three integers, for instance: 0 for staying, 1 for moving forward, and 2 for moving backwards. Following the same manner, the jumping branch would contain the integer 0 for not jumping and the integer 1 for actually jumping."),
                LessonSubtitleSmall("Observations"),
                LessonText(
                    "An agent stores a Vector Observation Space: Because an agent needs to decide what action to take, before hand it needs to collect information about the environment. This is made by observing the state of the world. An agent has a vector of floating point numbers that containt the information about the enironment. For instance, in a 2-dimensional world, let's say an agent wants to collect its position and also the position of an enemy. The observations vector lenght would equal 4, because it contains the x and y coordinates of said entities."),
                LessonSubtitleSmall("Rewards"),
                LessonText("An agent needs to be given rewards in order to learn and train. Rewards can be either positive and negative. On the next lessons, we will see in more detail the usage of said concept."),
                LessonSubtitleVerySmall("Positive"),
                LessonText("If a positive reward is given to an agent, this means that the agent interprets that the action it has done is correct. By accumulating positive rewards, the agent, after many generations, will completely understand what are the correct actions to do based in the rewards it was given."),
                LessonSubtitleVerySmall("Negative"),
                LessonText("The negative rewards are the same as the positive ones, but viceversa. If an agent is given a negative reward, during the next generations it will avoid to do actions that lead to a negative reward."),
                LessonSubtitle("Types of AI algorithms"),
                LessonSubtitleSmall("Proximal Policy Optimization"),
                LessonText(
                    "PPO is a Deep Reinforcement Learning (DLR) algorithm mainly used on any physical-based activity. Even though it's very effective, reaching very high-quality results, it is not very efficient. The main reason for that is because it needs large amounts of training data and, thus, training time. PPO is an on-policy algorithm. Essentially, it implies that the agent's optimal policy value is calculated taking into account the agent's actions."),
                LessonSubtitleSmall("Soft Actor-Critic"),
                LessonText("SAC is "),
                LessonSubtitleSmall(
                    "Generative Adversarial Imitation Learning"),
                LessonSubtitleSmall("Behavioral Cloning"),
                LessonSubtitle("Training concepts"),
                LessonSubtitleSmall("Sample throughput"),
                LessonText(
                    "It is the number of samples gathered in any period of time. It is generally measured in seconds. The higher, the better."),
                LessonSubtitleSmall("Sample efficiency"),
                LessonText(
                    "It is the number of samples required to learn good and correct behaviour. The lesser, the better."),
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
