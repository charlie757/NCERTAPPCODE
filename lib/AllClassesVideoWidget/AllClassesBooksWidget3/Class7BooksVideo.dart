import 'package:flutter/material.dart';

class Class7BooksVideo extends StatefulWidget {
  const Class7BooksVideo({Key key}) : super(key: key);

  @override
  _Class7BooksVideoState createState() => _Class7BooksVideoState();
}

class _Class7BooksVideoState extends State<Class7BooksVideo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VII Video"),
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
            'Science',
            'assets/images/science3.jpg',
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
            'assets/images/hindi.jpg',
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
            'assets/images/social1.jpg',
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
