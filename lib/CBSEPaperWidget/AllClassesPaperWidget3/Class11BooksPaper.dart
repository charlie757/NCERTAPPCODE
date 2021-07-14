import 'package:flutter/material.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/BiologyPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/BusinessPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/ChemistryPaperPage11.dART';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/EnglishPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/HindiPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/SocialPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/PhysicsPaperPage11.dart';
import 'package:ncertapp/CBSEPaperWidget/Widget4/Class11YearlyPaper.dart/MathPaperPage11.dart';

class Class11BooksPaper extends StatefulWidget {
  const Class11BooksPaper({Key key}) : super(key: key);

  @override
  _Class11BooksPaperState createState() => _Class11BooksPaperState();
}

class _Class11BooksPaperState extends State<Class11BooksPaper> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XI Board paper"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math(XI)', 'assets/images/math2.jpg',
              MathPaperPage11()),
          inkWell(width, context, 'Physics(XI)', 'assets/images/physics.jpg',
              PhysicsPaperPage11()),
          inkWell(width, context, 'Hindi(XI)', 'assets/images/hindi2.jpg',
              HindiPaperPage11()),
          inkWell(width, context, 'Biology(XI)', 'assets/images/bio.jpg',
              BiologyPaperPage11()),
          inkWell(width, context, 'Social Science(XI)',
              'assets/images/world.jpg', SocialPaperPage11()),
          inkWell(width, context, 'Chemistry(XI)',
              'assets/images/chemistry.jpg', ChemistryPaperPage11()),
          inkWell(width, context, 'English(XI)', 'assets/images/english1.jpg',
              EnglishPaperPage11()),
          inkWell(width, context, 'Business Studies(XI)',
              'assets/images/business.jpg', BusinessPaperPage11()),
        ],
      ),
    );
  }

  InkWell inkWell(
      double width, BuildContext context, String name, String img, route) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.pink,
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
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      // },
    );
  }
}
