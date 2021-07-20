import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7SciencePDFFile extends StatefulWidget {
  const Class7SciencePDFFile({Key key}) : super(key: key);

  @override
  _Class7SciencePDFFileState createState() => _Class7SciencePDFFileState();
}

class _Class7SciencePDFFileState extends State<Class7SciencePDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Science"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Nutrition in Plants'),
          container(width, context, 'Chapter-2', 'Nutrition in Animals'),
          container(width, context, 'Chapter-3', 'Fibre to Fabric'),
          container(width, context, 'Chapter-4', 'Heat'),
          container(width, context, 'Chapter-5', 'Acids, Bases and Salts'),
          container(
              width, context, 'Chapter-6', 'Physical and Chemical Changes'),
          container(width, context, 'Chapter-7',
              'Weather, Climate and Adaptations of Animals to Climate'),
          container(width, context, 'Chapter-8', 'Winds, Storms and Cyclones'),
          container(width, context, 'Chapter-9', 'Soil'),
          container(width, context, 'Chapter-10', 'Respiration in Organisms'),
          container(width, context, 'Chapter-11',
              'Transportation in Animals and Plants'),
          container(width, context, 'Chapter-12', 'Reproduction in Plants'),
          container(width, context, 'Chapter-13', 'Motion and Time'),
          container(width, context, 'Chapter-14',
              'Electric Current and its 14 Effects'),
          container(width, context, 'Chapter-15', 'Light'),
          container(width, context, 'Chapter-16', 'Water: A Precious Resource'),
          container(width, context, 'Chapter-17', 'Forests: Our Lifeline'),
          container(width, context, 'Chapter-18', 'Wastewater Story'),
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
