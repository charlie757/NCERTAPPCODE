import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class5MathPDFFile extends StatefulWidget {
  const Class5MathPDFFile({Key key}) : super(key: key);

  @override
  _Class5MathPDFFileState createState() => _Class5MathPDFFileState();
}

class _Class5MathPDFFileState extends State<Class5MathPDFFile> {
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
          container(width, context, 'Chapter-1', 'The fish Tale'),
          container(width, context, 'Chapter-2', 'Shapes and Angles'),
          container(width, context, 'Chapter-3', 'How Many Squares?'),
          container(width, context, 'Chapter-4', 'Parts and Wholes'),
          container(width, context, 'Chapter-5', 'Does it Look the Same?'),
          container(width, context, 'Chapter-6',
              'Be My Multiple, I’ll be Your Factor'),
          container(width, context, 'Chapter-7', 'Can You See the Pattern?'),
          container(width, context, 'Chapter-8', 'Mapping Your Way'),
          container(width, context, 'Chapter-9', 'Boxes and Sketches'),
          container(width, context, 'Chapter-10', 'Tenths and Hundredths'),
          container(width, context, 'Chapter-11', 'Area and its Boundary'),
          container(width, context, 'Chapter-12', 'Smart Charts'),
          container(
              width, context, 'Chapter-13', 'Ways to Multiply and Divide'),
          container(width, context, 'Chapter-14', 'How Big? How Heavy?')
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
