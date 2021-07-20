import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class1PDFFile/Class1DrawingPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class1PDFFile/Class1EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class1PDFFile/Class1HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class1PDFFile/Class1MathPDFFile.dart';

class Class1Books extends StatefulWidget {
  const Class1Books({Key key}) : super(key: key);

  @override
  _Class1BooksState createState() => _Class1BooksState();
}

class _Class1BooksState extends State<Class1Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class I"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math.png',
              Class1MathPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class1HindiPDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class1EnglishPDFFile()),
          // inkWell(width, context, 'Drawing', 'assets/images/draw2.jpg',
          //     Class1DrawingPDFFile()),
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
