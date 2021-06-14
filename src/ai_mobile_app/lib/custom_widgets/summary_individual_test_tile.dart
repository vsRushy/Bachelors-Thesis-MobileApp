import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:flutter/material.dart';

class SummaryIndividualTestTile extends StatelessWidget {
  final CustomTest test;

  SummaryIndividualTestTile({required this.test});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1.2, 0.0),
          colors: <Color>[Colors.lightBlue, Colors.blue],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Card(
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
    );
  }
}
