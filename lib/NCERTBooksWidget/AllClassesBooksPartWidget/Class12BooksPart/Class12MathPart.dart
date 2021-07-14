import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12MathPDFFile/MathPart2PDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12MathPDFFile/Mathart1PDFFile.dart';

class Class12MathPart extends StatefulWidget {
  const Class12MathPart({Key key}) : super(key: key);

  @override
  _Class12MathPartState createState() => _Class12MathPartState();
}

class _Class12MathPartState extends State<Class12MathPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Math")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Math-I', 'assets/images/math1.jpg',
              MathPart1PDFFile()),
          inkWell(width, context, 'Math-II', 'assets/images/math3.jpg',
              MathPart2PDFFile())
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
