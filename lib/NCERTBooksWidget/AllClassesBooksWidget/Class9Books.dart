import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9SanskritPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class9PDFFile/Class9SocialPDFFile.dart';

class Class9Books extends StatefulWidget {
  const Class9Books({Key key}) : super(key: key);

  @override
  _Class9BooksState createState() => _Class9BooksState();
}

class _Class9BooksState extends State<Class9Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class IX"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math3.jpg',
              Class9MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science3.jpg',
              Class9SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english1.jpg',
              Class9EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi1.jpg',
              Class9HindiPDFFile()),
          inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
              Class9SanskritPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/social1.jpg',
              Class9SocialPDFFile()),
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
