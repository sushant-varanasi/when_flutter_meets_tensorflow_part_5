import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/category_card.dart';
import 'package:handwritten_number_recognizer/recognizer_screen.dart';

class write extends StatelessWidget {
  final List<Widget> _categories = [
    CategoryCard(
      title: 'Hindi',
      primaryColor: Colors.orangeAccent[100],
      secondaryColor: Colors.orange,
      /* screen: ColorsScreen(
        title: 'Colors',
        primaryColor: Colors.orangeAccent[100],
        secondaryColor: Colors.orange,
      ),*/
    ),
    CategoryCard(
      title: '123',
      primaryColor: Colors.greenAccent[100],
      secondaryColor: Colors.green,
      screen: RecognizerScreen(title: 'Number recognizer',)
    ),
    CategoryCard(
      title: 'ABC',
      primaryColor: Colors.purpleAccent[100],
      secondaryColor: Colors.purple,
      /*screen: AlphabetsScreen(
        title: 'ABC',
        primaryColor: Colors.purpleAccent[100],
        secondaryColor: Colors.purple,
      ),*/
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey[50],
            image: DecorationImage(
              image: AssetImage('assets/images/bg-bottom.png'),
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(_categories),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
