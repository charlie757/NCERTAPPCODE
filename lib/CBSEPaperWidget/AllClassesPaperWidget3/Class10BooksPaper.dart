import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/EnglishPaperPage10.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/HindiPaperPage10.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/MathPaperPage10.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/SanskritPaperPage10.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/SciencePaperPage10.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class10YearlyPaper.dart/SocialPaperPage10.dart';

class Class10BooksPaper extends StatefulWidget {
  const Class10BooksPaper({Key key}) : super(key: key);

  @override
  _Class10BooksPaperState createState() => _Class10BooksPaperState();
}

class _Class10BooksPaperState extends State<Class10BooksPaper> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class X Board Paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math(X)', 'assets/images/math3.jpg',
              MathPaperPage10()),
          inkWell(width, context, 'Science(X)', 'assets/images/science1.jpg',
              SciencePaperPage10()),
          inkWell(width, context, 'English(X)', 'assets/images/english1.jpg',
              EnglishPaperPage10()),
          inkWell(width, context, 'Hindi(X)', 'assets/images/hindi2.jpg',
              HindiPaperPage10()),
          inkWell(width, context, "Sanskrit(X)", 'assets/images/sans.jpg',
              SanskritPaperPage10()),
          inkWell(width, context, 'Social Science(X)',
              'assets/images/social2.jpg', SocialPaperPage10()),
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.red,
          shape: Border.all(style: BorderStyle.solid),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                img,
                height: 100,
                width: 100,
              ),
              Text(name)
            ],
          )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
