import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class PhysicsPart1PDFFile extends StatefulWidget {
  const PhysicsPart1PDFFile({Key key}) : super(key: key);

  @override
  _PhysicsPart1PDFFileState createState() => _PhysicsPart1PDFFileState();
}

class _PhysicsPart1PDFFileState extends State<PhysicsPart1PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Physics-I"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'Electric Charges and Fields'),
          container(width, context, 'Lesson-2',
              'Electrostic Potential and Capacitance'),
          container(width, context, 'Lesson-3', 'Current Electricity'),
          container(width, context, 'Lesson-4', 'Moving Charges and Magnetism'),
          container(width, context, 'Lesson-5', 'Electromagnetic'),
          container(width, context, 'Lesson-6', 'Electromagnetic Induction'),
          container(width, context, 'Lesson-7', 'Alternating Current')
        ],
      ),
    );
  }

  Expanded container(width, BuildContext context, String number, String name) {
    return Expanded(
        child: Card(
            shadowColor: Colors.cyan,
            elevation: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 5,
                ),
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    online(width, context, HomePage()),
                    SizedBox(
                      width: 10,
                    ),
                    offline(width, context, HomePage()),
                    SizedBox(
                      height: 5,
                    ),
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
