import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/ChapterAns1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/ChapterAns2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Math/ChapterAns3.dart';

class Class10MathPDFFile extends StatefulWidget {
  const Class10MathPDFFile({Key key}) : super(key: key);

  @override
  _Class10MathPDFFileState createState() => _Class10MathPDFFileState();
}

class _Class10MathPDFFileState extends State<Class10MathPDFFile> {
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
          container(width, context, 'Chapter-1', 'Real Numbers', Chapter1()),
          container(width, context, 'Chapter-2', 'Polynomials', Chapter2()),
          container(width, context, 'Chapter-3',
              'Pair of Linear Equations in Two Variables', Chapter3()),
          container(
              width, context, 'Chapter-4', 'Quadratic Equations', Chapter4()),
          container(width, context, 'Chapter-5', 'Arithmetic Progressions',
              Chapter5()),
          container(width, context, 'Chapter-6', 'Triangles', Chapter6()),
          container(
              width, context, 'Chapter-7', 'Coordinate Geometry', Chapter7()),
          container(width, context, 'Chapter-8', 'Introduction to Trigonometry',
              Chapter8()),
          container(width, context, 'Chapter-9',
              'Some Applications of Trigonometry', Chapter9()),
          container(width, context, 'Chapter-10', 'Circles', Chapter10()),
          container(width, context, 'Chapter-11', 'Constructions', Chapter11()),
          container(width, context, 'Chapter-12', 'Areas Related to Circle',
              Chapter12()),
          container(width, context, 'Chapter-13', 'Surface Areas and Volumes',
              Chapter13()),
          container(width, context, 'Chapter-14', 'Statistics', Chapter14()),
          container(width, context, 'Chapter-15', 'Probability', Chapter15()),
          container(width, context, 'Answer-1', '', ChapterAns1()),
          container(width, context, 'Answer-2', '', ChapterAns2()),
          container(width, context, 'Answer-3', '', ChapterAns3())
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
            height: 90,
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
