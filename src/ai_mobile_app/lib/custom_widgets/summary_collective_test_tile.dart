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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1.2, 0.0),
          colors: <Color>[Colors.white, Colors.lightBlue],
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
            "Average mark: ${test.mark}/100.0   Average correct answers: ${test.correctAnswers}   Average incorrect answers: ${test.incorrectAnswers}",
          ),
        ),
      ),
    );
  }
}
