import 'package:ai_mobile_app/models/custom_test.dart';
import 'package:ai_mobile_app/screens/home/lesson_page.dart';
import 'package:flutter/material.dart';
import 'package:ai_mobile_app/screens/home/lessons.dart';

class LessonItem extends StatelessWidget {
  final int? index;
  final IconData? icon;
  final String? title;
  final String? subTitle;
  final String? description;
  final String? moreInfo;

  LessonItem({
    required int this.index,
    required IconData this.icon,
    required String this.title,
    required String this.subTitle,
    required String this.description,
    this.moreInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
          colors: <Color>[Colors.white, Colors.lightBlue],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Card(
        color: Colors.lightBlue,
        shadowColor: Colors.black,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
              colors: <Color>[Colors.blue, Colors.lightBlue],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  title!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                subtitle: Text(
                  subTitle!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  description!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        child: Text(
                          'START',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(140, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LessonPage(index!),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Visibility(
                    visible: moreInfo != null,
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.white,
                          ),
                          Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(title.toString()),
                          content: Text(
                            "This lesson doesn't have a test.",
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Ok'),
                              child: Text('Ok'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
