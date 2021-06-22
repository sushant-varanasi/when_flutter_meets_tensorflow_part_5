import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/bottom_loading_indicator.dart';

class Coloring extends StatefulWidget {
  @override
  _ColoringState createState() => _ColoringState();
}

class _ColoringState extends State<Coloring> {
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
              'COLORING',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.black,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Container(
                  height: 175,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      margin: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0),
                      child: Container(
                        color: AppColors.APP_COLOR_1,
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'CLASSIFY',
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
                                      builder: (context) => issueKanban()));
                            },*/
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
                  height: 175,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      color: Colors.transparent,
                      shadowColor: Colors.blueGrey[100],
                      margin: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0),
                      child: Container(
                        color: Colors.blue[900],
                        child: Center(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'COLOR',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            /*onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          chooseLineNumber()));
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
                            },*/
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
