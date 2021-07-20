import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class Class10SocialPDFFile extends StatefulWidget {
  const Class10SocialPDFFile({Key key}) : super(key: key);

  @override
  _Class10SocialPDFFileState createState() => _Class10SocialPDFFileState();
}

class _Class10SocialPDFFileState extends State<Class10SocialPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Science"),
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Colors.cyan,
            alignment: Alignment.center,
            child: Text("Political Science (Democratic Politics -II)"),
          ),
          container(width, context, 'Chapter-1', 'Power Sharing'),
          container(width, context, 'Chapter-2', 'Federalism'),
          container(width, context, 'Chapter-3', 'Democracy and Diversity'),
          container(width, context, 'Chapter-4', 'Gender, Religion and Caste'),
          container(
              width, context, 'Chapter-5', 'Popular Struggles and Movements'),
          container(width, context, 'Chapter-6', 'Political Parties'),
          container(width, context, 'Chapter-7', 'Outcomes of Democracy'),
          container(width, context, 'Chapter-8', 'Challenges to Democracy'),
        ],
      ),
    );
  }

  InkWell container(width, BuildContext context, String number, String name) {
    return InkWell(
        child: Container(
            height: 80,
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
                  ],
                ))));
  }
}
