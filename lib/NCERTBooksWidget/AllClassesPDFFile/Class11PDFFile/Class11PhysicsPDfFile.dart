import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/ChapterAns1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Physics/ChapterAns2.dart';

class Class11PhysicsPart1PDFFile extends StatefulWidget {
  const Class11PhysicsPart1PDFFile({Key key}) : super(key: key);

  @override
  _Class11PhysicsPart1PDFFileState createState() =>
      _Class11PhysicsPart1PDFFileState();
}

class _Class11PhysicsPart1PDFFileState
    extends State<Class11PhysicsPart1PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Physics"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', 'Physical World', Chapter1()),
          container(width, context, 'Chapter-2', 'Units And Measurements',
              Chapter2()),
          container(width, context, 'Chapter-3', 'Motion In A Straight Line',
              Chapter3()),
          container(
              width, context, 'Chapter-4', 'Motion In A Plane', Chapter4()),
          container(width, context, 'Chapter-5', 'Laws Of Motion', Chapter5()),
          container(width, context, 'Chapter-6', 'Work, Energy, And Power',
              Chapter6()),
          container(width, context, 'Chapter-7',
              'System Of Particles And Rotational Motion', Chapter7()),
          container(width, context, 'Chapter-8', 'Gravitation', Chapter8()),
          container(width, context, 'Answer-1', '', ChapterAns1()),
          container(width, context, 'Answer-2', '', ChapterAns2())
          // container(
          //     width, context, 'Chapter-9', 'Mechanical Properties od Solids'),
          // container(
          //     width, context, 'Chapter-10', 'Mechanical Properties od Fluids'),
          // container(
          //     width, context, 'Chapter-11', 'Thermal properties of Matter'),
          // container(width, context, 'Chapter-12', 'Thermodynamics'),
          // container(width, context, 'Chapter-13', 'Kinetic Theory'),
          // container(width, context, 'Chapter-14', 'Oscillations'),
          // container(width, context, 'Chapter-15', 'Waves'),
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
            height: 70,
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
