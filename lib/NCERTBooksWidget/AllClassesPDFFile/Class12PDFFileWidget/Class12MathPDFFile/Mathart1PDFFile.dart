import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/LoadPDFFileWidget/Chapter1PDF.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDFView_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDF_Api.dart';

class MathPart1PDFFile extends StatefulWidget {
  const MathPart1PDFFile({Key key}) : super(key: key);

  @override
  _MathPart1PDFFileState createState() => _MathPart1PDFFileState();
}

class _MathPart1PDFFileState extends State<MathPart1PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Math-I"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Relations and Functions'),
          container(
              width, context, 'Chapter-2', 'Inverse Trigonometric Functions'),
          container(width, context, 'Chapter-3', 'Matrices'),
          container(width, context, 'Chapter-4', 'Determinants'),
          container(
              width, context, 'Chapter-5', 'Continuity and Differentiability'),
          container(width, context, 'Chapter-6', 'Application of Derivatives')
        ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    online(
                      width,
                      context,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    offline(width, context)
                  ],
                )
              ],
            )));
  }

  Expanded offline(double width, BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () async {
        final path = 'assets/images/chapter-1.pdf';
        final file = await PDFApi.loadAsset(path);
        openPDF(context, file);
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.purple,
        child: Text("Offline"),
      ),
    ));
  }

  Expanded online(double width, BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () async {
        final url =
            'https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf';
        final file = await PDFApi.loadNetwork(url);
        openPDF(context, file);
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.orange,
        child: Text("Online"),
      ),
    ));
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage1(file: file)),
      );
}
