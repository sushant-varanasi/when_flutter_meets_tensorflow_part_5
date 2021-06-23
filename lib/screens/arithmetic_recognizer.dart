import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/constants.dart';
import 'package:handwritten_number_recognizer/drawing_painter.dart';
import 'package:handwritten_number_recognizer/brain.dart';


Random random = new Random();
int randomNumber1 = random.nextInt(5) + 1;
int randomNumber2 = random.nextInt(4) + 1;

class arithmetic extends StatefulWidget {


  arithmetic({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RecognizerScreen createState() => _RecognizerScreen();
}

class _RecognizerScreen extends State<arithmetic> {



  List<Offset> points = List();
  AppBrain brain = AppBrain();

  String numb = '';
  String conf = '0';

  void _cleanDrawing() {
    setState(() {
      points = List();
    });
  }

  @override
  void initState() {
    super.initState();
    brain.loadModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: DecorationImage(
            image: AssetImage('assets/images/bg-bottom.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
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
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                border: new Border.all(
                  width: 3.0,
                  color: Colors.blue,
                ),
              ),
              child: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        RenderBox renderBox = context.findRenderObject();
                        points.add(
                            renderBox.globalToLocal(details.globalPosition));
                      });
                    },
                    onPanStart: (details) {
                      setState(() {
                        RenderBox renderBox = context.findRenderObject();
                        points.add(
                            renderBox.globalToLocal(details.globalPosition));
                      });
                    },
                    onPanEnd: (details) async {
                      points.add(null);
                      List predictions =
                          await brain.processCanvasPoints(points);
                      print(predictions);
                      print("lalala");
                      setState(() {
                        numb = (predictions[0]["index"]).toString();
                        conf = (((predictions[0]["confidence"]) * 10))
                            .toStringAsFixed(1);
                      });
                      print(numb);
                      //print(randomNumber1 + randomNumber2);
                      //print(randomNumber2);
                    },
                    child: ClipRect(
                      child: CustomPaint(
                        size: Size(kCanvasSize, kCanvasSize),
                        painter: DrawingPainter(
                          offsetPoints: points,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                //color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Number drawn: ' + numb )
                //numb == randomNumber1 + randomNumber2
                    //? Text('Number drawn: ' + numb + '\nYour Sum is Correct')
                    //: Text('Number drawn: ' + numb + '\nYour Sum is Incorrect'),
                // (condition == true){
                //   Text('Number drawn: ' + numb + '\nYour Sum is Correct'),;
                // }else{
                //   Text('Number drawn: ' + numb + '\nYour Sum is Incorrect'),;
                // }
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          _cleanDrawing();
        },
        tooltip: 'Clean',
        child: Icon(
          Icons.delete,
        ),
      ),
    );
  }
}
