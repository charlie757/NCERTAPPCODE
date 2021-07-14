import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class HindiPDFFile extends StatefulWidget {
  const HindiPDFFile({Key key}) : super(key: key);

  @override
  _HindiPDFFileState createState() => _HindiPDFFileState();
}

class _HindiPDFFileState extends State<HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'name'),
          container(width, context, 'Lesson-2', 'name'),
          container(width, context, 'Lesson-3', 'name'),
          container(width, context, 'Lesson-4', 'name'),
          container(width, context, 'Lesson-5', 'name'),
          container(width, context, 'Lesson-6', 'name')
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
                      style: TextStyle(fontSize: 16),
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
