import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/English/Snapshot/ChapterIntro.dart';

class Class11EnglishPDFFile extends StatefulWidget {
  const Class11EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class11EnglishPDFFileState createState() => _Class11EnglishPDFFileState();
}

class _Class11EnglishPDFFileState extends State<Class11EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', 'name', ChapterIntro()),
          container(width, context, 'Lesson-1',
              'The Summer of the beautiful White Horse', Chapter1()),
          container(width, context, 'Lesson-2', 'The Address', Chapter2()),
          container(width, context, 'Lesson-3', "Ranga's Marriage", Chapter3()),
          container(width, context, 'Lesson-4', 'Albert Einstein at School',
              Chapter4()),
          container(width, context, 'Lesson-5', "Mother's Day", Chapter5()),
          container(width, context, 'Lesson-6', 'The Ghat of the Only World',
              Chapter6()),
          container(width, context, 'Lesson-7', 'Birth', Chapter7()),
          container(
              width, context, 'Lesson-8', 'The Table of Melon City', Chapter8())
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
