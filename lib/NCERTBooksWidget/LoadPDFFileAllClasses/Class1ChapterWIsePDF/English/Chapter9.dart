import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fullpdfview/flutter_fullpdfview.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/Button_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDFView_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDF_Api.dart';

class Chapter9 extends StatefulWidget {
  const Chapter9({Key key}) : super(key: key);

  @override
  _Chapter9State createState() => _Chapter9State();
}

class _Chapter9State extends State<Chapter9> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Chapter-9")),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'Download For Offline',
                  onClicked: () async {
                    // final path = 'assets/images/chapter-1.pdf';
                    // final file = await PDFApi.loadAsset(path);
                    // openPDF(context, file);
                  },
                ),
                const SizedBox(height: 16),
                ButtonWidget(
                  text: 'PDF here',
                  onClicked: () async {
                    final url = 'Class1/English/aeen109.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    if (file == null) return;
                    openPDF(context, file);
                  },
                )
              ],
            ),
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage1(file: file)),
      );
}
