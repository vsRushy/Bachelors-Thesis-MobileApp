import 'package:ai_mobile_app/services/auth.dart';
import 'package:ai_mobile_app/shared/constants.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final Function toggleAuthenticationType;
  SignUp({required this.toggleAuthenticationType});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        title: Text('Sign Up'),
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          TextButton.icon(
            label: Text('Sign in'),
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
                child: Text('Sign up'),
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

                    dynamic result = await _auth.signUpEmail(email, password);
                    if (result == null) {
                      setState(() {
                        error = 'Please, enter a valid e-mail.';
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
