import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/English/ChapterIntro.dart';

class Class10EnglishPDFFile extends StatefulWidget {
  const Class10EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class10EnglishPDFFileState createState() => _Class10EnglishPDFFileState();
}

class _Class10EnglishPDFFileState extends State<Class10EnglishPDFFile> {
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
          container(width, context, 'Chapter-1', 'A Letter to God', Chapter1()),
          container(width, context, 'Chapter-2',
              'Nelson Mandela: Long Walk to Freedom', Chapter2()),
          container(width, context, 'Chapter-3', 'Two Stories about Flying',
              Chapter3()),
          container(width, context, 'Chapter-4', 'From the Diary of Anne Frank',
              Chapter4()),
          container(
              width, context, 'Chapter-5', 'The Hundred Dresses–I', Chapter5()),
          container(width, context, 'Chapter-6', 'The Hundred Dresses–II',
              Chapter6()),
          container(
              width, context, 'Chapter-7', 'Glimpses of India', Chapter7()),
          container(
              width, context, 'Chapter-8', 'Mijbil the Otter', Chapter8()),
          container(
              width, context, 'Chapter-9', 'Madam Rides the Bus', Chapter9()),
          container(width, context, 'Chapter-10', 'The Sermon at Benares',
              Chapter10()),
          container(width, context, 'Chapter-1', 'The Proposal', Chapter11()),
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
