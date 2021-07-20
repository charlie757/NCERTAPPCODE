import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Math/ChapterIntro.dart';

class Class3MathPDFFile extends StatefulWidget {
  const Class3MathPDFFile({Key key}) : super(key: key);

  @override
  _Class3MathPDFFileState createState() => _Class3MathPDFFileState();
}

class _Class3MathPDFFileState extends State<Class3MathPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Math"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(
              width, context, 'Chapter-1', 'Where to Look From', Chapter1()),
          container(
              width, context, 'Chapter-2', 'Fun with Numbers', Chapter2()),
          container(width, context, 'Chapter-3', 'Give and Take', Chapter3()),
          container(width, context, 'Chapter-4', 'Long and Short', Chapter4()),
          container(
              width, context, 'Chapter-5', 'Shapes and Designs', Chapter5()),
          container(width, context, 'Chapter-6', 'Fun with Give and Take',
              Chapter6()),
          container(width, context, 'Chapter-7', 'Time Goes On…….', Chapter7()),
          container(width, context, 'Chapter-8', 'Who is Heavier?', Chapter8()),
          container(width, context, 'Chapter-9', 'How Many Times?', Chapter9()),
          container(
              width, context, 'Chapter-10', 'Play with Patterns', Chapter10()),
          container(width, context, 'Chapter-11', 'Jugs and Mugs', Chapter11()),
          container(width, context, 'Chapter-12', 'Can We Share?', Chapter12()),
          container(width, context, 'Chapter-13', 'Smart Charts!', Chapter13()),
          container(
              width, context, 'Chapter-14', 'Rupees and Paise', Chapter14())
        ],
      ),
    );
  }

  InkWell container(
      width, BuildContext context, String number, String name, route) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
            height: 80,
            child: Card(
                shadowColor: Colors.cyan,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          number,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                          name,
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                  ],
                ))));
  }
}
