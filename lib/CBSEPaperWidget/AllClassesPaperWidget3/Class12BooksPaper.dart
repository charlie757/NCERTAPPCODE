import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/BiologyPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/PhysicsPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/ChemistryPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/BusinessPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/MathPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/HindiPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/EnglishPaperPage12.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class12YearlyPaper.dart/SocialPaperPage12.dart';

class Class12BooksPaper extends StatefulWidget {
  const Class12BooksPaper({Key key}) : super(key: key);

  @override
  _Class12BooksPaperState createState() => _Class12BooksPaperState();
}

class _Class12BooksPaperState extends State<Class12BooksPaper> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XII Board Paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math(XII)', 'assets/images/math1.jpg',
              MathPaperPage12()),
          inkWell(width, context, 'Physics(XII)', 'assets/images/physics1.jpg',
              PhysicsPaperPage12()),
          inkWell(width, context, 'Hindi(XII)', 'assets/images/hindi1.jpg',
              HindiPaperPage12()),
          inkWell(width, context, 'Biology(XII)', 'assets/images/bio.jpg',
              BiologyPaperPage12()),
          inkWell(width, context, 'Social Science(XII)',
              'assets/images/world.jpg', SocialPaperPage12()),
          inkWell(width, context, 'Chemistry(XII)', 'assets/images/chemi1.jpg',
              ChemistryPaperPage12()),
          inkWell(width, context, 'English(XII)', 'assets/images/english1.jpg',
              EnglishPaperPage12()),
          inkWell(width, context, 'Business Studies(XII)',
              'assets/images/business.jpg', BusinessPaperPage12()),
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.cyan,
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
