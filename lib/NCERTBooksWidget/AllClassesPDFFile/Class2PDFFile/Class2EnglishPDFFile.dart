import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/English/ChapterIntro.dart';

class Class2EnglishPDFFile extends StatefulWidget {
  const Class2EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class2EnglishPDFFileState createState() => _Class2EnglishPDFFileState();
}

class _Class2EnglishPDFFileState extends State<Class2EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1',
              'First Day at School and Haldi’s Adventure', Chapter1()),
          container(width, context, 'Chapter-2', 'I am Lucky! And I Want',
              Chapter2()),
          container(width, context, 'Chapter-3',
              'A Smile and The Wind and the Sun', Chapter3()),
          container(width, context, 'Chapter-4', 'Rain and Storm in the Garden',
              Chapter4()),
          container(width, context, 'Chapter-5', 'Zoo Manners and Funny Bunny',
              Chapter5()),
          container(width, context, 'Chapter-6',
              'Mr. Nobody and Curlylocks and the Three Bears', Chapter6()),
          container(width, context, 'Chapter-7',
              'On My Blackboard I can Draw and Make it Shorter', Chapter7()),
          container(width, context, 'Chapter-8',
              'I am the Music Man and The Mumbai Musicians', Chapter8()),
          container(
              width,
              context,
              'Chapter-9',
              'Granny Granny Please Comb my Hair and The Magic Porridge Pot',
              Chapter9()),
          container(width, context, 'Chapter-10',
              'Strange Talk and The Grasshopper and the Ant', Chapter10()),
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
