import 'package:flutter/material.dart';

class Class10BooksVideo extends StatefulWidget {
  const Class10BooksVideo({Key key}) : super(key: key);

  @override
  _Class10BooksVideoState createState() => _Class10BooksVideoState();
}

class _Class10BooksVideoState extends State<Class10BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class X Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(
            width,
            context,
            'Math',
            'assets/images/math3.jpg',
          ),
          inkWell(
            width,
            context,
            'Science',
            'assets/images/science1.jpg',
          ),
          inkWell(
            width,
            context,
            'English',
            'assets/images/english1.jpg',
          ),
          inkWell(
            width,
            context,
            'Hindi',
            'assets/images/hindi2.jpg',
          ),
          inkWell(
            width,
            context,
            "Sanskrit",
            'assets/images/sans.jpg',
          ),
          inkWell(
            width,
            context,
            'Social Science',
            'assets/images/social2.jpg',
          ),
        ],
      ),
    );
  }

  InkWell inkWell(
    double width,
    BuildContext context,
    String name,
    String img,
  ) {
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
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      // },
    );
  }
}
