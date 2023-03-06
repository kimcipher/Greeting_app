import 'package:flutter/material.dart';
import 'greeting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: GreetingScreen(),
    );
  }
}
