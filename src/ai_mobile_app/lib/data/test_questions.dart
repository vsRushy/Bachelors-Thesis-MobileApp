import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';

final List<CustomQuestion> questionLibrary = [
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
    solution: "This is the correct response.",
  ),

  CustomQuestion(
    question: "This is the second question. Would you answer?",
    options: [
      CustomOption(
        identifier: "AA",
        text: "This is the first question.",
        isCorrect: true,
      ),
      CustomOption(
        identifier: "BB",
        text: "This is the second question.",
        isCorrect: false,
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
    solution: "This is the correct response.",
  ),
];
