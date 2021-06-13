import 'package:ai_mobile_app/custom_widgets/summary_collective_test_tile.dart';
import 'package:ai_mobile_app/custom_widgets/summary_individual_test_tile.dart';
import 'package:ai_mobile_app/data/test_questions.dart';
import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:provider/provider.dart';

class SummaryCollectiveList extends StatefulWidget {
  @override
  _SummaryCollectiveListState createState() => _SummaryCollectiveListState();
}

class _SummaryCollectiveListState extends State<SummaryCollectiveList> {
  @override
  Widget build(BuildContext context) {
    final tests = Provider.of<List<CustomTest>?>(context) ?? [];
    List<List<CustomTest?>> groupedTests = _groupTestsByTestId(tests);

    return ListView.builder(
      itemCount: questionLibrary.length,
      itemBuilder: (context, index) {
        return SummaryCollectiveTestTile(test: tests[index]);
      },
    );
  }

  List<List<CustomTest?>> _groupTestsByTestId(List<CustomTest>? tests) {
    List<List<CustomTest?>> _groupedTests = [[]];

    for (CustomTest t in tests!) {
      switch (t.testId!) {
        case 1:
          {
            _groupedTests[0].add(t);
          }
          break;
        case 2:
          {
            _groupedTests[1].add(t);
          }
          break;
        case 3:
          {
            _groupedTests[2].add(t);
          }
          break;
        case 4:
          {
            _groupedTests[3].add(t);
          }
          break;

        default:
          {}
          break;
      }
    }

    return _groupedTests;
  }
}
