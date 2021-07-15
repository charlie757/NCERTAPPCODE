import 'dart:io';
import 'package:flutter/material.dart';
import 'PDFView_Widget/Button_Widget.dart';
import 'PDFView_Widget/PDFView_Widget.dart';
import 'PDFView_Widget/PDF_Api.dart';
import 'package:flutter_fullpdfview/flutter_fullpdfview.dart';

class Chapter1 extends StatefulWidget {
  const Chapter1({Key key}) : super(key: key);

  @override
  _Chapter1State createState() => _Chapter1State();
}

// Only For Testing and we have add this page on colorchange in drawer 
class _Chapter1State extends State<Chapter1> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ButtonWidget(
                  text: 'Offline',
                  onClicked: () async {
                    final path = 'assets/images/chapter-1.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file);
                  },
                )),
                // const SizedBox(height: 16),
                // ButtonWidget(
                //   text: 'File PDF',
                //   onClicked: () async {
                //     final file = await PDFApi.pickFile();

                //     if (file == null) return;
                //     openPDF(context, file);
                //   },
                // ),
                // const SizedBox(height: 16),
                Expanded(
                    child: ButtonWidget(
                  text: 'Online',
                  onClicked: () async {
                    final url =
                        'https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf';
                    final file = await PDFApi.loadNetwork(url);
                    openPDF(context, file);
                  },
                )),
                const SizedBox(height: 16),
                ButtonWidget(
                  text: 'Firebase PDF',
                  onClicked: () async {
                    final url = 'Core-Java.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    if (file == null) return;
                    openPDF(context, file);
                  },
                ),
              ],
            ),
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage1(file: file)),
      );
}
