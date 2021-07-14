import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6SanskritPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class6PDFFile/Class6SocialPDFFile.dart';

class Class6BooksVideo extends StatefulWidget {
  const Class6BooksVideo({Key key}) : super(key: key);

  @override
  _Class6BooksVideoState createState() => _Class6BooksVideoState();
}

class _Class6BooksVideoState extends State<Class6BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VI Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math2.jpg',
              Class6MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science3.jpg',
              Class6SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class6EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class6HindiPDFFile()),
          inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
              Class6SanskritPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/social1.jpg',
              Class6SocialPDFFile()),
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
