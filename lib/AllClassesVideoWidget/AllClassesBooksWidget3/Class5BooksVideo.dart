import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class5PDFFile/Class5EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class5PDFFile/Class5HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class5PDFFile/Class5MathPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class5PDFFile/Class5SciencePDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class5PDFFile/Class5SocialPDFFile.dart';

class Class5BooksVideo extends StatefulWidget {
  const Class5BooksVideo({Key key}) : super(key: key);

  @override
  _Class5BooksVideoState createState() => _Class5BooksVideoState();
}

class _Class5BooksVideoState extends State<Class5BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class V Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math.png',
              Class5MathPDFFile()),
          inkWell(width, context, 'Science', 'assets/images/science3.jpg',
              Class5SciencePDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class5EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class5HindiPDFFile()),
          inkWell(width, context, 'Social Science', 'assets/images/world.jpg',
              Class5SocialPDFFile()),
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
