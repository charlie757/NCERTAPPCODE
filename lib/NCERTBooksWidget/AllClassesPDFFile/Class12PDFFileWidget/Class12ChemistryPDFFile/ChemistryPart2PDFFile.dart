import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class ChemistryPart2PDFFile extends StatefulWidget {
  const ChemistryPart2PDFFile({Key key}) : super(key: key);

  @override
  _ChemistryPart2PDFFileState createState() => _ChemistryPart2PDFFileState();
}

class _ChemistryPart2PDFFileState extends State<ChemistryPart2PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Chemistry-II"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'Coordination Compounds'),
          container(width, context, 'Lesson-2', 'Haloalkanes and Haloarenes'),
          container(
              width, context, 'Lesson-3', 'Alcohols, Phenols, and Ethers'),
          container(width, context, 'Lesson-4',
              'Aldehydes, Ketones,and Carboxylic Acids'),
          container(width, context, 'Lesson-5', 'Amines'),
          container(width, context, 'Lesson-6', 'Biomolecules'),
          container(width, context, 'Lesson-7', 'Polymers'),
          container(width, context, 'Lesson-8', 'Chemistry in Everyday Life')
        ],
      ),
    );
  }

  Expanded container(width, BuildContext context, String number, String name) {
    return Expanded(
        child: Card(
            shadowColor: Colors.cyan,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 5),
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
                SizedBox(
                  height: 10,
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
        color: Colors.cyanAccent,
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
        color: Colors.grey,
        child: Text("Online"),
      ),
    ));
  }
}
