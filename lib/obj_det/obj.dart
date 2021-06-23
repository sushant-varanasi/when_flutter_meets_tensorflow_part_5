//


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'home_obj.dart';

List<CameraDescription> cameras;

Future<CameraDescription> main22() async {
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  //new MyApp2();
  //return FutureBuilder(cameras);
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //cameras = main22();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RealTime Detection',
      home: HomePage(cameras),
    );
  }
}