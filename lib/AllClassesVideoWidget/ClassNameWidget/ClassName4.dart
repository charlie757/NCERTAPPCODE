import 'package:flutter/material.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class10BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class11BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class12BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class1BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class2BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class3BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class4BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class5BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class6BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class7BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class8BooksVideo.dart';
import 'package:ncertapp/AllClassesVideoWidget/AllClassesBooksWidget3/Class9BooksVideo.dart';

class ClassName4 extends StatefulWidget {
  const ClassName4({Key key}) : super(key: key);

  @override
  _ClassName4State createState() => _ClassName4State();
}

class _ClassName4State extends State<ClassName4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("All Classes Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(width, context, Colors.orange, 'Class XII Video', '12',
              Class12BooksVideo()),
          inkwell(width, context, Colors.grey, 'Class XI Video', '11',
              Class11BooksVideo()),
          inkwell(width, context, Colors.red, 'Class X Video', '10',
              Class10BooksVideo()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX Video', '9',
              Class9BooksVideo()),
          inkwell(width, context, Colors.yellow, 'Class VIII Video', '8',
              Class8BooksVideo()),
          inkwell(width, context, Colors.cyan, 'Class VII Video', '7',
              Class7BooksVideo()),
          inkwell(width, context, Colors.blue, 'Class VI Video', '6',
              Class6BooksVideo()),
          inkwell(width, context, Colors.purple, 'Class V Video', '5',
              Class5BooksVideo()),
          inkwell(width, context, Colors.blueGrey, 'Class IV Video', '4',
              Class4BooksVideo()),
          inkwell(width, context, Colors.brown, 'Class III', '3',
              Class3BooksVideo()),
          inkwell(width, context, Colors.orange, 'Class II', '2',
              Class2BooksVideo()),
          inkwell(
              width, context, Colors.pink, 'Class I', '1', Class1BooksVideo())
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
