import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

class PhysicsPart2PDFFile extends StatefulWidget {
  const PhysicsPart2PDFFile({Key key}) : super(key: key);

  @override
  _PhysicsPart2PDFFileState createState() => _PhysicsPart2PDFFileState();
}

class _PhysicsPart2PDFFileState extends State<PhysicsPart2PDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Physics-II"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'Electromagnetic Waves'),
          container(
              width, context, 'Lesson-2', 'Ray Optocs and Optical Instruments'),
          container(width, context, 'Lesson-3', 'Wave Optics'),
          container(width, context, 'Lesson-4',
              'Dual Nature of Radiation and Matter'),
          container(width, context, 'Lesson-5', 'Atoms'),
          container(width, context, 'Lesson-6', 'Nuslei'),
          container(width, context, 'Lesson-7',
              'Semiconductor Electronic Material, Devices And Simple Circuits'),
          container(width, context, 'Lesson-8', 'Communication Systems')
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
                SizedBox(
                  height: 5,
                ),
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
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    online(width, context, HomePage()),
                    SizedBox(
                      width: 10,
                    ),
                    offline(width, context, HomePage()),
                    SizedBox(
                      height: 5,
                    ),
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
        color: Colors.teal,
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
        color: Colors.blue,
        child: Text("Online"),
      ),
    ));
  }
}
