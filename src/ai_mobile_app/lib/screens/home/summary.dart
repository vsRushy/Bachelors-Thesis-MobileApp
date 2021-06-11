import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:ai_mobile_app/screens/home/summary_list.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);

    return StreamProvider<List<CustomTest>?>.value(
      value: DatabaseService(uid: user!.uid).tests,
      initialData: [],
      child: SummaryList(),
    );
  }
}
