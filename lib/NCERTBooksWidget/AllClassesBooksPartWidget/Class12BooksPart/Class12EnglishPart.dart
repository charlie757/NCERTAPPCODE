import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12EnglishPDFFile/EnglishPDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12EnglishPDFFile/EnglishPDFFile1.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12EnglishPDFFile/EnglishPDFFile2.dart';

class Class12EnglishPart extends StatefulWidget {
  const Class12EnglishPart({Key key}) : super(key: key);

  @override
  _Class12EnglishPartState createState() => _Class12EnglishPartState();
}

class _Class12EnglishPartState extends State<Class12EnglishPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("English")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Kaliedoscope', 'assets/images/kalie.jpg',
              EnglishPDFFile()),
          inkWell(width, context, 'Flamingo', 'assets/images/flamingo.jpg',
              EnglishPDFFile1()),
          inkWell(width, context, 'Vistas', 'assets/images/Vistas.jpg',
              EnglishPDFFile2()),
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.pink,
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
