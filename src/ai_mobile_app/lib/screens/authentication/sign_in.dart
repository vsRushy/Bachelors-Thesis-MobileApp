import 'package:ai_mobile_app/services/auth.dart';
import 'package:ai_mobile_app/shared/constants.dart';
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

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: customInputDecoration.copyWith(hintText: 'E-mail'),
                validator: (value) {
                  return (value!.isEmpty) ? 'Please, enter an e-mail.' : null;
                },
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: customInputDecoration.copyWith(hintText: 'Password'),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Processing data'),
                      ),
                    );

                    dynamic result = await _auth.signInEmail(email, password);
                    if (result == null) {
                      setState(() {
                        error =
                            'An account with the credentials provided could not be found.';
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
    );
  }
}
