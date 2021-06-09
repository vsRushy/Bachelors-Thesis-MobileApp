import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';

final questionLibrary = [
  [
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
      solution: "The correct response is option 1.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AA",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "BB",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "CC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 2.",
    ),
  ],
  [
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAA",
          text: "This is the first question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "BBB",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "CCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 111.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAAA",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "BBBB",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "CCCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 2222.",
    ),
  ],
  [
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAAAA",
          text: "This is the first question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "BBBBB",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "CCCCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDDDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 11111.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAAAAA",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "BBBBBB",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "CCCCCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDDDDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 222222.",
    ),
  ],
  [
    CustomQuestion(
      question: "This is the first question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAAAAAA",
          text: "This is the first question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "BBBBBBB",
          text: "This is the second question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "CCCCCCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDDDDDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 1111111.",
    ),
    CustomQuestion(
      question: "This is the second question. Would you answer?",
      options: [
        CustomOption(
          identifier: "AAAAAAAA",
          text: "This is the first question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "BBBBBBBB",
          text: "This is the second question.",
          isCorrect: true,
        ),
        CustomOption(
          identifier: "CCCCCCCC",
          text: "This is the third question.",
          isCorrect: false,
        ),
        CustomOption(
          identifier: "DDDDDDDD",
          text: "This is the fourth question.",
          isCorrect: false,
        ),
      ],
      solution: "The correct response is option 22222222.",
    ),
  ],
];
