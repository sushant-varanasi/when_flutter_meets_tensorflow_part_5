import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/screens/coloring.dart';
import 'package:handwritten_number_recognizer/screens/writing.dart';
import '../constants/app_colors.dart';
import '../constants/bottom_loading_indicator.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return /*loading
        ? BottomLoader()
        : */
        Container(
      constraints: BoxConstraints.expand(),
      /*decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),*/
      child: Scaffold(
        backgroundColor: AppColors.TABLE_BACKGROUND,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Choose an option',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.white,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                      child: Container(
                        color: AppColors.APP_COLOR_1,
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'WRITING',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Writing()));
                            },
                            /*onTap: () async {
                                    if (_formKey.currentState.validate()) {
                                      setState(() => loading = true);
                                      dynamic result =
                                          await _auth.signInWithEmailAndPassword(
                                              email, password);
                                      Navigator.pop(context);
                                      if (result == null) {
                                        setState(() {
                                          error =
                                              'Could not sign in with those credentials';
                                          loading = false;
                                        });
                                      }
                                    }
                                  },*/
                          ),
                        ),
                      )),
                ),
                Container(
                  height: 100,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      margin:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                      child: Container(
                        color: AppColors.APP_COLOR_1,
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'DETECT OBJECTS',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            /*onTap: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            chooseLineNumber_linewise()));
                              }*/
                          ),
                        ),
                      )),
                ),
                Container(
                  height: 100,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      color: Colors.transparent,
                      shadowColor: Colors.blueGrey[100],
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                      child: Container(
                        color: Colors.blue[900],
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'COLORING',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coloring()));
                              /*if (_formKey.currentState.validate()) {
                                      setState(() => loading = true);
                                      dynamic result =
                                          await _auth.signInWithEmailAndPassword(
                                              email, password);
                                      Navigator.pop(context);
                                      if (result == null) {
                                        setState(() {
                                          error =
                                              'Could not sign in with those credentials';
                                          loading = false;
                                        });
                                      }
                                    }*/
                            },
                          ),
                        ),
                      )),
                ),
                Container(
                  height: 100,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                      child: Container(
                        color: AppColors.APP_COLOR_1,
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                '3D TRANSFORMATION',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            /*onTap: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            chooseLineNumber_linewise()));
                              }*/
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
