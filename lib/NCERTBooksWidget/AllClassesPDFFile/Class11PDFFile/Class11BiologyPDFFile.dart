import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter16.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter17.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter18.dart';

import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter19.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter20.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter21.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Chapter22.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Biology/Intro.dart';

class Class11BiologyPDFFile extends StatefulWidget {
  const Class11BiologyPDFFile({Key key}) : super(key: key);

  @override
  _Class11BiologyPDFFileState createState() => _Class11BiologyPDFFileState();
}

class _Class11BiologyPDFFileState extends State<Class11BiologyPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biology"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', 'name', ChapterIntro()),
          container(
              width, context, 'Chapter-1', 'The Living World', Chapter1()),
          container(width, context, 'Chapter-2', 'Biological Classification',
              Chapter2()),
          container(width, context, 'Chapter-3', 'Plant Kingdom', Chapter3()),
          container(width, context, 'Chapter-4', 'Plant Kingdom', Chapter4()),
          container(width, context, 'Chapter-5',
              'Morphology of Flowering Plants', Chapter5()),
          container(width, context, 'Chapter-6', 'Anatomy of Flowering Plants',
              Chapter6()),
          container(width, context, 'Chapter-7',
              'Structural Organisation in Animals', Chapter7()),
          container(
              width, context, 'Chapter-8', 'Cell The Unit of Life', Chapter8()),
          container(width, context, 'Chapter-9', 'Biomolecules', Chapter9()),
          container(width, context, 'Chapter-10',
              'Cell Cycle and Cell Division', Chapter10()),
          container(
              width, context, 'Chapter-11', 'Transport in Plants', Chapter11()),
          container(
              width, context, 'Chapter-12', 'Mineral Nutrition', Chapter12()),
          container(width, context, 'Chapter-13',
              'Photosynthesis in Higher Plants', Chapter13()),
          container(width, context, 'Chapter-14', 'Respiration in Plants',
              Chapter14()),
          container(width, context, 'Chapter-15',
              'Plant Growth and Development', Chapter15()),
          container(width, context, 'Chapter-16', 'Digestion and Absorption',
              Chapter16()),
          container(width, context, 'Chapter-17',
              'Breathing and Exchange of Gases', Chapter17()),
          container(width, context, 'Chapter-18', 'Body Fluids and Circulation',
              Chapter18()),
          container(width, context, 'Chapter-19',
              'Excretory Products and their Elimination', Chapter19()),
          container(width, context, 'Chapter-20', 'Locomotion and Movement',
              Chapter20()),
          container(width, context, 'Chapter-21',
              'Neural Control and Coordination', Chapter21()),
          container(width, context, 'Chapter-22',
              'Chemical Coordination and integration', Chapter22()),
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
