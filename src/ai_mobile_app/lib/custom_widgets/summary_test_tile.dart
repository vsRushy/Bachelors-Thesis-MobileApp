import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:flutter/material.dart';

class SummaryTestTile extends StatelessWidget {
  final CustomTest test;

  SummaryTestTile({required this.test});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text(
              "Test ${test.testId.toString()}",
            ),
            subtitle: Text(
              "Mark: ${test.mark}/100.0   Correct answers: ${test.correctAnswers}   Incorrect answers: ${test.incorrectAnswers}",
            ),
          ),
        ),
      ),
    );
  }
}
