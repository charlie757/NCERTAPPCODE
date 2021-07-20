import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class4EVSPDFFile extends StatefulWidget {
  const Class4EVSPDFFile({Key key}) : super(key: key);

  @override
  _Class4EVSPDFFileState createState() => _Class4EVSPDFFileState();
}

class _Class4EVSPDFFileState extends State<Class4EVSPDFFile> {
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
          container(width, context, 'Chapter-1', 'Going to School'),
          container(width, context, 'Chapter-2', 'Ear to Ear'),
          container(width, context, 'Chapter-3', 'A Day with Nandu'),
          container(width, context, 'Chapter-4', 'The Story of Amrita'),
          container(width, context, 'Chapter-5', 'Anita and the Honeybees'),
          container(width, context, 'Chapter-6', 'Omana’s Journey'),
          container(width, context, 'Chapter-7', 'From the Window'),
          container(
              width, context, 'Chapter-8', 'Reaching Grandmother’s House'),
          container(width, context, 'Chapter-9', 'Changing Families'),
          container(width, context, 'Chapter-10', 'Hu Tu Tu, Hu Tu Tu'),
          container(width, context, 'Chapter-11', 'The Valley of Flowers'),
          container(width, context, 'Chapter-12', 'Changing Times'),
          container(width, context, 'Chapter-13', 'A River’s Tale'),
          container(width, context, 'Chapter-14', 'Basva’s Farm'),
          container(width, context, 'Chapter-15', 'From Market to Home'),
          container(width, context, 'Chapter-16', 'A busy Month'),
          container(width, context, 'Chapter-17', 'Nandita in Mumbai'),
          container(
              width, context, 'Chapter-18', 'Too Much Water, Too Little Water'),
          container(width, context, 'Chapter-19', 'Abdul in the Garden'),
          container(width, context, 'Chapter-20', 'Eating Together'),
          container(width, context, 'Chapter-21', 'Food and Fun'),
          container(width, context, 'Chapter-22', 'The World in my Home'),
          container(width, context, 'Chapter-23', 'Pochampalli'),
          container(width, context, 'Chapter-24', 'Home and Abroad'),
          container(width, context, 'Chapter-25', 'Spicy Riddles'),
          container(width, context, 'Chapter-26', 'Defence Officer: Wahida'),
          container(width, context, 'Chapter-27', 'Chuskit Goes to School')
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
