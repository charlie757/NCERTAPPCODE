import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12MathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Clsss12PhysicsPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12MathPDFFile/Mathart1PDFFile.dart';

class Class10BooksNotes extends StatefulWidget {
  const Class10BooksNotes({Key key}) : super(key: key);

  @override
  _Class10BooksNotesState createState() => _Class10BooksNotesState();
}

class _Class10BooksNotesState extends State<Class10BooksNotes> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class X Notes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: Text("Maths:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  inkWell(width, context, 'Math', 'assets/images/math3.jpg',
                      MathPart1PDFFile())
                ],
              ),
              SizedBox(height: 10),
              Container(
                child: Text("Science:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Physics-I',
                    'assets/images/physics1.jpg', Class12PhysicsPart()),
                inkWell(width, context, 'Chemistry-I',
                    'assets/images/chemi.jpg', Class12PhysicsPart()),
                inkWell(width, context, 'Biology', 'assets/images/bio.jpg',
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
                child: Text("English:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'English', 'assets/images/english1.jpg',
                    Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Social Science:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Social Science',
                    'assets/images/social2.jpg', Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Sanskrit:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, "Sanskrit", 'assets/images/sans.jpg',
                    Class12MathPart()),
              ]),
            ],
          ),
        ));
  }

  Expanded inkWell(
      double width, BuildContext context, String name, String img, route) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
        child: Container(
            width: width / 2,
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
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route));
              },
            )));
  }
}
