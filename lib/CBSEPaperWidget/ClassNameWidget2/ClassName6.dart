import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/AllClassesPaperWidget3/Class10BooksPaper.dart';
import 'package:ncertapp/CBSEPaperWidget/AllClassesPaperWidget3/Class11BooksPaper.dart';
import 'package:ncertapp/CBSEPaperWidget/AllClassesPaperWidget3/Class12BooksPaper.dart';
import 'package:ncertapp/CBSEPaperWidget/AllClassesPaperWidget3/Class8BooksPaper.dart';
import 'package:ncertapp/CBSEPaperWidget/AllClassesPaperWidget3/Class9BooksPaper.dart';

class ClassName6 extends StatefulWidget {
  const ClassName6({Key key}) : super(key: key);

  @override
  _ClassName6State createState() => _ClassName6State();
}

class _ClassName6State extends State<ClassName6> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("CBSE Paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(width, context, Colors.orange, 'Class XII Board Paper', '12',
              Class12BooksPaper()),
          inkwell(width, context, Colors.grey, 'Class XI Board Paper', '11',
              Class11BooksPaper()),
          inkwell(width, context, Colors.red, 'Class X Board Paper', '10',
              Class10BooksPaper()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX Board Paper',
              '9', Class9BooksPaper()),
          inkwell(width, context, Colors.yellow, 'Class VIII Board Paper', '8',
              Class8BooksPaper()),
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
