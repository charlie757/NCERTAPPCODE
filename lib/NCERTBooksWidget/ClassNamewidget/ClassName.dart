import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class11Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class12Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class10Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class9Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class8Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class7Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class6Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class5Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class4Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class3Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class2Books.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksWidget/Class1Books.dart';

class ClassName extends StatefulWidget {
  const ClassName({Key key}) : super(key: key);

  @override
  _ClassNameState createState() => _ClassNameState();
}

class _ClassNameState extends State<ClassName> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Books"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(
              width, context, Colors.orange, 'Class XII Books', '12', Class12Books()),
          inkwell(
              width, context, Colors.grey, 'Class XI Books', '11', Class11Books()),
          inkwell(width, context, Colors.red, 'Class X Books', '10', Class10Books()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX Books', '9',
              Class9Books()),
          inkwell(
              width, context, Colors.yellow, 'Class VIII Books', '8', Class8Books()),
          inkwell(width, context, Colors.cyan, 'Class VII Books', '7', Class7Books()),
          inkwell(width, context, Colors.blue, 'Class VI Books', '6', Class6Books()),
          inkwell(width, context, Colors.purple, 'Class V Books', '5', Class5Books()),
          inkwell(
              width, context, Colors.blueGrey, 'Class IV Books', '4', Class4Books()),
          inkwell(
              width, context, Colors.brown, 'Class III Books', '3', Class3Books()),
          inkwell(
              width, context, Colors.orange, 'Class II Books', '2', Class2Books()),
          inkwell(width, context, Colors.pink, 'Class I Books', '1', Class1Books())
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
