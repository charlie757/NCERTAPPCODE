import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class8MathPDFFile extends StatefulWidget {
  const Class8MathPDFFile({Key key}) : super(key: key);

  @override
  _Class8MathPDFFileState createState() => _Class8MathPDFFileState();
}

class _Class8MathPDFFileState extends State<Class8MathPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Math"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'Rational Numbers'),
          container(
              width, context, 'Chapter-2', 'Linear Equations in One Variable'),
          container(
              width, context, 'Chapter-3', 'Understanding Quadrilaterals'),
          container(width, context, 'Chapter-4', 'Practical Geometry'),
          container(width, context, 'Chapter-5', 'Data Handling'),
          container(width, context, 'Chapter-6', 'Square and Square Roots'),
          container(width, context, 'Chapter-7', 'Cube and Cube Roots'),
          container(width, context, 'Chapter-8', 'Comparing Quantities'),
          container(width, context, 'Chapter-9',
              'Algebraic Expressions and Identities'),
          container(width, context, 'Chapter-10', 'Visualizing Solid Shapes'),
          container(width, context, 'Chapter-11', 'Mensuration'),
          container(width, context, 'Chapter-12', 'Exponents and Powers'),
          container(
              width, context, 'Chapter-13', 'Direct and Inverse Proportions'),
          container(width, context, 'Chapter-14', 'Factorization'),
          container(width, context, 'Chapter-15', 'Introduction to Graphs'),
          container(width, context, 'Chapter-16', 'Playing with Numbers'),
          container(width, context, 'Chapter-6', 'name'),
          container(width, context, 'Chapter-6', 'name')
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
