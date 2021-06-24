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
          "Select which are the most adequate observations for the agent to make.",
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
      question: "The absolute value of the reward should be the same.",
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
      question: "It is better to use discrete actions in this particular case.",
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
      question: "Select the most adient max step of the agent.",
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
      question: "What is the most adequate number of actions for the agent?",
      options: [
        CustomOption(
          identifier: "A",
          text: "2, one for moving on the X-axis, and the other one for moving on the Y-axis.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "2, one for moving on the X-axis, and the other one for moving on the Z-axis.",
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
      question: "Is the Proximal Policy Oprimization algorithm on-policy or off-policy?",
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
      question: "Why do we use about 10 cars for training in this case?",
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
          "What is the advantage of using the PPO algorithm in this phase?",
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
      question: "Neural Networks is exclusively an AI term.",
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
  ],
];
