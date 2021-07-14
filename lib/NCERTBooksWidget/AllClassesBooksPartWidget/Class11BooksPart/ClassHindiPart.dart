import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class11PDFFile/Class11HindiPDFFile.dart';

class Class11HindiPart extends StatefulWidget {
  const Class11HindiPart({Key key}) : super(key: key);

  @override
  _Class11HindiPartState createState() => _Class11HindiPartState();
}

class _Class11HindiPartState extends State<Class11HindiPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Hindi")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Hindi', 'assets/images/hindi.jpg',
              Class11HindiPDFFile())
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
