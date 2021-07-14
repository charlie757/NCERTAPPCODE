import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/AllClassesImportantQues/Class10importantBooks.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/AllClassesImportantQues/Class11ImportantBooks.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/AllClassesImportantQues/Class12ImportantBooks.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/AllClassesImportantQues/Class8ImportantBooks.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/AllClassesImportantQues/Class9ImportantBooks.dart';

class ClassName3 extends StatefulWidget {
  const ClassName3({Key key}) : super(key: key);

  @override
  _ClassName3State createState() => _ClassName3State();
}

class _ClassName3State extends State<ClassName3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Imp Question"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(width, context, Colors.orange, 'Class XII Imp Question', '12',
              Class12ImportantBooks()),
          inkwell(width, context, Colors.grey, 'Class XI Imp Question', '11',
              Class11ImportantBooks()),
          inkwell(width, context, Colors.red, 'Class X Imp Question', '10',
              Class10ImportantBooks()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX Imp Question',
              '9', Class9ImportantBooks()),
          inkwell(width, context, Colors.yellow, 'Class VIII Imp Question', '8',
              Class8ImportantBooks()),
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
