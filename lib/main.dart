import 'package:flutter/material.dart';
import 'package:trivia/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Trivia',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}