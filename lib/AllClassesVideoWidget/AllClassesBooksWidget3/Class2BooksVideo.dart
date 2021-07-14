import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class2PDFFile/Class2DrawingPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class2PDFFile/Class2EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class2PDFFile/Class2HindiPDFFIle.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class2PDFFile/Class2MathPDFFile.dart';

class Class2BooksVideo extends StatefulWidget {
  const Class2BooksVideo({Key key}) : super(key: key);

  @override
  _Class2BooksVideoState createState() => _Class2BooksVideoState();
}

class _Class2BooksVideoState extends State<Class2BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class II Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math.png',
              Class2MathPDFFile()),
          inkWell(width, context, 'English', 'assets/images/english.png',
              Class2EnglishPDFFile()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class2HindiPDFFile()),
          inkWell(width, context, 'Drawing', 'assets/images/draw.jpg',
              Class2DrawingPDFFile()),
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
