import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class3ChapterWisePDF/Hindi/ChapterIntro.dart';

class Class3HindiPDFFile extends StatefulWidget {
  const Class3HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class3HindiPDFFileState createState() => _Class3HindiPDFFileState();
}

class _Class3HindiPDFFileState extends State<Class3HindiPDFFile> {
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
          container(width, context, 'Intorduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', 'कक्कू', Chapter1()),
          container(width, context, 'Chapter-2', 'शेखीबाज़ मक्खी', Chapter2()),
          container(width, context, 'Chapter-3', 'चाँद वाली अम्मा', Chapter3()),
          container(width, context, 'Chapter-4', 'मन करता है', Chapter4()),
          container(width, context, 'Chapter-5', 'बहादुर बित्तो', Chapter5()),
          container(width, context, 'Chapter-6', 'हमसे सब कहते', Chapter6()),
          container(width, context, 'Chapter-7', 'टिपटीपवा', Chapter7()),
          container(width, context, 'Chapter-8', 'बंदर बाँट', Chapter8()),
          container(
              width, context, 'Chapter-9', 'अक्ल बड़ी या भैंस', Chapter9()),
          container(width, context, 'Chapter-10', 'क्योंजीमल और कैसे कैसलिया',
              Chapter10()),
          container(
              width, context, 'Chapter-11', 'मीरा बहन और बाघ', Chapter11()),
          container(width, context, 'Chapter-12', 'जब मुझे साँप ने काटा',
              Chapter12()),
          container(width, context, 'Chapter-13', 'मिर्च का मजा', Chapter13()),
          container(width, context, 'Chapter-14', 'सबसे अच्छा पेड़', Chapter14())
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
