import 'package:flutter/material.dart';
import 'dart:math';

class Addition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber1 = random.nextInt(9) + 1;
    int randomNumber2 = random.nextInt(9) + 1;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text("Arithmetic Addition"),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
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
      ),
    );
  }
}
