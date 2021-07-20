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
          container(width, context, 'Chapter-1', 'झूला', Chapter1()),
          container(width, context, 'Chapter-2', 'आम की कहानी', Chapter2()),
          container(width, context, 'Chapter-3', 'आम की टोकरी', Chapter3()),
          container(width, context, 'Chapter-4', 'पत्ते ही पत्ते', Chapter4()),
          container(width, context, 'Chapter-5', 'पकौड़ी', Chapter5()),
          container(width, context, 'Chapter-6', 'छुक छुक गाडी', Chapter6()),
          container(width, context, 'Chapter-7', 'रसोईघर', Chapter7()),
          container(width, context, 'Chapter-8', 'चूहो! म्याऊँ सो रही है',
              Chapter8()),
          container(width, context, 'Chapter-9', 'बंदर और गिलहरी', Chapter9()),
          container(width, context, 'Chapter-10', 'पगड़ी', Chapter10()),
          container(width, context, 'Chapter-11', 'पतंग', Chapter11()),
          container(width, context, 'Chapter-12', 'गेंद-बल्ला', Chapter12()),
          container(width, context, 'Chapter-13', 'बंदर गया खेत में भाग',
              Chapter13()),
          container(width, context, 'Chapter-14', 'एक बुढ़िया', Chapter14()),
          container(width, context, 'Chapter-15', 'मैं भी', Chapter15()),
          container(width, context, 'Chapter-16', 'लालू और पीलू', Chapter16()),
          container(width, context, 'Chapter-17', 'चकई के चकदुम', Chapter17()),
          container(width, context, 'Chapter-18', 'छोटी का कमाल', Chapter18()),
          container(width, context, 'Chapter-19', 'चार चने', Chapter19()),
          container(width, context, 'Chapter-20', 'भगदड़', Chapter20()),
          container(
              width, context, 'Chapter-21', 'हलीम चला चाँद पर', Chapter21()),
          container(
              width, context, 'Chapter-22', 'हाथी चल्लम चल्लम', Chapter22()),
          container(
              width, context, 'Chapter-23', 'सात पूँछ का चूहा', Chapter23()),
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
