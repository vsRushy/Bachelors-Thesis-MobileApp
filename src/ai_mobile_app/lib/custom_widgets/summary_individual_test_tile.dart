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
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: null,
                  children: <TextSpan>[
                    TextSpan(
                      text: "Mark: ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "${test.mark}",
                      style: (test.mark! >= 50.0)
                          ? TextStyle(color: Colors.green)
                          : TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: "/100.0",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text(
                "Correct answers: ${test.correctAnswers}",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Incorrect answers: ${test.incorrectAnswers}",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
