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
            backgroundColor: Colors.lightBlue,
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
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.lightBlue,
                    child:
                        Image.asset("assets/images/icon_basic_white_1200.png"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Form(
                              key: _formKey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: customInputDecoration
                                          .copyWith(hintText: 'E-mail'),
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
                                    SizedBox(height: 20.0),
                                    TextFormField(
                                      decoration: customInputDecoration
                                          .copyWith(hintText: 'Password'),
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
                                    SizedBox(height: 20.0),
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
                                    SizedBox(height: 20.0),
                                    Text(
                                      error,
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*Image.asset("assets/images/icon_basic_white_1200.png"),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: customInputDecoration.copyWith(
                                  hintText: 'E-mail'),
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
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: customInputDecoration.copyWith(
                                  hintText: 'Password'),
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
                            SizedBox(height: 20.0),
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

                                  dynamic result =
                                      await _auth.signInEmail(email, password);
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
                            SizedBox(height: 20.0),
                            Text(
                              error,
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),*/
              ],
            ),
          );
  }
}
