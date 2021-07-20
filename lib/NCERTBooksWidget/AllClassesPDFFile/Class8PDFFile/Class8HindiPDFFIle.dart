import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class8HindiPDFFile extends StatefulWidget {
  const Class8HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class8HindiPDFFileState createState() => _Class8HindiPDFFileState();
}

class _Class8HindiPDFFileState extends State<Class8HindiPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'ध्वनि (कविता)'),
          container(width, context, 'Chapter-2', 'लाख की चूड़ियाँ (कहानी)'),
          container(width, context, 'Chapter-3', 'बस की यात्रा (व्यंग)'),
          container(width, context, 'Chapter-4', 'दीवानों की हस्ती (कविता)'),
          container(
              width, context, 'Chapter-5', 'चिठ्ठियों की अनूठी दुनिया (निबंध)'),
          container(width, context, 'Chapter-6', 'भगवान के डाकिए (कविता)'),
          container(width, context, 'Chapter-7', 'क्या निराश हुआ जाए (निबंध)'),
          container(
              width, context, 'Chapter-8', 'यह सबसे कठिन समय। नहीं (कविता)'),
          container(width, context, 'Chapter-9', 'कबीर की साखियॉं'),
          container(width, context, 'Chapter-10', 'कामचोर (कहानी)'),
          container(width, context, 'Chapter-11', 'जब सिनेमा ने बोलना सीखा'),
          container(width, context, 'Chapter-12', 'सूरदास चरित (कविता)'),
          container(width, context, 'Chapter-13', 'जहाँ पहिया है (रिपोर्ताज)'),
          container(width, context, 'Chapter-14', 'अकबरी लोटा (कहानी)'),
          container(width, context, 'Chapter-15', 'सूर के पद (कविता)'),
          container(width, context, 'Chapter-16', 'पानी की कहानी (निबंध)'),
          container(width, context, 'Chapter-17', 'बाज और साँप (कहानी)'),
          container(width, context, 'Chapter-18', 'टोपी (कहानी)'),
          container(width, context, 'Chapter-1', 'name'),
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
