import 'package:flutter/material.dart';

class Class11BooksVideo extends StatefulWidget {
  const Class11BooksVideo({Key key}) : super(key: key);

  @override
  _Class11BooksVideoState createState() => _Class11BooksVideoState();
}

class _Class11BooksVideoState extends State<Class11BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XI Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(
            width,
            context,
            'Math',
            'assets/images/math2.jpg',
          ),
          inkWell(
            width,
            context,
            'Physics',
            'assets/images/physics.jpg',
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
            'Biology',
            'assets/images/bio.jpg',
          ),
          inkWell(
            width,
            context,
            'Social Science',
            'assets/images/world.jpg',
          ),
          inkWell(
            width,
            context,
            'Chemistry',
            'assets/images/chemistry.jpg',
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
            'Business Studies',
            'assets/images/business.jpg',
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
          shadowColor: Colors.pink,
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
