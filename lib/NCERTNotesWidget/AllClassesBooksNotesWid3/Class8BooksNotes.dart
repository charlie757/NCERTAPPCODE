import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12MathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Clsss12PhysicsPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesPDFFile/Class12PDFFileWidget/Class12MathPDFFile/Mathart1PDFFile.dart';

class Class8BooksNotes extends StatefulWidget {
  const Class8BooksNotes({Key key}) : super(key: key);

  @override
  _Class8BooksNotesState createState() => _Class8BooksNotesState();
}

class _Class8BooksNotesState extends State<Class8BooksNotes> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class VIII Notes"),
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
                    'assets/images/social1.jpg', Class12PhysicsPart()),
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
