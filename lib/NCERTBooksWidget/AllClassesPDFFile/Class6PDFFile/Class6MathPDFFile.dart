import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class6MathPDFFile extends StatefulWidget {
  const Class6MathPDFFile({Key key}) : super(key: key);

  @override
  _Class6MathPDFFileState createState() => _Class6MathPDFFileState();
}

class _Class6MathPDFFileState extends State<Class6MathPDFFile> {
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
          container(width, context, 'Chapter-1', 'Knowing Our Numbers'),
          container(width, context, 'Chapter-2', 'Whole Numbers'),
          container(width, context, 'Chapter-3', 'Playing With Numbers'),
          container(width, context, 'Chapter-4', 'Basic Geometrical Ideas'),
          container(
              width, context, 'Chapter-5', 'Understanding Elementary Shapes'),
          container(width, context, 'Chapter-6', 'Integers'),
          container(width, context, 'Chapter-7', 'Fractions'),
          container(width, context, 'Chapter-8', 'Decimals'),
          container(width, context, 'Chapter-9', 'Data Handling'),
          container(width, context, 'Chapter-10', 'Mensuration'),
          container(width, context, 'Chapter-11', 'Algebra'),
          container(width, context, 'Chapter-12', 'Ratio and Proportion'),
          container(width, context, 'Chapter-13', 'Symmetry'),
          container(width, context, 'Chapter-14', 'Practical Geometry'),
          container(width, context, 'Answers', ''),
          container(width, context, 'Brain Teaser', ''),
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
