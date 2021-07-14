import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/Class11BiologyPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/Class11BusinessPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/Class11ChemistryPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/Class11EnglishPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/Class11PhysicsPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/ClassHindiPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/ClassMathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class11BooksPart/ClassSocialSciencePart.dart';

class Class11Books extends StatefulWidget {
  const Class11Books({Key key}) : super(key: key);

  @override
  _Class11BooksState createState() => _Class11BooksState();
}

class _Class11BooksState extends State<Class11Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XI"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math', 'assets/images/math2.jpg',
              Class11MathPart()),
          inkWell(width, context, 'Physics', 'assets/images/physics.jpg',
              Class11PhysicsPart()),
          inkWell(width, context, 'Hindi', 'assets/images/hindi2.jpg',
              Class11HindiPart()),
          inkWell(width, context, 'Biology', 'assets/images/bio.jpg',
              Class11BioPart()),
          inkWell(width, context, 'Social Science', 'assets/images/world.jpg',
              Class11SocialSciencePart()),
          inkWell(width, context, 'Chemistry', 'assets/images/chemistry.jpg',
              Class11ChemistryPart()),
          inkWell(width, context, 'English', 'assets/images/english1.jpg',
              Class11EnglishPart()),
          inkWell(width, context, 'Business Studies',
              'assets/images/business.jpg', Class11BusinessStudiesPart()),
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
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
