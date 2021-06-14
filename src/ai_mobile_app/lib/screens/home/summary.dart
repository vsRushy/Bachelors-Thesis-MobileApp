import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:ai_mobile_app/screens/home/summary_collective_list.dart';
import 'package:ai_mobile_app/screens/home/summary_individual_list.dart';
import 'package:ai_mobile_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class Summary extends StatefulWidget {
  int? _selectedIndex = 0;

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterToggleTab(
            width: 90,
            borderRadius: 26,
            height: 50,
            initialIndex: 0,
            selectedBackgroundColors: [Colors.lightBlue],
            selectedTextStyle: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            unSelectedTextStyle: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            labels: ["Individual", "Collective"],
            selectedLabelIndex: (index) {
              setState(() {
                widget._selectedIndex = index;
              });
            },
          ),
          SizedBox(height: 20),
          StreamProvider<List<CustomTest>?>.value(
            value: DatabaseService(uid: user!.uid).tests,
            initialData: [],
            child: Expanded(
              child: (widget._selectedIndex == 0)
                  ? SummaryIndividualList()
                  : SummaryCollectiveList(),
            ),
          ),
        ],
      ),
    );
  }
}
