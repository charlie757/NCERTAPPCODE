import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fullpdfview/flutter_fullpdfview.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/Button_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDFView_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDF_Api.dart';

class Chapter2 extends StatefulWidget {
  const Chapter2({Key key}) : super(key: key);

  @override
  _Chapter2State createState() => _Chapter2State();
}

class _Chapter2State extends State<Chapter2> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Chapter-2")),
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
                    final url = 'Class10/Math/jemh102.pdf';
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
