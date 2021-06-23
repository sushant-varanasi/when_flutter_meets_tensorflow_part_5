import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://flutter.dev';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

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
              'STORIES',
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
          decoration: BoxDecoration(
            color: Colors.grey[50],
            image: DecorationImage(
              image: AssetImage('assets/images/bg-bottom.png'),
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              // ignore: deprecated_member_use
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                // ignore: deprecated_member_use
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.redAccent,
                  onPressed: _launchURL,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.orangeAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.deepOrangeAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.yellowAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.lightGreenAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.greenAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.blueAccent[600],
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: new RaisedButton(
                  child: new Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  color: Colors.blueAccent,
                  onPressed: null,
                ),
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
            ],
          ),
        ),
      ),
    );
  }
}
