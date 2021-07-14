import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7EnglishPDFFile extends StatefulWidget {
  const Class7EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class7EnglishPDFFileState createState() => _Class7EnglishPDFFileState();
}

class _Class7EnglishPDFFileState extends State<Class7EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Lession-1', 'name'),
          container(width, context, 'Lession-2', 'name'),
          container(width, context, 'Lession-3', 'name'),
          container(width, context, 'Lession-4', 'name'),
          container(width, context, 'Lession-5', 'name'),
          container(width, context, 'Lession-6', 'name')
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
