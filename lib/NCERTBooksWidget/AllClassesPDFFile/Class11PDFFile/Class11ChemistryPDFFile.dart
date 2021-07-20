import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter5.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter6.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter7.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter8.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter9.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter10.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter11.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter12.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter13.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/Chapter14.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterIntro1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterAns1.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterAns2.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterAns3.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterAns4.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class11ChapWisePDF/Chemistry/ChapterIntro2.dart';

class Class11ChemistryPart1PDFFile extends StatefulWidget {
  const Class11ChemistryPart1PDFFile({Key key}) : super(key: key);

  @override
  _Class11ChemistryPart1PDFFileState createState() =>
      _Class11ChemistryPart1PDFFileState();
}

class _Class11ChemistryPart1PDFFileState
    extends State<Class11ChemistryPart1PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Chemistry-I"),
      ),
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              height: 50,
              color: Colors.cyan,
              child: Text(
                "Part-1",
                style: TextStyle(fontSize: 20),
              )),
          container(width, context, 'Introduction', '', ChapterIntro1()),
          container(width, context, 'Chapter-1',
              'Some Basic Concepts of Chemistry', Chapter1()),
          container(
              width, context, 'Chapter-2', 'Structure of Atom', Chapter2()),
          container(
              width,
              context,
              'Chapter-3',
              'Classification of Elements and Periodicity in Properties',
              Chapter3()),
          container(width, context, 'Chapter-4',
              'Chemical Bonding and Molecular Structure', Chapter4()),
          container(
              width, context, 'Chapter-5', 'States of Matter', Chapter5()),
          container(width, context, 'Chapter-6', 'Thermodynamics', Chapter6()),
          container(width, context, 'Chapter-7', 'Equilibrium', Chapter7()),
          container(width, context, 'Answer-1', '', ChapterAns1()),
          container(width, context, 'Answer-2', '', ChapterAns2()),
          Container(
              color: Colors.cyan,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Part-II",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              )),
          container(width, context, 'Introduction', '', ChapterIntro2()),
          container(width, context, 'Chapter-8', 'Redox Reactions', Chapter8()),
          container(width, context, 'Chapter-9', 'Hydrogen', Chapter9()),
          container(width, context, 'Chapter-10', 'The s-Block Elements',
              Chapter10()),
          container(width, context, 'Chapter-11', 'The p-Block Elements',
              Chapter11()),
          container(
              width,
              context,
              'Chapter-12',
              'Organic Chemistry – Some Basic Principles & Techniques',
              Chapter12()),
          container(width, context, 'Chapter-13', 'Hydrocarbons', Chapter13()),
          container(width, context, 'Chapter-14', 'Environmental Chemistry',
              Chapter14()),
          container(width, context, 'Answer-1', '', ChapterAns3()),
          container(width, context, 'Answer-2', '', ChapterAns4()),
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
