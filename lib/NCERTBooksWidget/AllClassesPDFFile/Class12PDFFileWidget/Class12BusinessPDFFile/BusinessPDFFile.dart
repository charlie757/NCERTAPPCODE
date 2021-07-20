import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class BusinessPDFFile extends StatefulWidget {
  const BusinessPDFFile({Key key}) : super(key: key);

  @override
  _BusinessPDFFileState createState() => _BusinessPDFFileState();
}

class _BusinessPDFFileState extends State<BusinessPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Business"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Nature and Significance of Management'),
          container(width, context, 'Chapter-2', 'Principles of Management'),
          container(width, context, 'Chapter-3', 'Business Environment'),
          container(width, context, 'Chapter-4', 'Planning'),
          container(width, context, 'Chapter-5', 'Organising'),
          container(width, context, 'Chapter-6', 'Staffing'),
          container(width, context, 'Chapter-7', 'Directing'),
          container(width, context, 'Chapter-8', 'Controlling'),
          container(width, context, 'Chapter-9', 'Financial Management'),
          container(width, context, 'Chapter-10', 'Financial Markets'),
          container(width, context, 'Chapter-11', 'Marketing'),
          container(width, context, 'Chapter-12', 'Consumer Protection'),
          container(width, context, 'Chapter-13', 'Entrepreneurship Development'),
          
          ],
      ),
    );
  }

  Container container(width, BuildContext context, String number, String name) {
    return Container(
        height: 70,
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
                    download(width, context, HomePage())
                  ],
                )
              ],
            )));
  }

  Expanded download(double width, BuildContext context, route) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.purple,
        child: Text("download"),
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
