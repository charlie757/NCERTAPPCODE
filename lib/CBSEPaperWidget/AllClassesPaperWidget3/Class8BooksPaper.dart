import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/EnglishPaperPage8.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/HindiPaperPage8.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/MathPaperPage8.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/SciencePaperPage8.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/SocialPaperPage8.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class8YearlyPaper.dart/SanskritPaperPage8.dart';

class Class8BooksPaper extends StatefulWidget {
  const Class8BooksPaper({Key key}) : super(key: key);

  @override
  _Class8BooksPaperState createState() => _Class8BooksPaperState();
}

class _Class8BooksPaperState extends State<Class8BooksPaper> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VIII Board Paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math(VIII)', 'assets/images/math3.jpg',
              MathPaperPage8()),
          inkWell(width, context, 'Science(VIII)', 'assets/images/science2.jpg',
              SciencePaperPage8()),
          inkWell(width, context, 'English(VIII)', 'assets/images/english.png',
              EnglishPaperPage8()),
          inkWell(width, context, 'Hindi(VIII)', 'assets/images/hindi1.jpg',
              HindiPaperPage8()),
          inkWell(width, context, "Sanskrit(VIII)", 'assets/images/sans.jpg',
              SanskritPaperPage8()),
          inkWell(width, context, 'Social Science(VIII)',
              'assets/images/social1.jpg', SocialPaperPage8()),
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
