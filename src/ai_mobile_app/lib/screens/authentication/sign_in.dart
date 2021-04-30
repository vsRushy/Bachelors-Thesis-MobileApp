import 'package:ai_mobile_app/services/auth.dart';
import 'package:ai_mobile_app/shared/constants.dart';
import 'package:ai_mobile_app/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleAuthenticationType;
  SignIn({required this.toggleAuthenticationType});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            /*appBar: AppBar(
              title: Text('Sign In'),
              backgroundColor: Colors.lightBlue,
              actions: <Widget>[
                TextButton.icon(
                  label: Text('Sign up'),
                  icon: Icon(Icons.person),
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    widget.toggleAuthenticationType();
                  },
                ),
              ],
            ),*/
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/icon_basic_white_1200.png"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        color: Colors.white,
                      ),
                      Positioned.fill(
                        top: -50,
                        bottom: 70,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.all(30.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 10.0,
                                  spreadRadius: 5.0,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'LOGIN',
                                    style: customTextTitleStyle.copyWith(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'E-MAIL',
                                      style: customTextTitleStyle.copyWith(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: customInputDecoration.copyWith(
                                        hintText: 'e-mail'),
                                    validator: (value) {
                                      return (value!.isEmpty)
                                          ? 'Please, enter an e-mail.'
                                          : null;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        email = value;
                                      });
                                    },
                                  ),
                                  TextFormField(
                                    decoration: customInputDecoration.copyWith(
                                        hintText: 'password'),
                                    obscureText: true,
                                    validator: (value) {
                                      return (value!.length < 6)
                                          ? 'The password must be at least 6 characters long.'
                                          : null;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        password = value;
                                      });
                                    },
                                  ),
                                  ElevatedButton(
                                    child: Text('Sign in'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blueAccent,
                                    ),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() {
                                          isLoading = true;
                                        });

                                        dynamic result = await _auth
                                            .signInEmail(email, password);
                                        if (result == null) {
                                          setState(() {
                                            error =
                                                'An account with the credentials provided could not be found.';
                                            isLoading = false;
                                          });
                                        }
                                      }
                                    },
                                  ),
                                  //SizedBox(height: 20.0),
                                  //
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  error,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
  }
}
