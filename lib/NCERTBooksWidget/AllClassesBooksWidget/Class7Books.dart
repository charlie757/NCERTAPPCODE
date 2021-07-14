import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7SanskritPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class7PDFFile/Class7SocialPDFFile.dart';

class Class7Books extends StatefulWidget {
  const Class7Books({Key key}) : super(key: key);

  @override
  _Class7BooksState createState() => _Class7BooksState();
}

class _Class7BooksState extends State<Class7Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VII"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math2.jpg',
              Class7MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science3.jpg',
              Class7SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english1.jpg',
              Class7EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class7HindiPDFFile()),
          inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
              Class7SanskritPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/social1.jpg',
              Class7SocialPDFFile()),
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
