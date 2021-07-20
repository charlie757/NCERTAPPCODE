import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class6HindiPDFFile extends StatefulWidget {
  const Class6HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class6HindiPDFFileState createState() => _Class6HindiPDFFileState();
}

class _Class6HindiPDFFileState extends State<Class6HindiPDFFile> {
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
          container(width, context, 'Chapter-1', 'वह चिड़िया जो'),
          container(width, context, 'Chapter-2', 'बचपन'),
          container(width, context, 'Chapter-3', 'नादान दोस्त'),
          container(width, context, 'Chapter-4', 'चाँद से थोड़ी सी गप्पें'),
          container(width, context, 'Chapter-5', 'अक्षरों का महत्व'),
          container(width, context, 'Chapter-6', 'पार नज़र के'),
          container(width, context, 'Chapter-7', 'साथी हाथ बढ़ाना'),
          container(width, context, 'Chapter-8', 'ऐसे – ऐसे'),
          container(width, context, 'Chapter-9', 'टिकट एल्बम'),
          container(width, context, 'Chapter-10', 'झांसी की रानी'),
          container(width, context, 'Chapter-11', 'जो देखकर भी नहीं देखते'),
          container(width, context, 'Chapter-12', 'संसार पुस्तक है'),
          container(width, context, 'Chapter-13', 'मैं सबसे छोटी होऊं'),
          container(width, context, 'Chapter-14', 'लोकगीत'),
          container(width, context, 'Chapter-15', 'नौकर'),
          container(width, context, 'Chapter-16', 'वन के मार्ग में'),
          container(width, context, 'Chapter-17', 'साँस – साँस में बांस')
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
