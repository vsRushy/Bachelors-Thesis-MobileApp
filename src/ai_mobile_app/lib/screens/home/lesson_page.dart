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
                    "Machine learning is a subset or branch of Artificial Intelligence that imitates the way humans learn making use of data and algorithms."),
                LessonText(
                    "An agent is the entity that has to go through a training process in order to achieve some tasks. Because of the training, an agent should be capable to know how to act in front of any situation."),
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
                LessonText(
                    "An agent needs to be given rewards in order to learn and train. Rewards can be either positive and negative. On the next lessons, we will see in more detail the usage of said concept."),
                LessonSubtitleVerySmall("Positive"),
                LessonText(
                    "If a positive reward is given to an agent, this means that the agent interprets that the action it has done is correct. By accumulating positive rewards, the agent, after many generations, will completely understand what are the correct actions to do based in the rewards it was given."),
                LessonSubtitleVerySmall("Negative"),
                LessonText(
                    "The negative rewards are the same as the positive ones, but viceversa. If an agent is given a negative reward, during the next generations it will avoid to do actions that lead to a negative reward."),
                LessonSubtitle("Training concepts"),
                LessonSubtitleSmall("Sample throughput"),
                LessonText(
                    "It is the number of samples gathered in any period of time. It is generally measured in seconds. The higher, the better."),
                LessonSubtitleSmall("Sample efficiency"),
                LessonText(
                    "It is the number of samples required to learn good and correct behaviour. The lesser, the better."),
                LessonSubtitle("Deep Reinforcement Learning Algorithms"),
                LessonSubtitleSmall("Proximal Policy Optimization"),
                LessonText(
                    "PPO is a DLR algorithm mainly used on any physical-based activity. Even though it's very effective, reaching very high-quality results, it is not very efficient. The main reason for that is because it needs large amounts of training data and, thus, training time. PPO is an on-policy algorithm. Essentially, it implies that the agent's optimal policy value is calculated taking into account the agent's actions. It is used as one of the main two algorithms for training an agent. Essentially, this algorithm is used if the user wants to reach a really high end product by sacrificing more training time."),
                LessonSubtitleSmall("Soft Actor-Critic"),
                LessonText(
                    "SAC is another DLR algorithm that is used mainly in robotics, but it can be also used in other fields. Just like the PPO algorithm, it is the other main algorithm to train an agent. In contrast with the previous algorithm, SAC is an off-policy algorithm, which means that the optimal policy value is calculated without taking into account the agent's actions. SAC stands out for its high sample-efficiency capabilities. Thus, without much training time, the results will be already really good."),
                LessonSubtitleSmall(
                    "Generative Adversarial Imitation Learning"),
                LessonText(
                    "GAIL is an algorithm that can be used (or not) in combination with either the PPO or SAC algorithms. Beforehand, the user needs to record some demos by using heuristics, which will be explained in the oncoming sections. After that, GAIL will try to learn following the behaviour of the demos, so that it has an early and effective grasp of how the correct behaviours are. At the same time, GAIL tries to find different ways to improve the behaviour."),
                LessonSubtitleSmall("Behavioral Cloning"),
                LessonText(
                    "BC is quite similar to GAIL, and it can also be used in combination with PPO, SAC, or even GAIL. As a matter of fact, the usual practice is to use either PPO or SAC with both the GAIL and BC algorithms. The main difference is that BC doesn't actually try to learn from the demos; instead it just communicates the agent what the behaviours are."),
                LessonSubtitle("What is an episode and maximum steps?"),
                LessonText("The concept of an episode is very important, because it is related directly to an agent's training. An episode, by definition, is the time an agent is actively training on a single generation. Each time an episode begins, an agent starts to train from the starting parameters the user has set up. When an episode ends, if it is not the final episode, another episode begins, and thus a generation too."),
                LessonText("A new concept appears, which is the max steps. A step is increased every time the FixedUpdate() function in Unity is called, which updates the physics module of the engine. The max steps can be divided into two parts:"),
                LessonText("General max steps: the maximum number of steps in the whole training."),
                LessonText("Agent's max steps: the maximum number of steps in an agent's generation. If we sum all the max steps of each agent's generation, it should be less or equal than the general max steps, as we can end the training before the general max steps number is reached."),
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
                LessonSubtitle("Introduction"),
                LessonText(
                    "The phase 1 consists in developing an agent that learns to find a defined target."),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/first_phase_individual.jpg",
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Algorithm: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "PPO.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Difficulty: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "Easy.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                LessonSubtitleSmall("Approaching the problem"),
                LessonText(
                    "As it can be seen in the image above, the objective is to make the agent, which is represented by a red box, to reach the goal, which is represented by a yellow sphere. Both elements are placed inside a locked place with walls on all sides."),
                LessonText(
                    "In this exercise, we will make use of the PPO algorithm, as well as using the parallel training feature. The environment setup is quite simple: we just need the agent, the goal, a platform with walls, and that's all! Then, because we want to train as faster as possible, each environment is duplicated many times and placed in a kind of grid, to keep things organized."),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/first_phase_parallel.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitleSmall("Configuration file"),
                LessonText(
                    "The first phase doesn't have a configuration file. Please note that the configuration files will be explained and used in the next lessons."),
                LessonSubtitleSmall("Training"),
                LessonText(
                    "In order to start training, it is necessary to open a command prompt from the root of the Unity project. The command to start training is as follows, and it has a local unique training ID:"),
                LessonTextCursive("mlagents-learn --run-id phase01-test"),
                LessonText(
                    "With this command, we will start the training process for the first time. The next step is to press the Start button in the Unity scene. All of the agents will start to move and, as soon as they realize how to reach the goal, the Unity application can be closed. The final brain will be available to be used in its correspondant folder."),
                LessonText(
                    "If the training ends or is cancelled, the training can be continued by using the following command:"),
                LessonTextCursive(
                    "mlagents-learn --run-id phase01-test --resume"),
                LessonText(
                    "Or, if you wish to restart the training, you can force to train from zero on the same training ID (or simply, use a new training ID):"),
                LessonTextCursive(
                    "mlagents-learn --run-id phase01-test --force"),
                LessonSubtitleSmall("Observations"),
                LessonText(
                    "When deciding what are the agent's observations, it is important to think about what is relevant from the agent's point of view. Thus, it can be clear that the agent will perform it's actions based on its position and also the position of the goal. Therefore, the observations are pretty straightforward:"),
                LessonText("- The position of the agent."),
                LessonText("- The position of the goal."),
                LessonSubtitleSmall("Rewards"),
                LessonText("The rewards are what will make the agent understand what is correct and incorrect. Hence, being not only the necessary rewards, but also the value of the reward, is a very crucial task to do. In this phase, there are two rewards:"),
                LessonText("- Reward #1: Give a positive reward to the agent when colliding with the goal."),
                LessonText("- Reward #2: Give a negative reward to the agent when colliding with the wall."),
                LessonText("Note that when giving any of the two previous reward, the current episode is restarted in order to keep training. Because there are two rewards and the agent can either collide with the wall or the goal, the value of the reward should be equal, even though one must be positive and the other one negative. Further, the current episode shall end and restart if the agent reaches its max steps. The value of the max steps should not be very big, as it won't probably take much time to collide with any other object."),
                LessonSubtitleSmall("Actions"),
                LessonText(
                    "The type of actions used in this agent are continuous. Therefore, the values of the actions are floating points. The Actions Vector has a length of 2, being the index 0 the velocity on the X-axis and being the index 1 the velocity on the Z-axis. This way, the agent will be able to move in these two directions. At the end of the training, the agent will move on these axis in the most effective way, accordingly reaching the targets."),
                LessonSubtitle("Conclusion"),
                LessonText("This exercise or phase is one of the simplest ways to start using ML-Agents and understanding how machine learning works. Also, the agents learn to reach the target very fast, so it's even better. On the next lesson, we will start training a car, configurating the training parameters, and even recording our own plays so that the AI can learn from a starting point!"),
                LessonSubtitle("Notes"),
                LessonText("Make sure that when training the agent, the Behaviour Parameters component should look exactly like this:"),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/phase1_behaviour_params_no_brain.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText("The agent's max steps:"),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/phase1_agent_max_steps.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText("When the training is finished, you can place the final brain or model file (.onnx) like this:"),
                Center(
                  child: Image.asset(
                    "assets/images/phase1/phase1_behaviour_params_brain.jpg",
                  ),
                ),
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Algorithm: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "PPO.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Difficulty: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "Normal.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                LessonSubtitleSmall("Approaching the problem"),
                LessonText("Approaching..."),
                LessonSubtitleSmall("Configuration file"),
                LessonText("Config..."),
                LessonSubtitleSmall("Observations"),
                LessonText(""),
                LessonSubtitleSmall("Rewards"),
                LessonText(""),
                LessonSubtitleSmall("Actions"),
                LessonText("heuristics too"),
                LessonSubtitle("Conclusion"),
                LessonText(""),
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Algorithm: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "SAC.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Difficulty: ",
                        style: LessonTextBold.style,
                      ),
                      TextSpan(text: "Hard.", style: LessonText.style),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitle("Development"),
                LessonSubtitleSmall("Approaching the problem"),
                LessonText("Approaching..."),
                LessonSubtitleSmall("Configuration file"),
                LessonText("Config..."),
                LessonSubtitleSmall("Observations"),
                LessonText(""),
                LessonSubtitleSmall("Rewards"),
                LessonText(""),
                LessonSubtitleSmall("Actions"),
                LessonText(""),
                LessonSubtitle("Conclusion"),
                LessonText(""),
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
