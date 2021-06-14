import 'package:ai_mobile_app/custom_widgets/summary_individual_test_tile.dart';
import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:provider/provider.dart';

class SummaryIndividualList extends StatefulWidget {
  @override
  _SummaryIndividualListState createState() => _SummaryIndividualListState();
}

class _SummaryIndividualListState extends State<SummaryIndividualList> {
  @override
  Widget build(BuildContext context) {
    final tests = Provider.of<List<CustomTest>?>(context) ?? [];

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 16),
      itemCount: tests.length,
      itemBuilder: (context, index) {
        return SummaryIndividualTestTile(test: tests[index]);
      },
    );
  }
}
