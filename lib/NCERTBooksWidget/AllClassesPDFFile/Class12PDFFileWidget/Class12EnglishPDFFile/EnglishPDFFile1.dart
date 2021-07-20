import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class EnglishPDFFile1 extends StatefulWidget {
  const EnglishPDFFile1({Key key}) : super(key: key);

  @override
  _EnglishPDFFile1State createState() => _EnglishPDFFile1State();
}

class _EnglishPDFFile1State extends State<EnglishPDFFile1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flamingo"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'The Last Lesson'),
          container(width, context, 'Lesson-2', 'Lost Spring'),
          container(width, context, 'Lesson-3', 'Deep Water'),
          container(width, context, 'Lesson-4', 'The Rattrap'),
          container(width, context, 'Lesson-5', 'Indigo'),
          container(width, context, 'Lesson-6', 'Poets and Pancakes'),
          container(width, context, 'Lesson-7', 'The Interview'),
          container(width, context, 'Lesson-8', 'Going Places'),
          container(width, context, 'Lesson-9', 'My Mother at Sixty'),
          container(width, context, 'Lesson-10',
              'An Elementary School Classroom in a Slum'),
          container(width, context, 'Lesson-11', 'Keeping Quiet'),
          container(width, context, 'Lesson-12', 'A Thing of Beauty'),
          container(width, context, 'Lesson-13', 'A Roadside Stand'),
          container(width, context, 'Lesson-14', 'Aunt Jennifer’s Tigers'),
        ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
        height: 80,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    online(width, context, HomePage()),
                    SizedBox(
                      width: 10,
                    ),
                    offline(width, context, HomePage())
                  ],
                )
              ],
            )));
  }

  Expanded offline(double width, BuildContext context, route) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.purple,
        child: Text("Offline"),
      ),
    ));
  }

  Expanded online(double width, BuildContext context, route1) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => route1));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.orange,
        child: Text("Online"),
      ),
    ));
  }
}
