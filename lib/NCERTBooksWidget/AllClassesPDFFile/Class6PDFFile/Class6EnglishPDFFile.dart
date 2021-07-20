import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class6EnglishPDFFile extends StatefulWidget {
  const Class6EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class6EnglishPDFFileState createState() => _Class6EnglishPDFFileState();
}

class _Class6EnglishPDFFileState extends State<Class6EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1',
              'Who Did Patrick’s Homework? & A House, A Home'),
          container(width, context, 'Chapter-2',
              'How the Dog Found Himself a New Master! & The Kite'),
          container(width, context, 'Chapter-3', 'Taro’s Reward & The Quarrel'),
          container(width, context, 'Chapter-4',
              'An Indian – American Woman in Space: Kalpana Chawla & Beauty'),
          container(width, context, 'Chapter-5',
              'A Different Kind of School & Where Do All the Teachers Go?'),
          container(
              width, context, 'Chpater-6', 'Who I Am & The Wonderful Words'),
          container(width, context, 'Chpater-7', 'Fair Play'),
          container(width, context, 'Chpater-8', 'A Game of Chance & Vocation'),
          container(width, context, 'Chpater-9', 'Desert Animals & Whatif'),
          container(width, context, 'Chpater-10', 'The Banyan Tree'),
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
