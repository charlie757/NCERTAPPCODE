import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7MathPDFFile extends StatefulWidget {
  const Class7MathPDFFile({Key key}) : super(key: key);

  @override
  _Class7MathPDFFileState createState() => _Class7MathPDFFileState();
}

class _Class7MathPDFFileState extends State<Class7MathPDFFile> {
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
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'Integers'),
          container(width, context, 'Chapter-2', 'Fractions and Decimals'),
          container(width, context, 'Chapter-3', 'Data Handling'),
          container(width, context, 'Chapter-4', 'Simple Equations'),
          container(width, context, 'Chapter-5', 'Lines and Angles'),
          container(
              width, context, 'Chapter-6', 'The Triangle and Its Properties'),
          container(width, context, 'Chapter-7', 'Congruence of Triangles'),
          container(width, context, 'Chapter-8', 'Comparing Quantities'),
          container(width, context, 'Chapter-9', 'Rational Numbers'),
          container(width, context, 'Chapter-10', 'Practical Geometry'),
          container(width, context, 'Chapter-11', 'Perimeter and Area'),
          container(width, context, 'Chapter-12', 'Algebraic Expression'),
          container(width, context, 'Chapter-13', 'Exponents and Power'),
          container(width, context, 'Chapter-14', 'Symmetry'),
          container(width, context, 'Chapter-15', 'Visualising Solid Shape'),
        ],
      ),
    );
  }

  InkWell container(width, BuildContext context, String number, String name) {
    return InkWell(
        child: Container(
            height: 80,
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
                  ],
                ))));
  }

  // Expanded offline(double width, BuildContext context, route) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.purple,
  //       child: Text("Offline"),
  //     ),
  //   ));
  // }

  // Expanded online(double width, BuildContext context, route1) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => route1));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.orange,
  //       child: Text("Online"),
  //     ),
  //   ));
  // }
}
