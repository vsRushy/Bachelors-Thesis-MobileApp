import 'package:ai_mobile_app/data/test_questions.dart';
import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';
import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:ai_mobile_app/custom_widgets/questions.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final QuestionCategory? category;
  final int? testIndex;

  const TestPage({
    Key? key,
    required this.category,
    required this.testIndex,
  });

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  PageController? _pageController;
  CustomQuestion? question;

  CustomTest? currentTest =
      CustomTest(testId: 1, mark: 0.0, correctAnswers: 0, incorrectAnswers: 0);

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
    question = widget.category!.questions!.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category!.name!,
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: Questions(
              category: widget.category,
              pageController: _pageController,
              onClickedOption: _selectOption,
              onChangedPage: (index) {
                return _nextQuestion(index!);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: ElevatedButton(
              child: Text('Deliver test'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                minimumSize: Size(140, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                currentTest!.testId = widget.testIndex! + 1;
                int? numQuestions = widget.category!.questions!.length;
                double? fractionScore =
                    currentTest!.correctAnswers! / numQuestions;
                currentTest!.mark = fractionScore * 100.0;
                Navigator.of(context).pop(currentTest);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _selectOption(CustomOption? option) {
    if (question!.isLocked!) {
      return;
    } else {
      setState(() {
        question!.isLocked = true;
        question!.currentOption = option;
        for (CustomOption opt in question!.options!) {
          if (opt == option) {
            if (opt.isCorrect!) {
              currentTest!.correctAnswers = currentTest!.correctAnswers! + 1;
            }
            if (!opt.isCorrect!) {
              currentTest!.incorrectAnswers =
                  currentTest!.incorrectAnswers! + 1;
            }
          }
        }
      });
    }
  }

  void _nextQuestion(int? index) {
    final nextPage = _pageController!.page! + 1;
    final indexPage = index ?? nextPage.toInt();

    setState(() {
      question = widget.category!.questions![indexPage];
    });
  }
}
