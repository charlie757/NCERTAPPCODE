import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/LoadPDFFileWidget/Chapter1PDF.dart';

class BiologyPDFFile extends StatefulWidget {
  const BiologyPDFFile({Key key}) : super(key: key);

  @override
  _BiologyPDFFileState createState() => _BiologyPDFFileState();
}

class _BiologyPDFFileState extends State<BiologyPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biology"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Chapter-1', 'Reproduction in Organisms'),
          container(width, context, 'Chapter-2',
              'Sexual Reproduction in Flowering Plants'),
          container(width, context, 'Chapter-3', 'Human Reproduction'),
          container(width, context, 'Chapter-4', 'Reproductive Health'),
          container(width, context, 'Chapter-5',
              'Principles of Inheritance and Variation'),
          container(
              width, context, 'Chapter-6', 'Molecular Basis of Inheritance'),
          container(width, context, 'Chapter-7', 'Evolution'),
          container(width, context, 'Chapter-8', 'Human Health and Disease'),
          container(width, context, 'Chapter-9',
              'Strategies for Enhancement in Food Reproduction'),
          container(width, context, 'Chapter-10',
              'Microbes in Human Welfare Solutions'),
          container(width, context, 'Chapter-11',
              'Biotechnology: Principles and Processes'),
          container(width, context, 'Chapter-12',
              'Biotechnology and its Applications'),
          container(width, context, 'Chapter-13', 'Organisms and Populations'),
          container(width, context, 'Chapter-14', 'Ecosystems Solutions'),
          container(
              width, context, 'Chapter-15', 'Biodiversity and Conservation'),
          container(width, context, 'Chapter-16', 'Environmental Issues')
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
                      style: TextStyle(fontSize: 14),
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
                    download(width, context, Chapter1())
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
