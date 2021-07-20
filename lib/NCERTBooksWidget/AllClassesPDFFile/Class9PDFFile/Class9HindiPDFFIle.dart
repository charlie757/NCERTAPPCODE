import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class9HindiPDFFile extends StatefulWidget {
  const Class9HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class9HindiPDFFileState createState() => _Class9HindiPDFFileState();
}

class _Class9HindiPDFFileState extends State<Class9HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
        // क्षितिज भाग 1
      ),
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              color: Colors.cyan,
              height: 50,
              child: Text("गद्य-खंड")),
          container(width, context, 'Chapter-1', 'दो बैलों की कथा'),
          container(width, context, 'Chapter-2', 'ल्हासा की ओर'),
          container(width, context, 'Chapter-3', 'उपभोक्तावाद की संस्कृति'),
          container(width, context, 'Chapter-4', 'साँवले सपनों की याद'),
          container(width, context, 'Chapter-5',
              'नाना साहब की पुत्री देवी मैना को भस्म कर दिया गया'),
          container(width, context, 'Chapter-6', 'प्रेमचंद के फटे जूते'),
          container(width, context, 'Chapter-7', 'मेरे बचपन के दिन'),
          container(width, context, 'Chapter-8', 'एक कुत्ता और एक मैना'),
          Container(
              alignment: Alignment.center,
              color: Colors.cyan,
              height: 50,
              child: Text("काव्य-खंड")),
          container(width, context, 'Chapter-9', 'साखियाँ एवं सबद'),
          container(width, context, 'Chapter-10', 'वाख'),
          container(width, context, 'Chapter-11', 'सवैये'),
          container(width, context, 'Chapter-12', 'कैदी और कोकिला'),
          container(width, context, 'Chapter-13', 'ग्राम श्री'),
          container(width, context, 'Chapter-14', 'चंद्र गहना से लौटती बेर'),
          container(width, context, 'Chapter-15', 'मेघ आए'),
          container(width, context, 'Chapter-16', 'यमराज की दिशा'),
          container(width, context, 'Chapter-17', 'बच्चे काम पर जा रहे हैं'),
          container(width, context, 'Chapter-6', 'name')
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
