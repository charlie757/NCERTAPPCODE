import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/BusinessStudies/ChapterIntro.dart';

class Class11BusinessPDFFile extends StatefulWidget {
  const Class11BusinessPDFFile({Key key}) : super(key: key);

  @override
  _Class11BusinessPDFFileState createState() => _Class11BusinessPDFFileState();
}

class _Class11BusinessPDFFileState extends State<Class11BusinessPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Business"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', 'Business, Trade and Commerce',
              Chapter1()),
          container(width, context, 'Chapter-2',
              'Forms of Business Organisation', Chapter2()),
          container(width, context, 'Chapter-3',
              'Private, Public and Global Enterprises', Chapter3()),
          container(
              width, context, 'Chapter-4', 'Business Services', Chapter4()),
          container(width, context, 'Chapter-5', 'Emerging Modes of Business',
              Chapter5()),
          container(
              width,
              context,
              'Chapter-6',
              'Social Responsibilities of Business and Business Ethics',
              Chapter6()),
          container(width, context, 'Chapter-7', 'Formation of a Company',
              Chapter7()),
          container(width, context, 'Chapter-8', 'Sources of Business Finance',
              Chapter8()),
          container(width, context, 'Chapter-9',
              'Small Business and Entrepreneurship', Chapter9()),
          container(
              width, context, 'Chapter-10', 'Internal Trade', Chapter10()),
          container(width, context, 'Chapter-11', 'International Business',
              Chapter11()),
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
            height: 70,
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
