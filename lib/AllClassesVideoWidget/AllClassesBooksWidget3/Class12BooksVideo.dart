import 'package:flutter/material.dart';

class Class12BooksVideo extends StatefulWidget {
  const Class12BooksVideo({Key key}) : super(key: key);

  @override
  _Class12BooksVideoState createState() => _Class12BooksVideoState();
}

class _Class12BooksVideoState extends State<Class12BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XII Video"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkWell(
            width,
            context,
            'Math',
            'assets/images/math1.jpg',
          ),
          inkWell(
            width,
            context,
            'Physics',
            'assets/images/physics1.jpg',
          ),
          inkWell(
            width,
            context,
            'Hindi',
            'assets/images/hindi1.jpg',
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
            'assets/images/chemi1.jpg',
          ),
          inkWell(
            width,
            context,
            'English',
            'assets/images/english1.jpg',
          ),
          inkWell(
              width, context, 'Business Studies', 'assets/images/business.jpg'),
        ],
      ),
    );
  }

  InkWell inkWell(double width, BuildContext context, String name, String img) {
    return InkWell(
      child: Card(
          elevation: 5,
          shadowColor: Colors.cyan,
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
