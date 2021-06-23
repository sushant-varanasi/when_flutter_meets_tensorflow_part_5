import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/recognizer_screen.dart';
import 'package:handwritten_number_recognizer/screens/addition.dart';
import 'package:handwritten_number_recognizer/screens/login.dart';
import 'package:handwritten_number_recognizer/screens/options.dart';
import 'package:handwritten_number_recognizer/screens/stories.dart';

void main() => runApp(handwrittenNumberRecognizerApp());

class handwrittenNumberRecognizerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Recognizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Addition(), //RecognizerScreen(title: 'Number recognizer',),
    );
  }
}
