import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class5EnglishPDFFile extends StatefulWidget {
  const Class5EnglishPDFFile({Key key}) : super(key: key);

  @override
  _Class5EnglishPDFFileState createState() => _Class5EnglishPDFFileState();
}

class _Class5EnglishPDFFileState extends State<Class5EnglishPDFFile> {
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
          container(
              width, context, 'Chapter-1', 'Ice-cream Man Wonderful Waste!'),
          container(width, context, 'Chapter-2', 'Teamwork Flying Together'),
          container(width, context, 'Chapter-3',
              'My Shadow Robinson Crusoe Discovers a footprint'),
          container(width, context, 'Chapter-4', 'Crying My Elder Brother'),
          container(
              width, context, 'Chapter-5', 'The Lazy Frog Rip Van Winkle'),
          container(width, context, 'Chapter-6',
              'Class Discussion The Talkative Barber'),
          container(width, context, 'Chapter-7',
              'Topsy-turvy Land Gulliver’s Travels'),
          container(
              width, context, 'Chapter-8', 'Nobody’s Friend The Little Bully'),
          container(width, context, 'Chapter-9',
              'Sing a Song of People Around the World'),
          container(
              width, context, 'Chapter-10', 'Malu Bhalu Who Will be Ningthou?')
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
