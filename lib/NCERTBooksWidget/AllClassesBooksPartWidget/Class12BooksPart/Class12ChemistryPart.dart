import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12ChemistryPDFFile/ChemistryPart1PDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12ChemistryPDFFile/ChemistryPart2PDFFile.dart';

class Class12ChemistryPart extends StatefulWidget {
  const Class12ChemistryPart({Key key}) : super(key: key);

  @override
  _Class12ChemistryPartState createState() => _Class12ChemistryPartState();
}

class _Class12ChemistryPartState extends State<Class12ChemistryPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Chemistry")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Chemistry-I', 'assets/images/chemi.jpg',
              ChemistryPart1PDFFile()),
          inkWell(width, context, 'Chemistry-II', 'assets/images/chemi1.jpg',
              ChemistryPart2PDFFile())
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
