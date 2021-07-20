import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class7HindiPDFFile extends StatefulWidget {
  const Class7HindiPDFFile({Key key}) : super(key: key);

  @override
  _Class7HindiPDFFileState createState() => _Class7HindiPDFFileState();
}

class _Class7HindiPDFFileState extends State<Class7HindiPDFFile> {
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
          container(
              width, context, 'Chapter-1', 'हम पंछी उन्मुक्त गगन के (कविता)'),
          container(width, context, 'Chapter-2', 'दादी माँ (कहानी)'),
          container(width, context, 'Chapter-3', 'हिमालय की बेटियाँ (निबंध)'),
          container(width, context, 'Chapter-4', 'कठपुतली (कविता)'),
          container(width, context, 'Chapter-5', 'मिठाईवाला (कहानी)'),
          container(width, context, 'Chapter-6', 'रक्त और हमारा शरीर (निबंध)'),
          container(width, context, 'Chapter-7', 'पापा खो गए (नाटक)'),
          container(width, context, 'Chapter-8', 'शाम – एक किसान (कविता)'),
          container(width, context, 'Chapter-9', 'चिड़िया की बच्ची (कहानी)'),
          container(width, context, 'Chapter-10', 'अपूर्व अनुभव (संस्मरण)'),
          container(width, context, 'Chapter-11', 'रहीम के दोहे (कविता)'),
          container(width, context, 'Chapter-12', 'कंचा (कहानी)'),
          container(width, context, 'Chapter-13', 'एक तिनका (कविता)'),
          container(
              width, context, 'Chapter-14', 'खानपान की बदलती तसवीर (निबंध)'),
          container(width, context, 'Chapter-15', 'नीलकंठ (रेखाचित्र)'),
          container(width, context, 'Chapter-16', 'भोर और बरखा (कविता)'),
          container(width, context, 'Chapter-16', 'वीर कुवँर सिंह (जीवनी)'),
          container(width, context, 'Chapter-16',
              ' संघर्ष के कारन मैं तुनकमिज़ाज हो गया: धनराज (साक्षात्कार)')
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
