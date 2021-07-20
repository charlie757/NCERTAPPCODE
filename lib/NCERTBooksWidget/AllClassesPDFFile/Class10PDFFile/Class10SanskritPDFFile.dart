import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class10ChapterWisePDF/Sanskrit/ChapterIntro.dart';

class Class10SanskritPDFFile extends StatefulWidget {
  const Class10SanskritPDFFile({Key key}) : super(key: key);

  @override
  _Class10SanskritPDFFileState createState() => _Class10SanskritPDFFileState();
}

class _Class10SanskritPDFFileState extends State<Class10SanskritPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanskrit"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', '', ChapterIntro()),
          container(width, context, 'Chapter-1', 'शुचिपर्यावरणम्', Chapter1()),
          container(
              width, context, 'Chapter-2', 'बुद्धिर्बलवती सदा', Chapter2()),
          container(
              width, context, 'Chapter-3', 'व्यायामः सर्वदा पथ्यः', Chapter3()),
          container(width, context, 'Chapter-4', 'शिशुलालनम', Chapter4()),
          container(
              width, context, 'Chapter-5', 'जननी तुल्यवत्सला', Chapter5()),
          container(width, context, 'Chapter-6', 'सुभाषितानि', Chapter6()),
          container(width, context, 'Chapter-7', 'सौहार्दं प्रकृतेः शोभा',
              Chapter7()),
          container(width, context, 'Chapter-8', 'विचित्रः साक्षी', Chapter8()),
          container(width, context, 'Chapter-9', 'सूक्तयः', Chapter9()),
          container(width, context, 'Chapter-10', 'भूकंपविभीषिका', Chapter10()),
          container(width, context, 'Chapter-6', 'प्राणेभ्योपि प्रियः सुहृद्',
              Chapter11()),
          container(width, context, 'Chapter-6', 'अनयोक्त्यः', Chapter12())
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
