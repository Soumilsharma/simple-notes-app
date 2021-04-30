import 'package:flutter/material.dart';
import 'auth.dart';
import 'addnote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      routes: {
        Auth.id: (context) => Auth(),
        addnote.id: (context) => addnote()
      },
      initialRoute: Auth.id,
    );
  }
}