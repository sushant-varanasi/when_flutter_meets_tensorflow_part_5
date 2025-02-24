import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url1 = 'https://www.youtube.com/watch?v=ZcDkVNTFf2w';
const _url2 = 'https://www.youtube.com/watch?v=xIhzDiB0djw';
const _url3 = 'https://www.youtube.com/watch?v=69RWH2hwhCo';
const _url4 = 'https://www.youtube.com/watch?v=Jj7xJTHR4V8';
const _url5 = 'https://www.youtube.com/watch?v=OMVTV73iWRM';
const _url6 = 'https://www.youtube.com/watch?v=iuBwkDU7FkY';
const _url7 = 'https://www.youtube.com/watch?v=qxn_-sd14Oc';
const _url8 = 'https://www.youtube.com/watch?v=WGGUvaOMtoM';

void _launchURL() async => await canLaunch(_url1)
    ? await launch(_url1)
    : throw 'Could not launch $_url1';

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
                  color: Colors.orangeAccent,
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
                  color: Colors.deepOrangeAccent,
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
                  color: Colors.yellowAccent,
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
                  color: Colors.lightGreenAccent,
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
                  color: Colors.greenAccent,
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
                  color: Colors.purpleAccent,
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
