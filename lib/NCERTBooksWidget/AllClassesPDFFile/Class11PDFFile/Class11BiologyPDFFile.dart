import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class11BiologyPDFFile extends StatefulWidget {
  const Class11BiologyPDFFile({Key key}) : super(key: key);

  @override
  _Class11BiologyPDFFileState createState() => _Class11BiologyPDFFileState();
}

class _Class11BiologyPDFFileState extends State<Class11BiologyPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biology"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Lesson-1', ' name'),
          container(width, context, 'Lesson-2', ' name'),
          container(width, context, 'Lesson-3', ' name'),
          container(width, context, 'Lesson-4', ' name'),
          container(width, context, 'Lesson-5', ' name'),
          container(width, context, 'Lesson-6', ' name')
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
