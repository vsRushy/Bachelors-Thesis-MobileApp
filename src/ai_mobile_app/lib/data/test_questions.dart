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
