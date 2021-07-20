import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class4HindiPDFFile extends StatefulWidget {
  const Class4HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class4HindiPDFFileState createState() => _Class4HindiPDFFileState();
}

class _Class4HindiPDFFileState extends State<Class4HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'मन के भोले-भाले बादल'),
          container(width, context, 'Chapter-2', 'जैसा सवाल वैसा जवाब '),
          container(width, context, 'Chapter-3', 'किरमिच की गेंद'),
          container(width, context, 'Chapter-4', 'पापा जब बच्चे थे'),
          container(width, context, 'Chapter-5', 'दोस्त की पोशाक'),
          container(width, context, 'Chapter-6', 'नाव बनाओ नाव बनाओ'),
          container(width, context, 'Chapter-7', 'दान का हिसाब'),
          container(width, context, 'Chapter-8', 'कौन?'),
          container(width, context, 'Chapter-9', 'स्वतंत्रता की ओर'),
          container(width, context, 'Chapter-10', 'थप्प रोटी थप्प दाल'),
          container(width, context, 'Chapter-11', 'पढ़क्‍कू की सूझ'),
          container(width, context, 'Chapter-12', 'सुनीता की पहिया कुर्सी'),
          container(width, context, 'Chapter-13', 'हुदहुद'),
          container(width, context, 'Chapter-14', 'मुफ्त ही मुफ्त'),
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
