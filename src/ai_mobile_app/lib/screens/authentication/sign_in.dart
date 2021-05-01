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
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                      ),
                      Positioned.fill(
                        top: -90,
                        bottom: -20,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
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
                            ),
                            child: SingleChildScrollView(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'SIGN IN',
                                      style: customTextTitleStyle.copyWith(
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'E-MAIL',
                                        style: customTextTitleStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: customInputDecoration
                                          .copyWith(hintText: 'e-mail'),
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
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'PASSWORD',
                                        style: customTextTitleStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: customInputDecoration
                                          .copyWith(hintText: 'password'),
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
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      child: Text('Sign in'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueAccent,
                                        minimumSize: Size(140, 40),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
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
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      error,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? Sign up ",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "here",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        widget.toggleAuthenticationType();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          );
  }
}
