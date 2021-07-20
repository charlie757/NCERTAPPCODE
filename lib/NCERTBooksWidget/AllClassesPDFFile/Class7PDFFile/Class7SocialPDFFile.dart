import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7SocialPDFFile extends StatefulWidget {
  const Class7SocialPDFFile({Key key}) : super(key: key);

  @override
  _Class7SocialPDFFileState createState() => _Class7SocialPDFFileState();
}

class _Class7SocialPDFFileState extends State<Class7SocialPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Science"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          Container(
              color: Colors.cyan,
              height: 50,
              alignment: Alignment.center,
              child: Text("Geography (Our Environment)")),
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'Environment'),
          container(width, context, 'Chapter-2', 'Inside Our Earth'),
          container(width, context, 'Chapter-3', 'Our Changing Earth'),
          container(width, context, 'Chapter-4', 'Air'),
          container(width, context, 'Chapter-5', 'Water'),
          container(
              width, context, 'Chapter-6', 'Natural Vegetation and Wildlife'),
          container(width, context, 'Chapter-7',
              'Human-Environment – Settlement, Transport and Communication'),
          container(width, context, 'Chapter-8',
              'Human-Environment Interactions – The Tropical and the Subtropical Region'),
          container(width, context, 'Chapter-9', 'Life in the Deserts'),
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
