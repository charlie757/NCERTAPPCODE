import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class9EnglishPDFFile extends StatefulWidget {
  const Class9EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class9EnglishPDFFileState createState() => _Class9EnglishPDFFileState();
}

class _Class9EnglishPDFFileState extends State<Class9EnglishPDFFile> {
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
          container(width, context, 'Chapter-1', 'The Lost Child'),
          container(width, context, 'Chapter-2', 'The Adventures of Toto'),
          container(width, context, 'Chapter-3', 'Iswaran the Storyteller'),
          container(width, context, 'Chapter-4', 'In the Kingdom of Fools'),
          container(width, context, 'Chapter-5', 'The Happy Prince'),
          container(
              width, context, 'Chapter-6', 'Weathering the Storm in Ersama'),
          container(width, context, 'Chapter-7', 'The Last Leaf'),
          container(width, context, 'Chapter-8', 'A House is Not a Home'),
          container(width, context, 'Chapter-9', 'The Accidental Tourist'),
          container(width, context, 'Chapter-10', 'The Beggar'),
        ],
      ),
    );
  }

  InkWell container(width, BuildContext context, String number, String name) {
    return InkWell(
        child: Container(
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
