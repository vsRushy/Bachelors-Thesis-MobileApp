import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';

final questionLibrary = [
  [
    CustomQuestion(
      question: "1. Why are walls placed in the environment?",
      options: [
        CustomOption(
          identifier: "A",
          text: "It's just a decorational element.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "To avoid the objects escape the platform.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "To only make the agent know that it can't collide with walls.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text:
              "To make the agent train faster. By placing walls, the episodes will last less time and the agent will go directly to the goal over time.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "2. Why do we create multiple environments for traning?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "It's useless; only one agent can be trained on a single brain.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "To have more environments.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "For a much faster training time.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "All of the above are incorrect.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question:
          "3. Why is the position of the goal reset randomly on each episode?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "So that the agent learns to go any direction towards the goal.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "It's just the standard when training.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "So that the agent knows how to go to a single direction.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "To confuse the agent.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question:
          "4. Select the correct command to overwrite an already created brain.",
      options: [
        CustomOption(
          identifier: "A",
          text: "mlagents-learn --run-id test --resume",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "mlagents-learn --run-id test --force",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "mlagents-learn --run-id test --overwrite",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "mlagents-learn --run-id test",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "5. Select which are the most adequate observations for the agent to make.",
      options: [
        CustomOption(
          identifier: "A",
          text: "Position of the agent.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "Position of the agent & position of the goal.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "Position of the goal.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "Position of the environment.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "6. The absolute value of the reward should be the same.",
      options: [
        CustomOption(
          identifier: "A",
          text: "True.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "False.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question:
          "7. It is better to use discrete actions in this particular case.",
      options: [
        CustomOption(
          identifier: "A",
          text: "True.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "False.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "8. Select the most adient max step of the agent.",
      options: [
        CustomOption(
          identifier: "A",
          text: "20000.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "7500.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "64.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "1000.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "9. What is the most adequate number of actions for the agent?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "2, one for moving on the X-axis, and the other one for moving on the Y-axis.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "2, one for moving on the X-axis, and the other one for moving on the Z-axis.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "1, for moving on any axis.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "None of the above are correct.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "10. Is the Proximal Policy Oprimization algorithm on-policy or off-policy?",
      options: [
        CustomOption(
          identifier: "A",
          text: "On-policy.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "Off-policy.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
  ],
  [
    CustomQuestion(
      question: "1. Why do we use about 10 cars for training in this case?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "Incorrect. We should use 100 cars at least, for faster training.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "It seems like a nice number.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "10 is too much. We should use as maximum, 5.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text:
              "10 is a number of training cars that an average computer can hold without problems.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question:
          "2. What is the advantage of using the PPO algorithm in this phase?",
      options: [
        CustomOption(
          identifier: "A",
          text: "PPO should not be used in this case. SAC is the one to go.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "The final ANN will achieve a very high precision and performance.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "Because it is the standard when training cars.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "3. The car agent should be set to Heuristics when having a brain in the component.",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "True. Heuristics are used when having an already trained agent.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "False. Inference should be used when having an already trained agent.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "4. What is the purpose of using the GAIL and BC algorithms?",
      options: [
        CustomOption(
          identifier: "A",
          text: "To be able to drive the car manually.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "There is no point at all of using them in this case.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "To have a more diverse range of algorithms being used.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "To speed up the training process.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question:
          "5. A general max step of 1000 is good for the whole track. Do you agree?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "Yes, but it can also be a bit greater, like 1500, for instance.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "Yes, 1000 is the most adequate number for this case.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text:
              "No, it should be a number higher than 1000. 10000 is enough for the car to travel the track.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text:
              "No, it should be a number lower than 1000. 500 is enough for the car to travel the track.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question:
          "6. The reward of colliding with a wall should be equal to reaching a checkpoint, in absolute terms.",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "False, it should be higher. Otherwise, the car will always collide with walls.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "False, it should be lower. Otherwise, the car wouldn't go for the checkpoints.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text:
              "True, not colliding with a wall is as important as reaching a checkpoint.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text:
              "True, even though reaching a checkpoint is more important, they should be the same.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "7. The agent has three action elements: the first for accelerating, the second for breaking, and the third one for turning.",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "True. All these actions are the most basic ones and, in total, the length of the Action Vector is 3.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "False. The Action Vector size is 2, and breaking is inside the accelerating branch of the agent.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "8. The checkpoint method is not very efficient, there are many good alternatives.",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "True. Using checkpoints don't help the car go the correct way.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "False. Even though using checkpoints is a bit handy, it is one of the best ways to train a car agent.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "9. What is the purpose of using a configuration file?",
      options: [
        CustomOption(
          identifier: "A",
          text: "It doesn't have any important purpose, it's better not to use a configuration file.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "To train the agent more slowly, but obtaining a better final result.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text:
              "To choose the algorithms used in the training such as PPO, SAC, GAIL, and BC. Also, more parameters can be changed, like the general max steps.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "To overcomplicate the training process.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question:
          "10. The car agent needs the highest number of rays for better performance.",
      options: [
        CustomOption(
          identifier: "A",
          text: "True. The more, the better. If the number is too low, it won't work.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "False. The number needs to be balanced, according to the hardware used and the complexity of the environment.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
  ],
  [
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "A",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "This is the third question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "D",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer C.",
    ),
  ],
  [
    CustomQuestion(
      question: "1. Neural Networks is exclusively an AI term.",
      options: [
        CustomOption(
          identifier: "A",
          text: "True. It is completely invented.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "False. Artificial Neural Networks are based on the NNs of the human brain.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question: "2. How many types of layers there are in an ANN?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "5. The input layer, the hidden layer, another hidden layer, another hidden layer, and the output layer.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "2. The input layer, and the output layer.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text:
              "4. The input layer, the hidden layer, the learning layer, and the output layer.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "3. The input layer, the hidden layer, and the output layer.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "3. What is the formula of the output of a single neuron?",
      options: [
        CustomOption(
          identifier: "A",
          text: "Y = Σ(weight * bias) + input",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "Y = Σ(weight * input) + bias",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "Y = weight * input + bias",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "Y = Σ(weight * input) - bias",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "4. What is the total loss when performing the backward propagation?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "The difference between the expected output of a neuron, and the actual value calculated via the forward propagation.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text:
              "The difference of the bias of the current neuron and the sum of the ones in the previous layer.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text:
              "The difference of the output of a neuron and the previous one in the same layer.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text:
              "The difference between the weights of the neurons of a layer and the ones from the previous layer.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question:
          "5. Is it a good practice to normalize and scale the initial data of the input layer of an ANN?",
      options: [
        CustomOption(
          identifier: "A",
          text: "Yes. In fact, it is always recommended.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "No. It is not necessary at all.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question: "6. Each neuron has an input and output. Is it true or false?",
      options: [
        CustomOption(
          identifier: "A",
          text: "True.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "False.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
    CustomQuestion(
      question:
          "7. The output layer is the layer that calculates the final result of an ANN.",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "Incorrect. In fact, the input layer calculates the final result from the beginning.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "Incorrect. The hidden layers are the layers that calculate the final result. The output layer just outputs this final result.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "Correct. The output layer calculates the whole final result.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text:
              "Incorrect. The input and hidden layers are the ones that calculate the final result.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "8. Why are non-linear functions used on the activation function?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "It is not correct. Linear functions are used in the activation function.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text:
              "Because adding non-linearity to a networks can achieve more complex tasks that if a linear function was used.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "C",
          text: "To overcomplicate the process.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "All of the above are incorrect.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer B.",
    ),
    CustomQuestion(
      question:
          "9. What difference there is between a reinforcement learning algorithm and an supervised/unsupervised algorithm?",
      options: [
        CustomOption(
          identifier: "A",
          text:
              "A reinforcement learning algorithm doesn't use rewards; instead, supervised and unsupervised learning algorithms do.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "There are no differences at all; they are the same.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text:
              "A supervised learning algorithm uses labeled datasets, while an unsupervised learning algorithm doesn't.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "A reinforcement learning algorithm makes use of rewards.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "10. What type of learning paradigm does ML-Agents use?",
      options: [
        CustomOption(
          identifier: "A",
          text: "Reinforcement learning.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "B",
          text: "Supervised learning.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "C",
          text: "Unsupervised learning.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "D",
          text: "All of the above.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is answer A.",
    ),
  ],
];
