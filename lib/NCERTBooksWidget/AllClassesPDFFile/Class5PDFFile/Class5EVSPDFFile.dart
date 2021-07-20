import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class5EVSPDFFile extends StatefulWidget {
  const Class5EVSPDFFile({Key key}) : super(key: key);

  @override
  _Class5EVSPDFFileState createState() => _Class5EVSPDFFileState();
}

class _Class5EVSPDFFileState extends State<Class5EVSPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("EVS"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'Super Senses'),
          container(width, context, 'Chapter-2', 'A Snake Charmer’s Story'),
          container(width, context, 'Chapter-3', 'From Tasting to Digesting'),
          container(width, context, 'Chapter-4', 'Mangoes Round the Year'),
          container(width, context, 'Chapter-5', 'Seeds and Seeds'),
          container(width, context, 'Chapter-6', 'Every Drop Counts'),
          container(width, context, 'Chapter-7', 'Experiments with Water'),
          container(width, context, 'Chapter-8', 'A Treat for Mosquitoes'),
          container(width, context, 'Chapter-9', 'Up You Go!'),
          container(width, context, 'Chapter-10', 'Walls Tell Stories'),
          container(width, context, 'Chapter-11', 'Sunita in Space'),
          container(width, context, 'Chapter-12', 'What if it Finishes…?'),
          container(width, context, 'Chapter-13', 'A Shelter so High!'),
          container(width, context, 'Chapter-14', 'When the Earth Shook!'),
          container(width, context, 'Chapter-15', 'Blow Hot, Blow Cold'),
          container(width, context, 'Chapter-16', 'Who will do this Work?'),
          container(width, context, 'Chapter-17', 'Across the Wall'),
          container(width, context, 'Chapter-18', 'No Place for Us?'),
          container(
              width, context, 'Chapter-19', 'A Seed tells a Farmer’s Story'),
          container(width, context, 'Chapter-20', 'Whose Forests?'),
          container(width, context, 'Chapter-21', 'Like Father,Like Daughter'),
          container(width, context, 'Chapter-22', 'On the Move Again'),
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
