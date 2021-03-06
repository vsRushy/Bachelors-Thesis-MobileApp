import 'package:ai_mobile_app/models/custom_user.dart';
import 'package:ai_mobile_app/screens/authentication/authentication.dart';
import 'package:ai_mobile_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    
    return (user!.uid != null) ? Home() : Authentication();
  }
}