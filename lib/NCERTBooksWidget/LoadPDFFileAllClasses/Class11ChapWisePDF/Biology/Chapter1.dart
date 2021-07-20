import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fullpdfview/flutter_fullpdfview.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/Button_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDFView_Widget.dart';
import 'package:ncertapp/LoadPDFFileWidget/PDFView_Widget/PDF_Api.dart';

class Chapter1 extends StatefulWidget {
  const Chapter1({Key key}) : super(key: key);

  @override
  _Chapter1State createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
  bool hasInternet = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Chapter-1")),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'Download here For Offline',
                  onClicked: () async {
                    // final path = 'assets/images/chapter-1.pdf';
                    // final file = await PDFApi.loadAsset(path);
                    // openPDF(context, file);
                  },
                ),
                const SizedBox(height: 16),
                InkWell(
                    onTap: () async {
                      hasInternet =
                          InternetConnectionChecker().hasConnection as bool;
                      final url = 'Class11/biology/kebo101.pdf';
                      final file = await PDFApi.loadFirebase(url);

                      if (file == null) return;
                      openPDF(context, file);
                    },
                    child: ButtonWidget(
                      text: 'PDF here',
                    ))
              ],
            ),
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage1(file: file)),
      );
}
