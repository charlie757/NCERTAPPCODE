import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4DrawingPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class4PDFFile/Class4SocialPDFFile.dart';

class Class4BooksVideo extends StatefulWidget {
  const Class4BooksVideo({Key key}) : super(key: key);

  @override
  _Class4BooksVideoState createState() => _Class4BooksVideoState();
}

class _Class4BooksVideoState extends State<Class4BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class IV Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math.png',
              Class4MathPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class4HindiPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science.jpg',
              Class4SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class4EnglishPDFFile()),
          inkWell(width, context, 'Drawing', 'assets/images/draw.jpg',
              Class4DrawingPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/world.jpg',
              Class4SocialPDFFile()),
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
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      // },
    );
  }
}
