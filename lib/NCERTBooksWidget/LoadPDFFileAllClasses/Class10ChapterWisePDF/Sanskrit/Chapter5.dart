import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fullpdfview/flutter_fullpdfview.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/Button_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDFView_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDF_Api.dart';

class Chapter5 extends StatefulWidget {
  const Chapter5({Key key}) : super(key: key);

  @override
  _Chapter5State createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Chapter-5")),
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
                    final url = 'Class10/Sanskrit/jhsk105.pdf';
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
