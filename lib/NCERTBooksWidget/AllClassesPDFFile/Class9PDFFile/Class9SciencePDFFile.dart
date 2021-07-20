import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class9SciencePDFFile extends StatefulWidget {
  const Class9SciencePDFFile({Key key}) : super(key: key);

  @override
  _Class9SciencePDFFileState createState() => _Class9SciencePDFFileState();
}

class _Class9SciencePDFFileState extends State<Class9SciencePDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Science"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Matter in Our Surroundings'),
          container(width, context, 'Chapter-2', 'Is Matter Around Us Pure'),
          container(width, context, 'Chapter-3', 'Atoms and Molecules'),
          container(width, context, 'Chapter-4', 'Structure of the Atom'),
          container(
              width, context, 'Chapter-5', 'The Fundamental Unit of Life'),
          container(width, context, 'Chapter-6', 'Tissues'),
          container(
              width, context, 'Chapter-7', 'Diversity in Living Organisms'),
          container(width, context, 'Chapter-8', 'Motion'),
          container(width, context, 'Chapter-9', 'Force and Laws of Motion'),
          container(width, context, 'Chapter-10', 'Gravitation'),
          container(width, context, 'Chapter-11', 'Work and Energy'),
          container(width, context, 'Chapter-12', 'Sound'),
          container(width, context, 'Chapter-13', 'Why Do We Fall ill'),
          container(width, context, 'Chapter-14', 'Natural Resources'),
          container(
              width, context, 'Chapter-15', 'Improvement in Food Resources'),
          container(width, context, 'Chapter-1', 'name'),
          container(width, context, 'Chapter-1', 'name'),
        ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
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
