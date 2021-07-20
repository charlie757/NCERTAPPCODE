import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class9MathPDFFile extends StatefulWidget {
  const Class9MathPDFFile({Key key}) : super(key: key);

  @override
  _Class9MathPDFFileState createState() => _Class9MathPDFFileState();
}

class _Class9MathPDFFileState extends State<Class9MathPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Math"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', '   '),
          container(width, context, 'Chapter-1', 'Number Systems'),
          container(width, context, 'Chapter-2', 'Polynomials'),
          container(width, context, 'Chapter-3', 'Coordinate Geometry'),
          container(
              width, context, 'Chapter-4', 'Linear Equations in Two Variables'),
          container(
              width, context, 'Chapter-5', 'Introduction to Euclid’s Geometry'),
          container(width, context, 'Chapter-6', ' Lines and Angles'),
          container(width, context, 'Chapter-7', 'Triangles'),
          container(width, context, 'Chapter-8', 'Quadrilaterals'),
          container(width, context, 'Chapter-9',
              'Areas of Parallelograms and Triangles'),
          container(width, context, 'Chapter-10', 'Circles'),
          container(width, context, 'Chapter-11', 'Constructions'),
          container(width, context, 'Chapter-12', 'Heron’s Formula'),
          container(width, context, 'Chapter-13', 'Surface Areas and Volumes'),
          container(width, context, 'Chapter-14', 'Statistics'),
          container(width, context, 'Chapter-15', 'Probability'),
        ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
        height: 90,
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
                    Expanded(
                        child: Text(
                      name,
                      style: TextStyle(fontSize: 16),
                    )),
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
        color: Colors.purple,
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
        color: Colors.orange,
        child: Text("Online"),
      ),
    ));
  }
}
