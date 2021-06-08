import 'package:ai_mobile_app/models/custom_question.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final QuestionCategory? category;

  const Questions({
    Key? key,
    required this.category,
  }) : super(key: key);

  Widget _buildQuestion({required CustomQuestion question}) {
    return Padding(
      padding: EdgeInsets.all(26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            question.question!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: category!.questions!.length,
      itemBuilder: (context, index) {
        final question = category!.questions![index];

        return _buildQuestion(question: question);
      },
    );
  }
}
