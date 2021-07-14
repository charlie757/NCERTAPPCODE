import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class11PDFFile/Class11BusinessPDFFile.dart';

class Class11BusinessStudiesPart extends StatefulWidget {
  const Class11BusinessStudiesPart({Key key}) : super(key: key);

  @override
  _Class11BusinessStudiesPartState createState() =>
      _Class11BusinessStudiesPartState();
}

class _Class11BusinessStudiesPartState
    extends State<Class11BusinessStudiesPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Business Studies")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Business Studies',
              'assets/images/business.jpg', Class11BusinessPDFFile())
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.red,
          shape: Border.all(style: BorderStyle.solid),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                img,
                height: 100,
                width: 100,
              ),
              Text(name)
            ],
          )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
