import 'package:flutter/material.dart';

class Class9ImportantBooks extends StatefulWidget {
  const Class9ImportantBooks({Key key}) : super(key: key);

  @override
  _Class9ImportantBooksState createState() => _Class9ImportantBooksState();
}

class _Class9ImportantBooksState extends State<Class9ImportantBooks> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Class IX Important"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: Text("Hindi:-", style: TextStyle(fontSize: 17)),
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
                    'Hindi',
                    'assets/images/hindi1.jpg',
                  ),
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
                inkWell(
                  width,
                  context,
                  'Science',
                  'assets/images/science1.jpg',
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Math:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  'Math',
                  'assets/images/math3.jpg',
                )
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
                  'assets/images/social1.jpg',
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
                child: Text("Sanskrit:-", style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                inkWell(
                  width,
                  context,
                  "Sanskrit",
                  'assets/images/sans.jpg',
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
