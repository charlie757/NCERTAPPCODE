import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class EnglishPaperPage10 extends StatefulWidget {
  const EnglishPaperPage10({Key key}) : super(key: key);

  @override
  _EnglishPaperPage10State createState() => _EnglishPaperPage10State();
}

class _EnglishPaperPage10State extends State<EnglishPaperPage10> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("English(X)"),
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
