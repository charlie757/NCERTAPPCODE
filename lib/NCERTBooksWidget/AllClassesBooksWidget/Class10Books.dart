import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10SanskritPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class10PDFFile/Class10SocialPDFFile.dart';

class Class10Books extends StatefulWidget {
  const Class10Books({Key key}) : super(key: key);

  @override
  _Class10BooksState createState() => _Class10BooksState();
}

class _Class10BooksState extends State<Class10Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class X"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math3.jpg',
              Class10MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science1.jpg',
              Class10SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english1.jpg',
              Class10EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi2.jpg',
              Class10HindiPDFFile()),
          inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
              Class10SanskritPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/social2.jpg',
              Class10SocialPDFFile()),
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
