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
          container(width, context, 'Chapter-1', 'ऊँट चला', Chapter1()),
          container(
              width, context, 'Chapter-2', 'भालू ने खेली फुटबॉल', Chapter2()),
          container(
              width, context, 'Chapter-3', 'म्याऊँ, म्याऊँ !!', Chapter3()),
          container(width, context, 'Chapter-4', 'अधिक बलवान कौन?', Chapter4()),
          container(width, context, 'Chapter-5', 'दोस्त की मदद', Chapter5()),
          container(width, context, 'Chapter-6', 'बहुत हुआ', Chapter6()),
          container(width, context, 'Chapter-7', 'मेरी किताब', Chapter7()),
          container(width, context, 'Chapter-8', 'तितली और कली', Chapter8()),
          container(width, context, 'Chapter-9', 'बुलबुल', Chapter9()),
          container(width, context, 'Chapter-10', 'मीठी सारंगी', Chapter10()),
          container(
              width, context, 'Chapter-11', 'टेसू राजा बीच बाजार', Chapter11()),
          container(
              width, context, 'Chapter-12', 'बस के नीचे बाघ', Chapter12()),
          container(
              width, context, 'Chapter-13', 'सूरज जल्दी आना जी', Chapter13()),
          container(width, context, 'Chapter-14', 'नटखट चूहा', Chapter14()),
          container(width, context, 'Chapter-15', 'एक्की-दोक्की', Chapter15())
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
