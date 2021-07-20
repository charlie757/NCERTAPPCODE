import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class8SanskritPDFFile extends StatefulWidget {
  const Class8SanskritPDFFile({Key key}) : super(key: key);

  @override
  _Class8SanskritPDFFileState createState() => _Class8SanskritPDFFileState();
}

class _Class8SanskritPDFFileState extends State<Class8SanskritPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanskrit"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'सुभाषितानि'),
          container(
              width, context, 'Chapter-2', 'बिलस्य वाणी न कदापि मे श्रुता'),
          container(width, context, 'Chapter-3', 'डिजीभारतम'),
          container(width, context, 'Chapter-4', 'सदैव पुरतो निधेहि चरणम'),
          container(width, context, 'Chapter-5', 'कण्टकेनैव कण्टकम'),
          container(width, context, 'Chapter-6', 'गृहं शून्यं सुतां विना'),
          container(width, context, 'Chapter-7', 'भारतजनताहम'),
          container(width, context, 'Chapter-8', 'संसारसागरस्य नायकाः'),
          container(width, context, 'Chapter-9', 'सप्तभगिन्यः'),
          container(width, context, 'Chapter-10', 'नीतिनवनीतं'),
          container(width, context, 'Chapter-11', 'सावित्री बाई फुले'),
          container(width, context, 'Chapter-12', 'कः रक्षति कः रक्षितः'),
          container(
              width, context, 'Chapter-13', 'क्षितौ राजते भारतस्वर्णभूमिः'),
          container(width, context, 'Chapter-14', 'आर्यभटः'),
          container(width, context, 'Chapter-15', 'प्रहेलिकाः'),
          container(width, context, 'Chapter-6', 'name')
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
