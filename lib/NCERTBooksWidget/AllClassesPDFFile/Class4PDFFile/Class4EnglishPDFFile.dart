import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class4EnglishPDFFile extends StatefulWidget {
  const Class4EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class4EnglishPDFFileState createState() => _Class4EnglishPDFFileState();
}

class _Class4EnglishPDFFileState extends State<Class4EnglishPDFFile> {
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
          container(width, context, 'Chapter-1', 'Wake Up! Neha’s Alarm Clock'),
          container(width, context, 'Chapter-2', 'Noses The Little Fir Tree'),
          container(width, context, 'Chapter-3', 'Run! Nasruddin’s Aim'),
          container(width, context, 'Chapter-4', 'Why? Alice in Wonderland'),
          container(width, context, 'Chapter-5',
              'Don’t be Afraid of the Dark Helen Keller'),
          container(width, context, 'Chapter-6',
              'Hiawatha The Scholar’s Mother Tongue'),
          container(width, context, 'Chapter-7',
              'A Watering Rhyme The Giving Tree The Donkey'),
          container(width, context, 'Chapter-8', 'Books Going to Buy a Book'),
          container(width, context, 'Chapter-9', 'The Naughty Boy Pinocchio'),
          container(width, context, 'Chapter-10', 'name'),
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
