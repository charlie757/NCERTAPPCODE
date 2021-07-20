import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7SanskritPDFFile extends StatefulWidget {
  const Class7SanskritPDFFile({Key key}) : super(key: key);

  @override
  _Class7SanskritPDFFileState createState() => _Class7SanskritPDFFileState();
}

class _Class7SanskritPDFFileState extends State<Class7SanskritPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanskrit"),
      ),

      //Show the PDF File by this class and we can add more chatper from here.

      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'सुभाषितानी'),
          container(width, context, 'Chapter-2', 'दुर्बुद्धि विनश्यति'),
          container(width, context, 'Chapter-3', 'स्वावलम्बनम'),
          container(width, context, 'Chapter-4', 'हास्यबालकविसम्मेलनम'),
          container(width, context, 'Chapter-5', 'पण्डिता रमाबाई'),
          container(width, context, 'Chapter-6', 'सदाचार'),
          container(
              width, context, 'Chapter-7', 'संकल्प सिद्धिदायक (धातुप्रयोग )'),
          container(width, context, 'Chapter-8', 'त्रिवर्ण ध्वज'),
          container(width, context, 'Chapter-9', 'विमानायं रचयाम'),
          container(width, context, 'Chapter-10',
              'विश्वबंदुत्वं (करक विभक्ति उपवद विभक्तिश्च)'),
          container(width, context, 'Chapter-11', 'समवाये ही दुर्जय'),
          container(width, context, 'Chapter-12', 'कल्पलतेव विद्या'),
          container(width, context, 'Chapter-13',
              'अमृतं संस्कृतं ( इकारांत स्त्रीलिंग )'),
          container(width, context, 'Chapter-14', 'अनारिकाया जिज्ञासा'),
          container(width, context, 'Chapter-15', 'लालनगीतम'),
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
