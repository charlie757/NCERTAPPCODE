import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/ChapterIntro.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Hindi/ChapterLP.dart';

class Class10HindiPDFFile extends StatefulWidget {
  const Class10HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class10HindiPDFFileState createState() => _Class10HindiPDFFileState();
}

class _Class10HindiPDFFileState extends State<Class10HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterLP()),
          container(width, context, 'लेखक परिचय', '', Chapter1()),
          container(width, context, 'Lession-1', 'माता का अँचल', Chapter1()),
          container(
              width, context, 'Lession-2', 'जॉर्ज पंचम की नाक', Chapter2()),
          container(
              width, context, 'Lession-3', 'साना – साना हाथ जोड़ि…', Chapter3()),
          container(width, context, 'Lession-4',
              'एही ठैयाँ झुलनी हेरानी हो रामा!', Chapter4()),
          container(
              width, context, 'Lession-5', 'मैं क्यों लिखता हूँ?', Chapter5()),
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
