import 'package:flutter/material.dart';

class Class12ImportantBooks extends StatefulWidget {
  const Class12ImportantBooks({Key key}) : super(key: key);

  @override
  _Class12ImportantBooksState createState() => _Class12ImportantBooksState();
}

class _Class12ImportantBooksState extends State<Class12ImportantBooks> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class XII Important"),
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
                  inkWell(
                    width,
                    context,
                    'Math-I',
                    'assets/images/math1.jpg',
                  ),
                  inkWell(
                    width,
                    context,
                    'Math-II',
                    'assets/images/math3.jpg',
                  )
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
                inkWell(
                  width,
                  context,
                  'Physics-I',
                  'assets/images/physics1.jpg',
                ),
                inkWell(
                  width,
                  context,
                  'Physics-II',
                  'assets/images/physics3.jpg',
                ),
              ]),
              SizedBox(height: 10),
              Container(
                child: Text("Chemistry:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'Chemistry-I',
                  'assets/images/chemi.jpg',
                ),
                inkWell(
                  width,
                  context,
                  'Chemistry-II',
                  'assets/images/chemi1.jpg',
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Biology:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'Biology',
                  'assets/images/bio.jpg',
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Hindi:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'Hindi',
                  'assets/images/hindi1.jpg',
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("English:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'English',
                  'assets/images/english1.jpg',
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Social Science:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'Social Science',
                  'assets/images/world.jpg',
                ),
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
                inkWell(
                  width,
                  context,
                  'Business Studies',
                  'assets/images/business.jpg',
                ),
              ]),
            ],
          ),
        ));
  }

  Expanded inkWell(
    double width,
    BuildContext context,
    String name,
    String img,
  ) {
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
