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
                LessonText(
                    "The concept of an episode is very important, because it is related directly to an agent's training. An episode, by definition, is the time an agent is actively training on a single generation. Each time an episode begins, an agent starts to train from the starting parameters the user has set up. When an episode ends, if it is not the final episode, another episode begins, and thus a generation too."),
                LessonText(
                    "A new concept appears, which is the max steps. A step is increased every time the FixedUpdate() function in Unity is called, which updates the physics module of the engine. The max steps can be divided into two parts:"),
                LessonText(
                    "General max steps: the maximum number of steps in the whole training."),
                LessonText(
                    "Agent's max steps: the maximum number of steps in an agent's generation. If we sum all the max steps of each agent's generation, it should be less or equal than the general max steps, as we can end the training before the general max steps number is reached."),
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
                LessonText(
                    "It is possible that as a first though, we may think why is necessary to duplicate not only the agent, but the environment itself too, as it seems like a waste of resources. This is because if many agents and goals were placed together in one environment, it would be a total chaos. Thus, by creating only one environment for each agent individually, the agents can do their job correctly."),
                LessonText(
                    "Furthermore, when training the agent, many generations are created. At the beginning of each generation, also called as episode, the position of the goal must be reset randomly. If this wasn't done, the agent would only learn to go towards one direction. By resetting the positions randomly, it will reach the point when the agent will be able to know how to go to any direction, towards the goal or target."),
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
                LessonText(
                    "The final already trained ANN is available at the results/ folder, just inside the root folder of the Unity project. An already trained ANN is located inside the Models/Phase1/test01/ folder. If it is trained by yourself, it will be locate at the results/ folder from the root."),
                LessonSubtitleSmall("Observations"),
                LessonText(
                    "When deciding what are the agent's observations, it is important to think about what is relevant from the agent's point of view. Thus, it can be clear that the agent will perform it's actions based on its position and also the position of the goal. Therefore, the observations are pretty straightforward:"),
                LessonText("- The position of the agent."),
                LessonText("- The position of the goal."),
                LessonSubtitleSmall("Rewards"),
                LessonText(
                    "The rewards are what will make the agent understand what is correct and incorrect. Hence, being not only the necessary rewards, but also the value of the reward, is a very crucial task to do. In this phase, there are two rewards:"),
                LessonText(
                    "- Reward #1: Give a positive reward to the agent when colliding with the goal."),
                LessonText(
                    "- Reward #2: Give a negative reward to the agent when colliding with the wall."),
                LessonText(
                    "Note that when giving any of the two previous reward, the current episode is restarted in order to keep training. Because there are two rewards and the agent can either collide with the wall or the goal, the value of the reward should be equal, even though one must be positive and the other one negative. Further, the current episode shall end and restart if the agent reaches its max steps. The value of the max steps should not be very big, as it won't probably take much time to collide with any other object."),
                LessonSubtitleSmall("Actions"),
                LessonText(
                    "The type of actions used in this agent are continuous. Therefore, the values of the actions are floating points. The Actions Vector has a length of 2, being the index 0 the velocity on the X-axis and being the index 1 the velocity on the Z-axis. This way, the agent will be able to move in these two directions. At the end of the training, the agent will move on these axis in the most effective way, accordingly reaching the targets."),
                LessonSubtitle("Conclusion"),
                LessonText(
                    "This exercise or phase is one of the simplest ways to start using ML-Agents and understanding how machine learning works. Also, the agents learn to reach the target very fast, so it's even better. On the next lesson, we will start training a car, configurating the training parameters, and even recording our own plays so that the AI can learn from a starting point!"),
                LessonSubtitle("Notes"),
                LessonText(
                    "Make sure that when training the agent, the Behaviour Parameters component should look exactly like this:"),
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
                LessonText(
                    "When the training is finished, you can place the final brain or model file (.onnx) like this:"),
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
                LessonSubtitle("Introduction"),
                LessonText(
                    "The phase 2 consists in developing a car agent that learns to drive through a defined track using the checkpoint method."),
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
                LessonText(
                    "The problem of training a car so that it can drive itself is much more complicated than the first phase. In this case, we have to think about how the car will be able to drive."),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_car.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText(
                    "The car has a ray perception system that allows it to make observations. In this case, each ray can detect any checkpoint or wall. The number of rays can vary, but take into account it will affect in the performance."),
                LessonText(
                    "First of all, it is needed a checkpoint system so that the car can follow the correct path in the correct order. This is a solid way to control where the car goes. It can be quite a tough task to place so many checkpoints, but it is a very efficient method and it will be worth it."),
                LessonText(
                    "Two new algorithms are put into practice here, already introduced in the first lesson, which are the GAIL and BC algorithms. In order to use them, it is needed a configuration file, which will be explained later. In order to train the agent and use these algorithms, we need to play the game for some minutes and record the demos."),
                LessonText(
                    "On the phase 2 scene folder, there are three scenes. One is the full training track, and the other two are for training the car go to the left and go to the right."),
                LessonSubtitleSmall("Configuration file"),
                LessonText(
                    "The configuration file is very important for this phase because it is needed to use the GAIL and BC algorithms. The location of the training file is Assets/Phase02/CheckpointDrivingSetup/"),
                LessonText(
                    "The most important parameters to take into account are:"),
                LessonText(
                    "- The trainer_type, which in this case is ppo, to use the PPO algorithm."),
                LessonText(
                    "- The max_steps, which defines the maximum total steps for the training."),
                LessonText(
                    "- The strength of the extrinsic, gail, and behavioral_cloning parameters."),
                LessonText(
                    "- Note also the demo_path of the gail and behavioral_cloning parameters."),
                LessonSubtitleSmall("Training"),
                LessonText(
                    "In order to train the agent, the commands for using a configuration are a little bit different. Basically, the path of the configuration file is added. It is highly recommended to use the command from the root folder of the Unity project."),
                LessonTextCursive(
                    "mlagents-learn Assets/Phase02/CheckpointDrivingSetup/CheckpointDriving.yaml --run-id phase02-test"),
                LessonTextCursive(
                    "mlagents-learn Assets/Phase02/CheckpointDrivingSetup/CheckpointDriving.yaml --run-id phase02-test --force"),
                LessonTextCursive(
                    "mlagents-learn Assets/Phase02/CheckpointDrivingSetup/CheckpointDriving.yaml --run-id phase02-test --resume"),
                LessonText(
                    "In conclusion, what these commands do is to train the agent with your desired configuration file."),
                LessonText(
                    "So that we can train the agent, we need to divide it into three parts:"),
                LessonText(
                    "1) Firstly, record the demos for both the left and right tracks. For this, the Record checkbox on the Demonstration Recorder component on the agent needs to be checked. The, just drive a single car for about 5 minutes, for both tracks:"),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_demonstration_rec.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText(
                    "Furthermore, inside the Behaviour Parameters component, the Heuristic option must be enabled, on the Behaviour Type. Heuristics can be used to use the agent manueally and, thus, it needs to be enabled when recording the demos and playing by ourselves."),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_heuristic.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText(
                    "The path of the demos can be changed for the one that exists in the configuration file. Make sure to disable the previous checkbox after driving!"),
                LessonText(
                    "2) Now, train the agent for the left circuit. Revise that the Behaviour Parameters Behaviour Type is set to Default. It is important to add about 9 more agents at the same track for faster learning! For this, the strength of the extrinsic parameter should be about 0.2, and the strength of both the gail and behavioral_cloning parameters should be about 0.7. Like this, the agent will use more our recorded demos in order to learn faster. Furthermore, on the configuration file, the demos path should be the path to the exact demo. There is already an existing demo at Assets/Phase02/CheckpointDrivingDemos/CLeftDrive.demo. And finally, the max step of the agent must be about 1500, because the circuit is very small."),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_left_track.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText(
                    "3) Right now there will be a brain in the results/ folder. When executing the training command now, make sure to use the --resume flag. Do the same for the right circuit, but increase the extrinsic strength at 0.4 and reduce both the gail and behavioral_cloning strengths to 0.5. Remember to use the correct demo path. The existing one is Assets/Phase02/CheckpointDrivingDemos/CRightDrive.demo. The agent's max step should still be about 1500."),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_right_track.jpg",
                  ),
                ),
                SizedBox(height: 15),
                LessonText(
                    "4) The final step is to train the agents on the final track. For this, change the strength of the extrinsic parameter to 0.9 and the gail and behavioral_cloning strenghts to 0.2. Like this, the agents will learn more by themselves, and they already know how to drive left and right. Because the track is quite large, the max step of the agent must be set up high, more or less like 10000 steps."),
                LessonText(
                    "When the agent is trained successfully, just place the model or ANN in the Behaviour Parameters and set the type to Inference."),
                LessonSubtitleSmall("Observations"),
                LessonText(
                    "What the agent needs to do, essentially, is to reach checkpoints in the correct order. Thus, the only observation to be made is calculate something that can give the agent information that the agent can interpret as how close it is from a checkpoint. This is done by simply calculating the dot product between the forward vector of the agent and the forward vector of the next correct checkpoint:"),
                LessonTextCursive(
                    "float direction_dot = Vector3.Dot(transform.forward, checkpoint_forward);"),
                LessonText("Because the only observation is a floating point number, the size of the Vector Observation Space will be 1."),
                LessonSubtitleSmall("Rewards"),
                LessonText(
                    "There are some more rewards compared to the first phase. The rewards are the following:"),
                LessonText("- Reward #1: Correct checkpoint."),
                LessonText("- Reward #2: Incorrect checkpoint."),
                LessonText("- Reward #3: Collision with wall."),
                LessonText("- Reward #4: Constant collision with wall."),
                LessonText("- Reward #5: Aligment towards next checkpoint."),
                LessonText("- Reward #6: Rigidbody velocity."),
                LessonText(
                    "The first two rewards, which are the correct and incorrect checkpoints, are triggered when colliding with the correct or an incorrect checkpoint, respectively. The value of the correct checkpoint is 1.0, while the value of the incorrect checkpoint is -1.0. Because going through the checkpoint is the most important element for the car to learn to drive, the absolute value must ve the highest of them all."),
                LessonText(
                    "The agent receives a negative reward with a value of -0.5 for colliding with a wall, and a value of -0.1 if it keeps colliding with it. Not colliding with a wall is also very important, but the value must be reduced because, otherwise, the car would learn to just not move. It is recommended and, in fact, is how this phase works, when colliding with a wall, the episode of the agent is automatically restarted."),
                LessonText(
                    "The two last rewards are used to urge the car to move and not stay quiet. The closest the angle of the agent towards the checkpoint's forward vector, the better. Almost exactly the same happens, but with the velocity of the agent's rigidbody. The values of these rewards must be a lot more small than the previous ones."),
                LessonSubtitleSmall("Actions"),
                LessonText(
                    "The car agent uses discrete actions. Therefore, each element of the Action Vector will have a branch. The size of the Action Vector is 2, being the index 0 for the car acceleration and being the index 1 for turning the car."),
                LessonText("The car acceleration branch has three values:"),
                LessonTextCursive("1: Accelerate."),
                LessonTextCursive("2: Break."),
                LessonTextCursive("0: Idle."),
                LessonText(
                    "In contrast, the turning branch has these three values:"),
                LessonTextCursive("1: Turn right."),
                LessonTextCursive("2: Turn left."),
                LessonTextCursive("0: Don't turn."),
                LessonText(
                    "Having defined these actions, the AI is able to drive the car. Also, note that by using heuristics you can drive the car manually, and it should be disabled when training by setting it to Default, or to Inference if there is a brain placed in the agent."),
                LessonSubtitle("Conclusion"),
                LessonText(
                    "Having explained all of that, this is definitely one of the best ways for traning a car that can drive autonomously! Even though it is used with checkpoints, and this can be a little bit too handy, the results are simply outstanding, with very little effort and time. The usage of GAIL and BC helps a lot in the initial training process and, because of the PPO algorithm, the final result is almost perfect."),
                LessonSubtitle("Notes"),
                LessonText(
                    "The Ray Perception 3D component of the agent looks like the following image, taking into account the tags and layers of the game objects need to be filtered, so that the rays can only collide with checkpoints and walls in this case:"),
                Center(
                  child: Image.asset(
                    "assets/images/phase2/phase2_ray_perception.jpg",
                  ),
                ),
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
                LessonSubtitleSmall("Training"),
                LessonText("Training..."),
                LessonSubtitleSmall("Observations"),
                LessonText("Observations..."),
                LessonSubtitleSmall("Rewards"),
                LessonText("Rewards..."),
                LessonSubtitleSmall("Actions"),
                LessonText("Actions... heuristics too"),
                LessonSubtitle("Conclusion"),
                LessonText("Conclusion..."),
                LessonSubtitle("Notes"),
                LessonText("Notes...")
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
                LessonTitle("Artificial Neural Networks"),
                LessonSubtitle("What is an ANN?"),
                LessonSubtitleSmall("Definition"),
                LessonText(
                    "An Artificial Neural Network is based on the actual brain's biological Neural Network. Thus, an ANN is just a Neural Network, but simulated in a computer, abstracted into an algorithm."),
                LessonText("An ANN is composed of:"),
                LessonText("- Artificial neurons."),
                LessonText("- Layers."),
                LessonSubtitleSmall("Artificial neurons"),
                LessonText(
                    "The first element is the artificial neuron. Just like the ANN, it is based on a biological neuron. A single neuron doesn't have much use; in fact, it's totally useless. But when they are connected all together, they are extremely powerful."),
                LessonText(
                    "For more simplicity, we'll call an artificial neuron, a neuron. A neuron is used as an input and an output. For instance, the data of an image can be an input for the neurons, and an output of a neuron can be the result of the accomplished task, such as recognizing an image."),
                LessonText(
                    "Each neuron has a weight and a bias. On the one hand, by definition, the weight controls the connection between two neurons. Therefore, the input of a neuron will directly influence the output of the same neuron. It is not a constant value."),
                LessonText(
                    "On the other hand, the bias is a constant value, generally of value 1, that is used to add more precision on the final output of the ANN. It also guarantees that, even if the weight of the neuron is 0, the output will always be greater than 0, which means that the neuron can be activated through an activation function."),
                LessonText(
                    "The formula of the output of a neuron is as follows:"),
                LessonTextCursive("Y = Σ(weight * input) + bias"),
                LessonText(
                    "It is very clear to see that the weights are affected by the input, while the bias is completely independent. Let's take a look now at how the neurons are joined together, forming an ANN."),
                LessonSubtitleSmall("Layers"),
                LessonText(
                    "The second and final element are the layers. Each layer is composed of neurons. An ANN is divided into three types of layers:"),
                LessonText("- Input layer."),
                LessonText("- Hidden layer."),
                LessonText("- Output layer."),
                LessonText(
                    "In the first place, the input layer is the actual input data, such as the pixels of an image. This data is normally pre-processed, by normalizing and scaling each value so that the output will be between 0 and 1, for instance."),
                LessonText(
                    "In the second place, the hidden layer is the layer(s) between the input and output layers. Normally, there are more than 1 hidden layer, like 3 hidden layers, for eaxmple. Each neuron in the hidden layer produces an output given the input of the previous layer, which can be either the input layer or another hidden layer. After applying the calculation using the function explained previously, each neuron produces the output via applying the activation function. The activation function decides whether a neuron should be activated or not, using a non-linear function. The purpose of the activation function is to introduce non-linearity to the output of a single neuron, so that it can achieve more complex tasks.The values of the weights of the neurons are either calculated randomly or fine-tuned using a method called backward propagation, which will be explained later. As the ANN starts to learn, these weights are modified so that the final ANN will be perfect for obtaining the desired result of the output."),
                LessonText(
                    "In the third and last place, the output layer takes as an input all the information learned by the network via the hidden layers to the outer world. For instance, with the information the output layer gives, we could know if an image is a dog or a cat."),
                LessonText(
                    "In the following image, it can be observed in a simplified way an ANN. Each circle is a neuron, located in its correspondent area."),
                Center(
                  child: Image.asset(
                    "assets/images/ANN_basic.jpeg",
                  ),
                ),
                SizedBox(height: 15),
                LessonSubtitleSmall("How does an ANN learn?"),
                LessonText(
                    "Essentially, there are two ways of learning, which are:"),
                LessonText("- Forward Propagation."),
                LessonText("- Backward Propagation."),
                LessonText(
                    "On the one hand, forward propagation is the technical word for applying the formula explained above, for calculating the output of a single neuron."),
                LessonText(
                    "On the other hand hand, backward propagation is the method used to adjust the weights of the neurons calculating the error amount of the calculations. The total loss is the difference between the expected output of a neuron (which can be obtained using a training set, such as already classified and recognized data) and the actual output value calculated with the forward propagation."),
                LessonSubtitle("Learning Paradigms"),
                LessonText(
                    "There are three paradigms or models that are used for the learning process. They are as follows:"),
                LessonText("- Supervised learning."),
                LessonText("- Unsupervised learning."),
                LessonText("- Reinforcement learning."),
                LessonText(
                    "Supervised learning is used when training an ANN with already labeled data. The machine learning algorithm iteratively learns the differences and similarities between all the data points. Hence, the final output to be learned is already specified in advance and, also, the learning process is supervised by matching the predictions."),
                LessonText(
                    "Unsupervised learning is used when training an ANN with non-labeled data. If a very complex task wants to be achieved and it's too difficult to have labeled data, this is the way to go. It is especially useful for tasks that are unsolvable by hand. Unsupervised learning algorithms make use of two principles: the first one, which is clustering, groups the outputs that have similar values; and the second one, which is dimensional reduction, simplifies the obtained outputs representation by reducing the data from a high-dimensional space to a low-dimensional space."),
                LessonText(
                    "Finally, reinforcement learning is the way ML-Agents work. It is particularly useful for video games. The agent that has the ANN receives reinforcements, or the so-called rewards, in order to describe the interaction with the environment. The reinforcements can be either positive or negative. Therefore, the agent must maximize the positive reinforcements and minimize the negative ones. The environment is used as a scenario for the agent to explore, constantly interacting with it, obtaining the rewards and reinforcing the learning progress."),
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
