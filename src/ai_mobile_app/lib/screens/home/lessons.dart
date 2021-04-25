import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    final lessons = Provider.of<QuerySnapshot?>(context);
    
    for(var document in lessons!.docs) {
      print(document.data());
    }

    return Container(
      
    );
  }
}