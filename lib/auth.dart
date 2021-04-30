import 'package:flutter/material.dart';
class Auth extends StatefulWidget {
  static Auth id;

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String userEmail, userPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Auth')),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Authentication',
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (String email) {
                      if (email == null || email.isEmpty) {
                        return "Please enter your email";
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (String password) {
                      if (password == null || password.isEmpty) {
                        return "Please enter your password";
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logging-in user.')));
                          }
                        },
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        child: Text('Register'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registering user.')));
                          }
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
