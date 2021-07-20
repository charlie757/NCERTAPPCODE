import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/Chapter16.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/ChapterAns1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/ChapterAns2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Math/ChapterAns3.dart';

class Class11MathPart1PDFFile extends StatefulWidget {
  const Class11MathPart1PDFFile({Key key}) : super(key: key);

  @override
  _Class11MathPart1PDFFileState createState() =>
      _Class11MathPart1PDFFileState();
}

class _Class11MathPart1PDFFileState extends State<Class11MathPart1PDFFile> {
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
          container(width, context, 'Chapter-1', 'Sets', Chapter1()),
          container(
              width, context, 'Chapter-2', 'Relations & Functions', Chapter2()),
          container(width, context, 'Chapter-3', 'Trigonometric Functions',
              Chapter3()),
          container(width, context, 'Chapter-4',
              'Principle of Mathematical Induction', Chapter4()),
          container(width, context, 'Chapter-5',
              'Complex Numbers and Quadratic Equations', Chapter5()),
          container(
              width, context, 'Chapter-6', 'Linear Inequalities', Chapter6()),
          container(width, context, 'Chapter-7',
              'Permutations and Combinations', Chapter7()),
          container(
              width, context, 'Chapter-8', 'Binomial Theorem', Chapter8()),
          container(
              width, context, 'Chapter-9', 'Sequence and Series', Chapter9()),
          container(
              width, context, 'Chapter-10', 'Straight Lines', Chapter10()),
          container(
              width, context, 'Chapter-11', 'Conic Sections', Chapter11()),
          container(width, context, 'Chapter-12',
              'Introduction to Three–dimensional Geometry', Chapter12()),
          container(width, context, 'Chapter-13', 'Limits and Derivatives',
              Chapter13()),
          container(width, context, 'Chapter-14', 'Mathematical Reasoning',
              Chapter14()),
          container(width, context, 'Chapter-15', 'Statistics', Chapter15()),
          container(width, context, 'Chapter-16', 'Probability', Chapter16()),
          container(width, context, 'Answer-1', 'Probability', ChapterAns1()),
          container(width, context, 'Answer-2', 'Probability', ChapterAns2()),
          container(width, context, 'Answer-3', 'Probability', ChapterAns3()),
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
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     online(width, context, HomePage()),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     offline(width, context, HomePage())
                    //   ],
                    // )
                  ],
                ))));
  }

  // Expanded offline(double width, BuildContext context, route) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.purple,
  //       child: Text("Offline"),
  //     ),
  //   ));
  // }

  // Expanded online(double width, BuildContext context, route1) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => route1));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.orange,
  //       child: Text("Online"),
  //     ),
  //   ));
  // }
}
