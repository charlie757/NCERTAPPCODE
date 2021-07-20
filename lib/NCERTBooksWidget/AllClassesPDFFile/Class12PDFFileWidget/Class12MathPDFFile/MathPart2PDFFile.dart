import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class MathPart2PDFFile extends StatefulWidget {
  const MathPart2PDFFile({Key key}) : super(key: key);

  @override
  _MathPart2PDFFileState createState() => _MathPart2PDFFileState();
}

class _MathPart2PDFFileState extends State<MathPart2PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Math-II"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Integrals'),
          container(width, context, 'Chapter-2', 'Application of Integrals'),
          container(width, context, 'Chapter-3', 'Differential Equations'),
          container(width, context, 'Chapter-4', 'Vector Algebra'),
          container(width, context, 'Chapter-5', 'Three Dimensional Geometry'),
          container(width, context, 'Chapter-6', 'Linear Programming'),
          container(width, context, 'Chapter-7', 'Probability')
        ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
        height: 70,
        child: Card(
            shadowColor: Colors.cyan,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      number,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    online(width, context, HomePage()),
                    SizedBox(
                      width: 10,
                    ),
                    offline(width, context, HomePage())
                  ],
                )
              ],
            )));
  }

  Expanded offline(double width, BuildContext context, route) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.blue,
        child: Text("Offline"),
      ),
    ));
  }

  Expanded online(double width, BuildContext context, route1) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => route1));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.cyan,
        child: Text("Online"),
      ),
    ));
  }
}
