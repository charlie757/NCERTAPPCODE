import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class10Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class11Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class12Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class4Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class5Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class6Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class7Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class8Books.dart';
import 'package:ncertapp/NCERSolutionWidget/AllClassesBooksWidget3/Class9Books.dart';

class ClassName1 extends StatefulWidget {
  const ClassName1({Key key}) : super(key: key);

  @override
  _ClassName1State createState() => _ClassName1State();
}

class _ClassName1State extends State<ClassName1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Solution"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(
              width, context, Colors.orange, 'Class XII', '12', Class12Books()),
          inkwell(
              width, context, Colors.grey, 'Class XI', '11', Class11Books()),
          inkwell(width, context, Colors.red, 'Class X', '10', Class10Books()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX', '9',
              Class9Books()),
          inkwell(
              width, context, Colors.yellow, 'Class VIII', '8', Class8Books()),
          inkwell(width, context, Colors.cyan, 'Class VII', '7', Class7Books()),
          inkwell(width, context, Colors.blue, 'Class VI', '6', Class6Books()),
          inkwell(width, context, Colors.purple, 'Class V', '5', Class5Books()),
          inkwell(
              width, context, Colors.blueGrey, 'Class IV', '4', Class4Books()),
        ],
      ),
    );
  }

  InkWell inkwell(double width, BuildContext context, Color color, String name,
      String number, route) {
    return InkWell(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 25,
              child: Text(number),
            ),
            Text(name),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
