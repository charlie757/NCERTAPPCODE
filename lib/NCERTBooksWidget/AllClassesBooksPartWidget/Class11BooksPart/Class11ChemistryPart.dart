import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class11PDFFile/Class11ChemistryPDFFile.dart';

class Class11ChemistryPart extends StatefulWidget {
  const Class11ChemistryPart({Key key}) : super(key: key);

  @override
  _Class11ChemistryPartState createState() => _Class11ChemistryPartState();
}

class _Class11ChemistryPartState extends State<Class11ChemistryPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Chemistry")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Chemistry-I', 'assets/images/chemistry.jpg',
              Class11ChemistryPart1PDFFile()),
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
