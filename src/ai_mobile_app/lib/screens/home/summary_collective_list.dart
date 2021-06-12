import 'package:ai_mobile_app/custom_widgets/summary_collective_test_tile.dart';
import 'package:ai_mobile_app/custom_widgets/summary_individual_test_tile.dart';
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
    print(tests);

    return ListView.builder(
      itemCount: tests.length,
      itemBuilder: (context, index) {
        return SummaryCollectiveTestTile(test: tests[index]);
      },
    );
  }
}
