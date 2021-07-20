import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/English/ChapterIntro.dart';

class Class1EnglishPDFFile extends StatefulWidget {
  const Class1EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class1EnglishPDFFileState createState() => _Class1EnglishPDFFileState();
}

class _Class1EnglishPDFFileState extends State<Class1EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1',
              'A Happy Child and Three Little Pigs', Chapter1()),
          container(
              width,
              context,
              'Chapter-2',
              'After a Bath and The Bubble, the Straw, and the Shoe',
              Chapter2()),
          container(width, context, 'Chapter-3',
              'One Little Kitten and Lalu and Peelu', Chapter3()),
          container(
              width,
              context,
              'Chapter-4',
              'Once I Saw a Little Bird and Mittu and the Yellow Mango',
              Chapter4()),
          container(width, context, 'Chapter-5', 'Merry-Go-Round and Circle',
              Chapter5()),
          container(width, context, 'Chapter-6',
              'If I Were an Apple and Our Tree', Chapter6()),
          container(
              width, context, 'Chapter-7', 'A Kite and Sundari', Chapter7()),
          container(width, context, 'Chapter-8',
              'A Little Turtle and The Tiger and the Mosquito', Chapter8()),
          container(width, context, 'Chapter-9', 'Clouds and Anandi’s Rainbow',
              Chapter9()),
          container(width, context, 'Chapter-10',
              'Flying-Man and The Tailor and his Friend', Chapter10()),
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
