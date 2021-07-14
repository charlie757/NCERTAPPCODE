import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class ChemistryPaperPage12 extends StatefulWidget {
  const ChemistryPaperPage12({Key key}) : super(key: key);

  @override
  _ChemistryPaperPage12State createState() => _ChemistryPaperPage12State();
}

class _ChemistryPaperPage12State extends State<ChemistryPaperPage12> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Chemistry(XII)"),
        ),
        body: ListView(
          children: [
            expanded(width, context, '1.', '2020 Board Paper', HomePage()),
            Divider(
              color: Colors.red,
            ),
            expanded(width, context, '2.', '2019 Board Paper', HomePage()),
            Divider(
              color: Colors.yellow,
            ),
            expanded(width, context, '3.', '2018 Board Paper', HomePage()),
            Divider(
              color: Colors.red,
            ),
            expanded(width, context, '4.', '2017 Board Paper', HomePage()),
            Divider(
              color: Colors.yellow,
            ),
          ],
        ));
  }

  Expanded expanded(
      double width, BuildContext context, String number, String title, route) {
    return Expanded(
        child: InkWell(
      child: Card(
          shadowColor: Colors.cyan,
          child: Container(
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(number, style: TextStyle(fontSize: 17)),
                SizedBox(
                  width: 10,
                ),
                Text(title, style: TextStyle(fontSize: 17))
              ],
            ),
          )),
    ));
  }
}
