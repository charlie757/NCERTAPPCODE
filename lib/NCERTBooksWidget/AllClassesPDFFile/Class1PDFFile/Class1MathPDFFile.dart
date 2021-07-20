import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Math/ChapterIntro.dart';

class Class1MathPDFFile extends StatefulWidget {
  const Class1MathPDFFile({Key key}) : super(key: key);

  @override
  _Class1MathPDFFileState createState() => _Class1MathPDFFileState();
}

class _Class1MathPDFFileState extends State<Class1MathPDFFile> {
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
              width, context, 'Chapter-1', 'Shapes and Space', Chapter1()),
          container(width, context, 'Chapter-2', 'Numbers from One to Nine',
              Chapter2()),
          container(width, context, 'Chapter-3', 'Addition', Chapter3()),
          container(width, context, 'Chapter-4', 'Subtraction', Chapter4()),
          container(width, context, 'Chapter-5', 'Numbers from Ten to Twenty',
              Chapter5()),
          container(width, context, 'Chapter-6', 'Time', Chapter6()),
          container(width, context, 'Chapter-7', 'Measurement', Chapter7()),
          container(width, context, 'Chapter-8',
              'Numbers from Twenty-one to Fifty', Chapter8()),
          container(width, context, 'Chapter-9', 'Data Handling', Chapter9()),
          container(width, context, 'Chapter-10', 'Patterns', Chapter10()),
          container(width, context, 'Chapter-11', 'Numbers', Chapter11()),
          container(width, context, 'Chapter-12', 'Money', Chapter12()),
          container(width, context, 'Chapter-13', 'How Many', Chapter13())
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
