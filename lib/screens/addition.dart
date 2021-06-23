import 'package:flutter/material.dart';
import 'dart:math';
import 'package:handwritten_number_recognizer/constants.dart';
import 'package:handwritten_number_recognizer/drawing_painter.dart';
import 'package:handwritten_number_recognizer/brain.dart';

import '../recognizer_screen.dart';

class Addition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber1 = random.nextInt(9) + 1;
    int randomNumber2 = random.nextInt(9) + 1;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text("Arithmetic Addition"),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: ListView(
          children: [
            Container(
              child: Text(
                randomNumber1.toString() +
                    " + " +
                    randomNumber2.toString() +
                    " = ?",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            Container(
                child: RecognizerScreen(
              title: 'Number recognizer',
            )),
          ],
        ),
      ),
    );
  }
}
