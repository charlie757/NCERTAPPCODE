import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12ChemistryPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12MathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Clsss12PhysicsPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12SocialSciencePart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12HindiPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12EnglishPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12BiologyPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12BusinessPart.dart';

class Class12Books extends StatefulWidget {
  const Class12Books({Key key}) : super(key: key);

  @override
  _Class12BooksState createState() => _Class12BooksState();
}

class _Class12BooksState extends State<Class12Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XII"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math1.jpg',
              Class12MathPart()),
          inkWell(width, context, 'Physics', 'assets/images/physics1.jpg',
              Class12PhysicsPart()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi1.jpg',
              Class12HindiPart()),
          inkWell(width, context, 'Biology', 'assets/images/bio.jpg',
              Class12BioPart()),
          inkWell(width, context, 'Social Science', 'assets/images/world.jpg',
              Class12SocialSciencePart()),
          inkWell(width, context, 'Chemistry', 'assets/images/chemi1.jpg',
              Class12ChemistryPart()),
          inkWell(width, context, 'English', 'assets/images/english1.jpg',
              Class12EnglishPart()),
          inkWell(width, context, 'Business Studies',
              'assets/images/business.jpg', Class12BusinessStudiesPart()),
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
