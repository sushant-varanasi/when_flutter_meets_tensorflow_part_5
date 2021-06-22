import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              children: [
                Expanded(
                  flex: 20,
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/SKILL_PP.png'),
                    ),
                  ),
                ),
                Expanded(
                    flex: 10,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          letterSpacing: 3,
                        ),
                      ),
                    )),
                Expanded(
                  flex: 7,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Username'),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: TextButton(
                    child: Text('Forgot Password'),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: TextButton(
                      onPressed: () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Text(
                        'Login',
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        primary: Colors.white,
                        padding: EdgeInsets.all(5),
                        minimumSize: Size(400, 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('SignUp'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
