import 'package:ai_mobile_app/data/test_questions.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:ai_mobile_app/custom_widgets/questions.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
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
        category: QuestionCategory(
          name: "Test 1",
          questions: questionLibrary,
        ),
      ),
    );
  }
}
