import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';

final questionLibrary = [
  [
    CustomQuestion(
      question: "Why are walls placed in the environment?",
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
          text: "To make the agent train faster. By placing walls, the episodes will last less time and the agent will go directly to the goal over time.",
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
      question: "Why do we use about 10 cars for training in this case?",
      options: [
        CustomOption(
          identifier: "A",
          text: "Incorrect. We should use 100 cars at least, for faster training.",
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
          text: "10 is a number of training cars that an average computer can hold without problems.",
          isCorrect: true,
        ),
      ],
      solution: "The correct response is answer D.",
    ),
    CustomQuestion(
      question: "What is the advantage of using the PPO algorithm in this phase?",
      options: [
        CustomOption(
          identifier: "A",
          text: "PPO should not be used in this case. SAC is the one to go.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "B",
          text: "The final ANN will achieve a very high precision and performance.",
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
          text: "False. Artificial Neural Networks are based on the NNs of the human brain.",
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
