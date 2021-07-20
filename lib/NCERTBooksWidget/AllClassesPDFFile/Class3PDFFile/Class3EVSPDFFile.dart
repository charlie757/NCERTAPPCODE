import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter16.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter17.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter18.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter19.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter20.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter21.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter22.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter23.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/Chapter24.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/EVS/ChapterIntro.dart';

class Class3EVSPDFFile extends StatefulWidget {
  const Class3EVSPDFFile({Key key}) : super(key: key);

  @override
  _Class3EVSPDFFileState createState() => _Class3EVSPDFFileState();
}

class _Class3EVSPDFFileState extends State<Class3EVSPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("EVS"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(
              width, context, 'Chapter-1', 'Poonam’s Day out', Chapter1()),
          container(width, context, 'Chapter-2', 'The Plant Fairy', Chapter2()),
          container(width, context, 'Chapter-3', 'Water O’ Water!', Chapter3()),
          container(
              width, context, 'Chapter-4', 'Our First School', Chapter4()),
          container(width, context, 'Chapter-5', 'Chhotu’s House', Chapter5()),
          container(width, context, 'Chapter-6', 'Foods We Eat', Chapter6()),
          container(width, context, 'Chapter-7', 'Saying without Speaking',
              Chapter7()),
          container(width, context, 'Chapter-8', 'Flying High', Chapter8()),
          container(width, context, 'Chapter-9', 'It’s Raining', Chapter9()),
          container(
              width, context, 'Chapter-10', 'What is Cooking', Chapter10()),
          container(
              width, context, 'Chapter-11', 'From Here to There', Chapter11()),
          container(width, context, 'Chapter-12', 'Work We Do', Chapter12()),
          container(width, context, 'Chapter-13', 'Sharing Our Feelings',
              Chapter13()),
          container(
              width, context, 'Chapter-14', 'The Story of Food', Chapter14()),
          container(width, context, 'Chapter-15', 'Making Pots', Chapter15()),
          container(width, context, 'Chapter-16', 'Games We Play', Chapter16()),
          container(
              width, context, 'Chapter-17', 'Here comes a Letter', Chapter17()),
          container(
              width, context, 'Chapter-18', 'A House Like This', Chapter18()),
          container(width, context, 'Chapter-19', 'Our Friends – Animals',
              Chapter19()),
          container(width, context, 'Chapter-20', 'Drop by Drop', Chapter20()),
          container(width, context, 'Chapter-21', 'Families can be Different',
              Chapter21()),
          container(width, context, 'Chapter-22', 'Left-Right', Chapter22()),
          container(
              width, context, 'Chapter-23', 'A Beautiful Cloth', Chapter23()),
          container(width, context, 'Chapter-24', 'Web of Life', Chapter24()),
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
