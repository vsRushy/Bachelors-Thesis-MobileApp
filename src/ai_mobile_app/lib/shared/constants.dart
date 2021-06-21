import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchUrl(String url) {
  final encodedUrl = Uri.encodeFull(url);
  launch(encodedUrl);
}

const customTextTitleStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
);

const customInputDecoration = InputDecoration(
    /*filled: true,
  fillColor: Colors.white,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlue,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlue,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  )*/
    );

const profileElementTextStyle = TextStyle(
  color: Colors.lightBlue,
  fontSize: 36,
  fontWeight: FontWeight.bold,
);

const profileElementNumberStyle = TextStyle(
  color: Colors.lightBlue,
  fontSize: 60,
  fontWeight: FontWeight.bold,
);
