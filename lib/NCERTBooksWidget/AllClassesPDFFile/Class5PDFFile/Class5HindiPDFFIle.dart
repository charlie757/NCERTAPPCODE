import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class5HindiPDFFile extends StatefulWidget {
  const Class5HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class5HindiPDFFileState createState() => _Class5HindiPDFFileState();
}

class _Class5HindiPDFFileState extends State<Class5HindiPDFFile> {
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
          Container(
            color: Colors.cyan,
            height: 50,
            alignment: Alignment.center,
            child: Text("अपनी-अपनी रंगतें"),
          ),
          container(width, context, 'Introduction', ''),
          container(width, context, 'Chapter-1', 'राख की रस्सी (लोककथा)'),
          container(width, context, 'Chapter-2', 'फसलों के त्योहार (लेख)'),
          container(width, context, 'Chapter-3', 'खिलौनेवाला (कविता)'),
          container(width, context, 'Chapter-4', 'नन्हा फनकार (कहानी)'),
          container(width, context, 'Chapter-5', 'जहाँ चाह वहाँ राह (लेख)'),
          Container(
            color: Colors.cyan,
            height: 50,
            alignment: Alignment.center,
            child: Text("बात का सफ़र"),
          ),
          container(width, context, 'Chapter-6', 'चिट्ठी का सफ़र (लेख)'),
          container(width, context, 'Chapter-7',
              'डाकिए की कहानी, कुँवरसिंह की जुबानी (भेंटवार्ता)'),
          container(width, context, 'Chapter-8',
              'वे दिन भी क्या दिन थे (विज्ञान कथा)'),
          container(width, context, 'Chapter-9', 'एक माँ की बेबसी (कविता)'),
          Container(
            color: Colors.cyan,
            height: 50,
            alignment: Alignment.center,
            child: Text("मजाखटोला"),
          ),
          container(width, context, 'Chapter-10', 'एक दिन की बादशाहत (कहानी)'),
          container(width, context, 'Chapter-11', 'चावल की रोटियाँ (नाटक)'),
          container(width, context, 'Chapter-12', 'गुरु और चेला (कविता)'),
          container(width, context, 'Chapter-13', 'स्वामी की दादी (कहानी)'),
          Container(
            color: Colors.cyan,
            height: 50,
            alignment: Alignment.center,
            child: Text("आस-पास"),
          ),
          container(width, context, 'Chapter-14', 'बाघ आया उस रात (कविता)'),
          container(width, context, 'Chapter-15', 'बिशन की दिलेरी (कहानी)'),
          container(width, context, 'Chapter-16', 'पानी रे पानी (लेख)'),
          container(width, context, 'Chapter-17', 'छोटी-सी हमारी नदी (कविता)'),
          container(
              width, context, 'Chapter-18', 'चुनौती हिमालय की (यात्रा वर्णन)'),
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
