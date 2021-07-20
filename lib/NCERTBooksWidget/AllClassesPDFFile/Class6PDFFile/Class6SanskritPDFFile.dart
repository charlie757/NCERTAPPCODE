import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class6SanskritPDFFile extends StatefulWidget {
  const Class6SanskritPDFFile({Key key}) : super(key: key);

  @override
  _Class6SanskritPDFFileState createState() => _Class6SanskritPDFFileState();
}

class _Class6SanskritPDFFileState extends State<Class6SanskritPDFFile> {
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
          container(width, context, 'Chapter-1', 'शब्दपरिचयः I'),
          container(width, context, 'Chapter-2', 'शब्दपरिचयः II'),
          container(width, context, 'Chapter-3', 'शब्दपरिचयः III'),
          container(width, context, 'Chapter-4', 'विद्यालयः'),
          container(width, context, 'Chapter-5', 'वृक्षाः'),
          container(width, context, 'Chapter-6', 'समुद्रतटः'),
          container(width, context, 'Chapter-7', 'बकस्य प्रतीकारः'),
          container(width, context, 'Chapter-8', 'सूक्तिस्तबकः'),
          container(width, context, 'Chapter-9', 'क्रीड़ास्पर्धा'),
          container(width, context, 'Chapter-10', 'कृषिकाः कर्मवीराः'),
          container(width, context, 'Chapter-11', 'पुष्पोत्सवः'),
          container(width, context, 'Chapter-12', 'अध्याय:'),
          container(
              width, context, 'Chapter-13', 'विमानयानं रचयाम्दशमः त्वम् असि'),
          container(width, context, 'Chapter-14', 'अहह अाः च'),
          container(width, context, 'Chapter-15', 'मातुल चंद्र')
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
