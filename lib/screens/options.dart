import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/category_card.dart';
import 'package:handwritten_number_recognizer/main.dart';
import 'package:handwritten_number_recognizer/obj_det/obj.dart';
import 'package:handwritten_number_recognizer/screens/ABC.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> _categories = [
    CategoryCard(
      title: 'Colors',
      primaryColor: Colors.orangeAccent[100],
      secondaryColor: Colors.orange,
     /* screen: ColorsScreen(
        title: 'Colors',
        primaryColor: Colors.orangeAccent[100],
        secondaryColor: Colors.orange,
      ),*/
    ),
    CategoryCard(
      title: 'Shapes',
      primaryColor: Colors.greenAccent[100],
      secondaryColor: Colors.green,
      screen: write(),
    ),
    CategoryCard(
      title: 'ABC',
      primaryColor: Colors.purpleAccent[100],
      secondaryColor: Colors.purple,
      screen: write(),
    ),
    CategoryCard(
      title: 'Convert',
      primaryColor: Colors.redAccent[100],
      secondaryColor: Colors.red,
      /* screen: ShapesScreen(
        title: 'Shapes',
        primaryColor: Colors.redAccent[100],
        secondaryColor: Colors.red,
      ),*/
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/bg-top.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(_categories),
            ),
          ],
        ),
      ),
    );
  }
}
