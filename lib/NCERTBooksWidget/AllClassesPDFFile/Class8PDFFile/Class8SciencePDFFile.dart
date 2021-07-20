import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class8SciencePDFFile extends StatefulWidget {
  const Class8SciencePDFFile({Key key}) : super(key: key);

  @override
  _Class8SciencePDFFileState createState() => _Class8SciencePDFFileState();
}

class _Class8SciencePDFFileState extends State<Class8SciencePDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Science"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(
              width, context, 'Chapter-1', 'Crop Production and Management'),
          container(
              width, context, 'Chapter-2', 'Microorganisms: Friend and Foe'),
          container(
              width, context, 'Chapter-3', 'Synthetic Fibres and Plastics'),
          container(
              width, context, 'Chapter-4', 'Materials: Metals and Non-Metals'),
          container(width, context, 'Chapter-5', 'Coal and Petroleum'),
          container(width, context, 'Chapter-6', 'Combustion and Flame'),
          container(width, context, 'Chapter-7',
              'Conservation of Plants and Animals'),
          container(
              width, context, 'Chapter-8', 'Cell – Structure and Functions'),
          container(width, context, 'Chapter-9', 'Reproduction in Animals'),
          container(
              width, context, 'Chapter-10', 'Reaching the Age of Adolescence'),
          container(width, context, 'Chapter-11', 'Force and Pressure'),
          container(width, context, 'Chapter-12', 'Friction'),
          container(width, context, 'Chapter-13', 'Sound'),
          container(width, context, 'Chapter-14',
              'Chemical Effects of Electric Current'),
          container(width, context, 'Chapter-15', 'Some Natural Phenomena'),
          container(width, context, 'Chapter-16', 'Light'),
          container(width, context, 'Chapter-17', 'Stars and The Solar System'),
          container(width, context, 'Chapter-18', 'Pollution of Air and Water')
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
