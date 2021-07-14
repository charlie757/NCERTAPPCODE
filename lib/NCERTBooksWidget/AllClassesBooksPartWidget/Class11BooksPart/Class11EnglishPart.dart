import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class11PDFFile/Class11EnglishPDFFile.dart';

class Class11EnglishPart extends StatefulWidget {
  const Class11EnglishPart({Key key}) : super(key: key);

  @override
  _Class11EnglishPartState createState() => _Class11EnglishPartState();
}

class _Class11EnglishPartState extends State<Class11EnglishPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("English")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class11EnglishPDFFile()),
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.pink,
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
