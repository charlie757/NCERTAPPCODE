import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class ChemistryPart1PDFFile extends StatefulWidget {
  const ChemistryPart1PDFFile({Key key}) : super(key: key);

  @override
  _ChemistryPart1PDFFileState createState() => _ChemistryPart1PDFFileState();
}

class _ChemistryPart1PDFFileState extends State<ChemistryPart1PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Chemistry-I"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'Solid State'),
          container(width, context, 'Lesson-2', 'Solutions'),
          container(width, context, 'Lesson-3', 'Electrochemistry'),
          container(width, context, 'Lesson-4', 'Chemical Kinetics'),
          container(width, context, 'Lesson-5', 'Surface Chemistry'),
          container(width, context, 'Lesson-6',
              'General Principles and Processes of Lsolation of Elements'),
          container(width, context, 'Lesson-7', 'The p-Block Elements'),
          container(width, context, 'Lesson-8', 'The d & f Block Elements'),
        ],
      ),
    );
  }

  Expanded container(width, BuildContext context, String number, String name) {
    return Expanded(
        child: Card(
            shadowColor: Colors.cyan,
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
                  height: 10,
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
