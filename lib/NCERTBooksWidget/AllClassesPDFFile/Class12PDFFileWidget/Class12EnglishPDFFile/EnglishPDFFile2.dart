import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/VistasBooks/Intro.dart';

class EnglishPDFFile2 extends StatefulWidget {
  const EnglishPDFFile2({Key key}) : super(key: key);

  @override
  _EnglishPDFFile2State createState() => _EnglishPDFFile2State();
}

class _EnglishPDFFile2State extends State<EnglishPDFFile2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Vistas"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', 'The Third Level', Chapter1()),
          container(width, context, 'Chapter-2', 'The Tiger King', Chapter2()),
          container(width, context, 'Chapter-3',
              'Journey to the end of the Earth', Chapter3()),
          container(width, context, 'Chapter-4', 'The Enemy Pearl', Chapter4()),
          container(width, context, 'Chapter-5', 'Should Wizard hit Mommy',
              Chapter5()),
          container(
              width, context, 'Chapter-6', 'On the face of It', Chapter6()),
          container(width, context, 'Chapter-7', 'Evans Tries an O-level',
              Chapter7()),
          container(
              width, context, 'Chapter-8', 'Memories of Childhood', Chapter8()),
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
                    //     download(width, context, HomePage())
                    //   ],
                    // )
                  ],
                ))));
  }

  // Expanded download(double width, BuildContext context, route) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.purple,
  //       child: Text("Download"),
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
