import 'package:ai_mobile_app/data/test_questions.dart';
import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:ai_mobile_app/custom_widgets/questions.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final QuestionCategory? category;

  const TestPage({Key? key, required this.category});

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  PageController? _pageController;
  CustomQuestion? question;

  @override
  void initState() {
    super.initState();

    question = widget.category!.questions!.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test",
        ),
        actions: [],
      ),
      body: Questions(
        category: widget.category,
        onClickedOption: _selectOption,
      ),
    );
  }

  void _selectOption(CustomOption? option) {
    if(question!.isLocked!) {
      return;
    }
    else {
      setState(() {
        question!.isLocked = true;
        question!.currentOption = option;
      });
    }
  }
}
