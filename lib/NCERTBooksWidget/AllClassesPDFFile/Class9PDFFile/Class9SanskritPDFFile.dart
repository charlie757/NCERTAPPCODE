import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class9SanskritPDFFile extends StatefulWidget {
  const Class9SanskritPDFFile({Key key}) : super(key: key);

  @override
  _Class9SanskritPDFFileState createState() => _Class9SanskritPDFFileState();
}

class _Class9SanskritPDFFileState extends State<Class9SanskritPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanskrit"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'भारतीवसन्तगीतिः'),
          container(width, context, 'Chapter-2', 'स्वर्णकाकः'),
          container(width, context, 'Chapter-3', 'सोमप्रभम्'),
          container(width, context, 'Chapter-4', 'कल्पतरूः'),
          container(width, context, 'Chapter-5', 'सूक्तिमौक्तिकम्'),
          container(width, context, 'Chapter-6', 'भ्रान्तो बालः'),
          container(width, context, 'Chapter-7', 'प्रत्यभिग्यानम्'),
          container(width, context, 'Chapter-8', 'लौहतुला'),
          container(width, context, 'Chapter-9', 'सिकतासेतुः'),
          container(width, context, 'Chapter-10', 'जटायोः शौर्यम्'),
          container(width, context, 'Chapter-11', 'पर्यावरणम्'),
          container(width, context, 'Chapter-12 ', 'वाडमनःप्राणस्वरूपम्')
        ],
      ),
    );
  }

  InkWell container(width, BuildContext context, String number, String name) {
    return InkWell(
        child: Container(
            height: 80,
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
