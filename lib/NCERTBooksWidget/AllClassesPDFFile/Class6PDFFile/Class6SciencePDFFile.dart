import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class6SciencePDFFile extends StatefulWidget {
  const Class6SciencePDFFile({Key key}) : super(key: key);

  @override
  _Class6SciencePDFFileState createState() => _Class6SciencePDFFileState();
}

class _Class6SciencePDFFileState extends State<Class6SciencePDFFile> {
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
          container(width, context, 'Introduction', ''),
          container(
              width, context, 'Chapter-1', 'Food: Where Does It Come From?'),
          container(width, context, 'Chapter-2', 'Components of Food'),
          container(width, context, 'Chapter-3', 'Fibre to Fabric'),
          container(
              width, context, 'Chapter-4', 'Sorting Materials and Groups'),
          container(width, context, 'Chapter-5', 'Separation of Substances'),
          container(width, context, 'Chapter-6', 'Changes Around Us'),
          container(width, context, 'Chapter-7', 'Getting to Know Plants'),
          container(width, context, 'Chapter-8', 'Body Movement'),
          container(width, context, 'Chapter-9',
              'The Living Organisms and Their Surroundings'),
          container(width, context, 'Chapter-10',
              'Motion and Measurement of Distances'),
          container(
              width, context, 'Chapter-11', 'Light, Shadows and Reflections'),
          container(width, context, 'Chapter-12', 'Electricity and Circuits'),
          container(width, context, 'Chapter-13', 'Fun with Magnets'),
          container(width, context, 'Chapter-14', 'Water'),
          container(width, context, 'Chapter-15', 'Air Around Us'),
          container(width, context, 'Chapter-16', 'Garbage In, Garbage Out'),
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
