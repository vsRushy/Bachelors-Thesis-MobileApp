import 'package:ai_mobile_app/custom_widgets/summary_test_tile.dart';
import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/services/auth.dart';
import 'package:provider/provider.dart';

class SummaryList extends StatefulWidget {
  @override
  _SummaryListState createState() => _SummaryListState();
}

class _SummaryListState extends State<SummaryList> {
  @override
  Widget build(BuildContext context) {
    final tests = Provider.of<List<CustomTest>?>(context);

    return ListView.builder(
      itemCount: tests!.length,
      itemBuilder: (context, index) {
        return SummaryTestTile(test: tests[index]);
      },
    );
  }
}
