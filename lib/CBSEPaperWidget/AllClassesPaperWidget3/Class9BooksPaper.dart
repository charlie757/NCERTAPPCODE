import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/EnglishPaperPage9.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/HindiPaperPage9.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/SanskritPaperPage9.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/SciencePaperPage9.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/MathPaperPage9.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class9YearlyPaper.dart/SocialPaperPage9.dart';

class Class9BooksPaper extends StatefulWidget {
  const Class9BooksPaper({Key key}) : super(key: key);

  @override
  _Class9BooksPaperState createState() => _Class9BooksPaperState();
}

class _Class9BooksPaperState extends State<Class9BooksPaper> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class IX Board Paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math(IX)', 'assets/images/math3.jpg',
              MathPaperPage9()),
          inkWell(width, context, 'Science(IX)', 'assets/images/science3.jpg',
              SciencePaperPage9()),
          inkWell(width, context, 'English(IX)', 'assets/images/english1.jpg',
              EnglishPaperPage9()),
          inkWell(width, context, 'Hindi(IX)', 'assets/images/hindi1.jpg',
              HindiPaperPage9()),
          inkWell(width, context, "Sanskrit(IX)", 'assets/images/sans.jpg',
              SanskritPaperPage9()),
          inkWell(width, context, 'Social Science(IX)',
              'assets/images/social1.jpg', SocialPaperPage9()),
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
