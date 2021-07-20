import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/Chapter16.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Science/ChapterAns1.dart';

class Class10SciencePDFFile extends StatefulWidget {
  const Class10SciencePDFFile({Key key}) : super(key: key);

  @override
  _Class10SciencePDFFileState createState() => _Class10SciencePDFFileState();
}

class _Class10SciencePDFFileState extends State<Class10SciencePDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Science"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1',
              'Chemical Reactions and Equations', Chapter1()),
          container(
              width, context, 'Chapter-2', 'Acids Bases and Salt', Chapter2()),
          container(
              width, context, 'Chapter-3', 'Metals and Non-Metals', Chapter3()),
          container(width, context, 'Chapter-4', 'Carbon and its Compounds',
              Chapter4()),
          container(width, context, 'Chapter-5',
              'Periodic Classification of Elements', Chapter5()),
          container(width, context, 'Chapter-6', 'Life Process', Chapter6()),
          container(width, context, 'Chapter-7', 'Control and Coordination',
              Chapter7()),
          container(width, context, 'Chapter-8', 'How do Organisms Reproduce?',
              Chapter8()),
          container(width, context, 'Chapter-9', 'Heredity and Evolution',
              Chapter9()),
          container(width, context, 'Chapter-10',
              'Light-Reflection and Refraction', Chapter10()),
          container(width, context, 'Chapter-11',
              'The Human Eye and The Colourful World', Chapter11()),
          container(width, context, 'Chapter-12', 'Electricity', Chapter12()),
          container(width, context, 'Chapter-13',
              'Magnetic Effects of Electric Current', Chapter13()),
          container(
              width, context, 'Chapter-14', 'Sources of Energy', Chapter14()),
          container(
              width, context, 'Chapter-15', 'Our Environment', Chapter15()),
          container(width, context, 'Chapter-16',
              'Sustainable Management of Natural Resources', Chapter16()),
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
