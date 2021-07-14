import 'package:flutter/material.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Class12MathPart.dart';
import 'package:ncertapp/NCERTBooksWidget/AllClassesBooksPartWidget/Class12BooksPart/Clsss12PhysicsPart.dart';

class Class12Books extends StatefulWidget {
  const Class12Books({Key key}) : super(key: key);

  @override
  _Class12BooksState createState() => _Class12BooksState();
}

class _Class12BooksState extends State<Class12Books> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class XII"),
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
                  inkWell(width, context, 'Math-I', 'assets/images/math1.jpg',
                      Class12MathPart()),
                  inkWell(width, context, 'Math-II', 'assets/images/math3.jpg',
                      Class12MathPart())
                ],
              ),
              SizedBox(height: 10),
              Container(
                child: Text("Physics:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Physics-I',
                    'assets/images/physics1.jpg', Class12PhysicsPart()),
                inkWell(width, context, 'Physics-II',
                    'assets/images/physics3.jpg', Class12PhysicsPart()),
              ]),
              SizedBox(height: 10),
              Container(
                child: Text("Chemistry:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Chemistry-I',
                    'assets/images/chemi.jpg', Class12PhysicsPart()),
                inkWell(width, context, 'Chemistry-II',
                    'assets/images/chemi1.jpg', Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Biology:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                    'assets/images/world.jpg', Class12PhysicsPart()),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child:
                    Text("Business Studies:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(width, context, 'Business Studies',
                    'assets/images/business.jpg', Class12PhysicsPart()),
              ]),
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
