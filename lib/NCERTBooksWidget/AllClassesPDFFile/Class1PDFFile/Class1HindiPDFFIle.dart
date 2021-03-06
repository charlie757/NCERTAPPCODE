import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter15.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter16.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter17.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter18.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter19.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter20.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter21.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter22.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class1ChapterWIsePDF/Hindi/Chapter23.dart';

class Class1HindiPDFFile extends StatefulWidget {
  const Class1HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class1HindiPDFFileState createState() => _Class1HindiPDFFileState();
}

class _Class1HindiPDFFileState extends State<Class1HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', '????????????', Chapter1()),
          container(width, context, 'Chapter-2', '?????? ?????? ???????????????', Chapter2()),
          container(width, context, 'Chapter-3', '?????? ?????? ???????????????', Chapter3()),
          container(width, context, 'Chapter-4', '??????????????? ?????? ???????????????', Chapter4()),
          container(width, context, 'Chapter-5', '???????????????', Chapter5()),
          container(width, context, 'Chapter-6', '????????? ????????? ????????????', Chapter6()),
          container(width, context, 'Chapter-7', '??????????????????', Chapter7()),
          container(width, context, 'Chapter-8', '????????????! ?????????????????? ?????? ????????? ??????',
              Chapter8()),
          container(width, context, 'Chapter-9', '???????????? ?????? ??????????????????', Chapter9()),
          container(width, context, 'Chapter-10', '????????????', Chapter10()),
          container(width, context, 'Chapter-11', '????????????', Chapter11()),
          container(width, context, 'Chapter-12', '????????????-???????????????', Chapter12()),
          container(width, context, 'Chapter-13', '???????????? ????????? ????????? ????????? ?????????',
              Chapter13()),
          container(width, context, 'Chapter-14', '?????? ??????????????????', Chapter14()),
          container(width, context, 'Chapter-15', '????????? ??????', Chapter15()),
          container(width, context, 'Chapter-16', '???????????? ?????? ????????????', Chapter16()),
          container(width, context, 'Chapter-17', '????????? ?????? ???????????????', Chapter17()),
          container(width, context, 'Chapter-18', '???????????? ?????? ????????????', Chapter18()),
          container(width, context, 'Chapter-19', '????????? ?????????', Chapter19()),
          container(width, context, 'Chapter-20', '????????????', Chapter20()),
          container(
              width, context, 'Chapter-21', '???????????? ????????? ???????????? ??????', Chapter21()),
          container(
              width, context, 'Chapter-22', '???????????? ??????????????? ???????????????', Chapter22()),
          container(
              width, context, 'Chapter-23', '????????? ???????????? ?????? ????????????', Chapter23()),
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
