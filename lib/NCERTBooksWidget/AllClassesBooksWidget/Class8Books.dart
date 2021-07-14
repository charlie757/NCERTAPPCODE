import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8SanskritPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class8PDFFile/Class8SocialPDFFile.dart';

class Class8Books extends StatefulWidget {
  const Class8Books({Key key}) : super(key: key);

  @override
  _Class8BooksState createState() => _Class8BooksState();
}

class _Class8BooksState extends State<Class8Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VIII"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math3.jpg',
              Class8MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science2.jpg',
              Class8SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class8EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi1.jpg',
              Class8HindiPDFFile()),
          inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
              Class8SanskritPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/social1.jpg',
              Class8SocialPDFFile()),
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
