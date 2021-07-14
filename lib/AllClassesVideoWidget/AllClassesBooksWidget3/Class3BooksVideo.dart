import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3DrawingPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class3PDFFile/Class3SocialPDFFile.dart';

class Class3BooksVideo extends StatefulWidget {
  const Class3BooksVideo({Key key}) : super(key: key);

  @override
  _Class3BooksVideoState createState() => _Class3BooksVideoState();
}

class _Class3BooksVideoState extends State<Class3BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class III Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math.png',
              Class3MathPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class3HindiPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science.jpg',
              Class3SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class3EnglishPDFFile()),
          inkWell(width, context, 'Drawing', 'assets/images/draw.jpg',
              Class3DrawingPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/world.jpg',
              Class3SocialPDFFile()),
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
