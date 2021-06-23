import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'YOUR STORIES',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text("Story"),
                color: Colors.blueAccent[600],
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
