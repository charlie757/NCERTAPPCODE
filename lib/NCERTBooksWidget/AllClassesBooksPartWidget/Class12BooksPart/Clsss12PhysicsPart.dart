import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12PhysicsPDFFile/PhyscicsPart1PDFFile.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12PhysicsPDFFile/PhysicsPart2PDFFile.dart';

class Class12PhysicsPart extends StatefulWidget {
  const Class12PhysicsPart({Key key}) : super(key: key);

  @override
  _Class12PhysicsPartState createState() => _Class12PhysicsPartState();
}

class _Class12PhysicsPartState extends State<Class12PhysicsPart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Physics")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(width, context, 'Physics-I', 'assets/images/physics1.jpg',
              PhysicsPart1PDFFile()),
          inkWell(width, context, 'Physics-II', 'assets/images/physics3.jpg',
              PhysicsPart2PDFFile())
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
