import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Math/ChapterIntro.dart';

class Class2MathPDFFile extends StatefulWidget {
  const Class2MathPDFFile({Key key}) : super(key: key);

  @override
  _Class2MathPDFFileState createState() => _Class2MathPDFFileState();
}

class _Class2MathPDFFileState extends State<Class2MathPDFFile> {
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
          container(width, context, 'Chapter-1', 'What is Long, What is Round?',
              Chapter1()),
          container(
              width, context, 'Chapter-2', 'Counting in Groups', Chapter2()),
          container(width, context, 'Chapter-3', 'How Much Can You Carry?',
              Chapter3()),
          container(
              width, context, 'Chapter-4', 'Counting in Tens', Chapter4()),
          container(width, context, 'Chapter-5', 'Patterns', Chapter5()),
          container(width, context, 'Chapter-6', 'Footprints', Chapter6()),
          container(width, context, 'Chapter-7', 'Jugs and Mugs', Chapter7()),
          container(width, context, 'Chapter-8', 'Tens and Ones', Chapter8()),
          container(width, context, 'Chapter-9', 'My Funday', Chapter9()),
          container(
              width, context, 'Chapter-10', 'Add our Points', Chapter10()),
          container(
              width, context, 'Chapter-11', 'Lines and Lines', Chapter11()),
          container(width, context, 'Chapter-12', 'Give and Take', Chapter12()),
          container(
              width, context, 'Chapter-13', 'The Longest Step', Chapter13()),
          container(width, context, 'Chapter-14', 'Birds Come, Birds Go',
              Chapter14()),
          container(
              width, context, 'Chapter-15', 'How Many Ponytails', Chapter15())
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
