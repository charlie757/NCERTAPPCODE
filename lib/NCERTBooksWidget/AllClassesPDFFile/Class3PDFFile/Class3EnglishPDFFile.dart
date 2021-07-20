import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/English/ChapterIntro.dart';

class Class3EnglishPDFFile extends StatefulWidget {
  const Class3EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class3EnglishPDFFileState createState() => _Class3EnglishPDFFileState();
}

class _Class3EnglishPDFFileState extends State<Class3EnglishPDFFile> {
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
              'Good Morning and The Magic Garden', Chapter1()),
          container(width, context, 'Chapter-2',
              'Bird Talk and Nina and the Baby Sparrows', Chapter2()),
          container(width, context, 'Chapter-3',
              'Little by Little and The Enormous Turnip', Chapter3()),
          container(width, context, 'Chapter-4',
              'Sea Song and A Little Fish Story', Chapter4()),
          container(width, context, 'Chapter-5',
              'The Balloon Man and The Yellow Butterfly', Chapter5()),
          container(width, context, 'Chapter-6',
              'Trains and The Story of the Road', Chapter6()),
          container(width, context, 'Chapter-7',
              'Puppy and I and Little Tiger, Big Tiger', Chapter7()),
          container(width, context, 'Chapter-8',
              'What’s in the Mailbox? and My Silly Sister', Chapter8()),
          container(width, context, 'Chapter-9',
              'Don’t Tell and He is My Brother', Chapter9()),
          container(width, context, 'Chapter-10',
              'How Creatures Move and The Ship of the Desert', Chapter10()),
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
