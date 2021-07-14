import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12MathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Clsss12PhysicsPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12MathPDFFile/Mathart1PDFFile.dart';

class Class4Books extends StatefulWidget {
  const Class4Books({Key key}) : super(key: key);

  @override
  _Class4BooksState createState() => _Class4BooksState();
}

class _Class4BooksState extends State<Class4Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class IV"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: Text("English:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'English', 'assets/images/english.png',
                    Class12PhysicsPart()),
              ]),
              SizedBox(height: 10),
              Container(
                child: Text("Science:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Science', 'assets/images/science3.jpg',
                    Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Hindi:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Hindi', 'assets/images/hindi1.jpg',
                    Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Drawing:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  inkWell(width, context, 'Drawing', 'assets/images/draw.jpg',
                      MathPart1PDFFile())
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Social Science:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Social Science',
                    'assets/images/social1.jpg', Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }

  Expanded inkWell(
      double width, BuildContext context, String name, String img, route) {
    return Expanded(
        child: InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.cyan,
          shape: Border.all(style: BorderStyle.solid),
          child: Container(
              height: 150,
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
              ))),
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      // },
    ));
  }
}
