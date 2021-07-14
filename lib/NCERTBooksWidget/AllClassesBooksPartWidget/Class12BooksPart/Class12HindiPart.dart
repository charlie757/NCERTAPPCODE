import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12HindiPDFFile/HindiPDFFile.dart';

class Class12HindiPart extends StatefulWidget {
  const Class12HindiPart({Key key}) : super(key: key);

  @override
  _Class12HindiPartState createState() => _Class12HindiPartState();
}

class _Class12HindiPartState extends State<Class12HindiPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Hindi")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Hindi', 'assets/images/hindi1.jpg',
              HindiPDFFile())
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
