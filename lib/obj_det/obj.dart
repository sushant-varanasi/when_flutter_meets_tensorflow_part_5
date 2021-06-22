//


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'home_obj.dart';

List<CameraDescription> cameras;

Future<Null> main22() async {
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RealTime Detection',
      home: HomePage(cameras),
    );
  }
}