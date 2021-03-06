import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class2ChapterWisePDF/Hindi/ChapterIntro.dart';

class Class2HindiPDFFile extends StatefulWidget {
  const Class2HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class2HindiPDFFileState createState() => _Class2HindiPDFFileState();
}

class _Class2HindiPDFFileState extends State<Class2HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', '????????? ?????????', Chapter1()),
          container(
              width, context, 'Chapter-2', '???????????? ?????? ???????????? ??????????????????', Chapter2()),
          container(
              width, context, 'Chapter-3', '??????????????????, ?????????????????? !!', Chapter3()),
          container(width, context, 'Chapter-4', '???????????? ??????????????? ??????????', Chapter4()),
          container(width, context, 'Chapter-5', '??????????????? ?????? ?????????', Chapter5()),
          container(width, context, 'Chapter-6', '???????????? ?????????', Chapter6()),
          container(width, context, 'Chapter-7', '???????????? ???????????????', Chapter7()),
          container(width, context, 'Chapter-8', '??????????????? ?????? ?????????', Chapter8()),
          container(width, context, 'Chapter-9', '??????????????????', Chapter9()),
          container(width, context, 'Chapter-10', '???????????? ??????????????????', Chapter10()),
          container(
              width, context, 'Chapter-11', '???????????? ???????????? ????????? ???????????????', Chapter11()),
          container(
              width, context, 'Chapter-12', '?????? ?????? ???????????? ?????????', Chapter12()),
          container(
              width, context, 'Chapter-13', '???????????? ??????????????? ????????? ??????', Chapter13()),
          container(width, context, 'Chapter-14', '???????????? ????????????', Chapter14()),
          container(width, context, 'Chapter-15', '???????????????-??????????????????', Chapter15())
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
