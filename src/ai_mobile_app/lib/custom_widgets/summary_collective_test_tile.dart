import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:flutter/material.dart';

class SummaryCollectiveTestTile extends StatelessWidget {
  final CustomTest test;

  SummaryCollectiveTestTile({required this.test});

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
          leading: (test.mark! >= 50.0)
              ? Icon(
                  Icons.check,
                  color: Colors.green,
                )
              : Icon(
                  Icons.close,
                  color: Colors.red,
                ),
          title: Text(
            "Test ${test.testId.toString()}",
          ),
          subtitle: Text(
            "Average mark: ${test.mark}/100.0   Average correct answers: ${test.correctAnswers}   Average incorrect answers: ${test.incorrectAnswers}",
          ),
        ),
      ),
    );
  }
}
