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
    final tests = Provider.of<List<CustomTest?>?>(context) ?? null;
    List<List<CustomTest?>?>? groupedTests = _groupTestsByTestId(tests);
    List<CustomTest?>? averagedTests = _averageTests(groupedTests);

    return (tests != null)
        ? ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16),
            itemCount: questionLibrary.length,
            itemBuilder: (context, index) {
              return (averagedTests != null)
                  ? SummaryCollectiveTestTile(test: averagedTests[index]!)
                  : Container();
            })
        : Center(
            child: Text("Empty"),
          );
  }

  List<List<CustomTest?>?>? _groupTestsByTestId(
      List<CustomTest?>? individualTests) {
    List<List<CustomTest?>?>? _groupedTests =
        List.generate(questionLibrary.length, (index) => null);

    if (individualTests != null && individualTests.length > 0) {
      for (CustomTest? t in individualTests) {
        _groupedTests.elementAt(t!.testId! - 1)!.add(t);
      }

      return _groupedTests;
    } else {
      return null;
    }
  }

  List<CustomTest?>? _averageTests(List<List<CustomTest?>?>? grouped) {
    List<CustomTest?>? _averaged = List.filled(questionLibrary.length, null);

    if (grouped != null) {
      for (int i = 0; i < questionLibrary.length; ++i) {
        if (grouped[i] != null) {
          double averageMark = 0.0;
          int correctAnswers = 0;
          int incorrectAnswers = 0;

          for (CustomTest? cTest in grouped[i]!) {
            averageMark += cTest!.mark!;
            correctAnswers += cTest.correctAnswers!;
            incorrectAnswers += cTest.incorrectAnswers!;
          }

          _averaged[i] = CustomTest(
            testId: i + 1,
            mark:
                num.parse((averageMark / grouped[i]!.length).toStringAsFixed(2))
                    .toDouble(),
            correctAnswers: (correctAnswers ~/ grouped[i]!.length).toInt(),
            incorrectAnswers: (incorrectAnswers ~/ grouped[i]!.length).toInt(),
          );
        }
      }

      return _averaged;
    } else {
      return null;
    }
  }
}
