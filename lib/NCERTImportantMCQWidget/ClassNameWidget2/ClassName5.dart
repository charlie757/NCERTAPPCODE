import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class10MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class11MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class12MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class9MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class8MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class6MCQBooks.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/AllClassessMCQBooks/Class7MCQBooks.dart';

class ClassName5 extends StatefulWidget {
  const ClassName5({Key key}) : super(key: key);

  @override
  _ClassName5State createState() => _ClassName5State();
}

class _ClassName5State extends State<ClassName5> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Important MCQ"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(width, context, Colors.orange, 'Class XII MCQ', '12',
              Class12MCQBooks()),
          inkwell(width, context, Colors.grey, 'Class XI MCQ', '11',
              Class11MCQBooks()),
          inkwell(width, context, Colors.red, 'Class X MCQ', '10',
              Classs10MCQBooks()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX MCQ', '9',
              Class9MCQBooks()),
          inkwell(width, context, Colors.yellow, 'Class VIII MCQ', '8',
              Class8MCQBooks()),
          inkwell(width, context, Colors.cyan, 'Class VII MCQ', '7',
              Class7MCQBooks()),
          inkwell(width, context, Colors.blue, 'Class VI MCQ', '6',
              Class6MCQBooks()),
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
