import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class8EnglishPDFFile extends StatefulWidget {
  const Class8EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class8EnglishPDFFileState createState() => _Class8EnglishPDFFileState();
}

class _Class8EnglishPDFFileState extends State<Class8EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1',
              'The Best Christmas Present in the World & The Ant and the Cricket'),
          container(
              width, context, 'Chapter-2', 'The Tsunami & Geography Lesson'),
          container(width, context, 'Chapter-3',
              'Glimpses of the Past Macavity The Mystery Cat'),
          container(width, context, 'Chapter-4',
              'Bepin Choudhury’s Lapse of Memory & The Last Bargain'),
          container(width, context, 'Chapter-5',
              'The Summit Within & The School Boy'),
          container(width, context, 'Chapter-6',
              'This is Jody’s Fawn & The Duck and the Kangaroo'),
          container(width, context, 'Chapter-7',
              'A Visit to Cambridge & When I set out for Lyonnesse'),
          container(width, context, 'Chapter-8',
              'A Short Monsoon Diary & On the Grasshopper and Cricket'),
          container(width, context, 'Chapter-9', 'The Great Stone Face–I'),
          container(width, context, 'Chapter-10', 'The Great Stone Face–II')
        ],
      ),
    );
  }

  InkWell container(width, BuildContext context, String number, String name) {
    return InkWell(
        child: Container(
            height: 90,
            child: Card(
                shadowColor: Colors.cyan,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          number,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                          name,
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                  ],
                ))));
  }

  // Expanded offline(double width, BuildContext context, route) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.purple,
  //       child: Text("Offline"),
  //     ),
  //   ));
  // }

  // Expanded online(double width, BuildContext context, route1) {
  //   return Expanded(
  //       child: InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => route1));
  //     },
  //     child: Container(
  //       alignment: Alignment.center,
  //       height: 20,
  //       color: Colors.orange,
  //       child: Text("Online"),
  //     ),
  //   ));
  // }
}
