import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class4MathPDFFile extends StatefulWidget {
  const Class4MathPDFFile({Key key}) : super(key: key);

  @override
  _Class4MathPDFFileState createState() => _Class4MathPDFFileState();
}

class _Class4MathPDFFileState extends State<Class4MathPDFFile> {
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
          container(width, context, 'Chapter-1', 'Building with Bricks'),
          container(width, context, 'Chapter-2', 'Long and Short'),
          container(width, context, 'Chapter-3', 'A Trip to Bhopal'),
          container(width, context, 'Chapter-4', 'Tick-Tick-Tick'),
          container(width, context, 'Chapter-5', 'The Way The World Looks'),
          container(width, context, 'Chapter-6', 'The Junk Seller'),
          container(width, context, 'Chapter-7', 'Jugs and Mugs'),
          container(width, context, 'Chapter-8', 'Carts and Wheels'),
          container(width, context, 'Chapter-9', 'Halves and Quarters'),
          container(width, context, 'Chapter-10', 'Play with Patterns'),
          container(width, context, 'Chapter-11', 'Tables and Shares'),
          container(width, context, 'Chapter-12', 'How Heavy? How Light?'),
          container(width, context, 'Chapter-13', 'Fields and Fences'),
          container(width, context, 'Chapter-14', 'Smart Charts')
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
