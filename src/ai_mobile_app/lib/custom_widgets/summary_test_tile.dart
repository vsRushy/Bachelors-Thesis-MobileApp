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
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.lightBlue,
          ),
          title: Text(
            "Test ${test.testId.toString()}",
          ),
        ),
      ),
    );
  }
}
