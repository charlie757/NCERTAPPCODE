import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTBooksWidget/LoadPDFFileAllClasses/Class12PChapWisePDF/EnglishPDF/KaliedoscopeBook/Chapter1.dart';

class EnglishPDFFile extends StatefulWidget {
  const EnglishPDFFile({Key key}) : super(key: key);

  @override
  _EnglishPDFFileState createState() => _EnglishPDFFileState();
}

class _EnglishPDFFileState extends State<EnglishPDFFile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Kaliedoscope"),
      ),
      body: ListView(
        children: [
          container(width, context, 'Lesson-1', 'I Sell my Dreams', Chapter1()),
          container(width, context, 'Lesson-2', 'Eveline', Chapter1()),
          container(width, context, 'Lesson-3', 'A Wedding in Brownsville',
              Chapter1()),
          container(width, context, 'Lesson-4', 'Tomorrow', Chapter1()),
          container(width, context, 'Lesson-5', 'One Centimetre', Chapter1()),
          container(width, context, 'Lesson-6', 'A Lecture Upon the Shadow',
              Chapter1()),
          container(width, context, 'Lesson-7', 'Poems by Milton', Chapter1()),
          container(width, context, 'Lesson-8', 'Poems by Blake', Chapter1()),
          container(width, context, 'Lesson-9', 'Kubla Khan', Chapter1()),
          container(width, context, 'Lesson-10', 'Trees', Chapter1()),
          container(width, context, 'Lesson-10', 'The Wild Swans of Coole',
              Chapter1()),
          container(
              width, context, 'Lesson-11', 'Time and Time Again', Chapter1()),
          container(width, context, 'Lesson-12', 'Blood', Chapter1()),
          container(width, context, 'Lesson-13', 'Freedom', Chapter1()),
          container(
              width, context, 'Lesson-14', 'The Mark on the Wall', Chapter1()),
          container(width, context, 'Lesson-15', 'Film-making', Chapter1()),
          container(
              width, context, 'Lesson-16', 'Why the Novel Matters', Chapter1()),
          container(width, context, 'Lesson-17', 'The Argumentative Indian',
              Chapter1()),
          container(
              width, context, 'Lesson-18', 'On Science Fiction', Chapter1()),
          container(width, context, 'Lesson-19', 'Chandalika', Chapter1()),
          container(width, context, 'Lesson-20', 'Broken', Chapter1()),
        ],
      ),
    );
  }

  InkWell container(
      width, BuildContext context, String number, String name, route) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
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

//   Expanded offline(double width, BuildContext context, route) {
//     return Expanded(
//         child: InkWell(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) => route));
//       },
//       child: Container(
//         alignment: Alignment.center,
//         height: 20,
//         color: Colors.purple,
//         child: Text("Offline"),
//       ),
//     ));
//   }

//   Expanded online(double width, BuildContext context, route1) {
//     return Expanded(
//         child: InkWell(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => route1));
//       },
//       child: Container(
//         alignment: Alignment.center,
//         height: 20,
//         color: Colors.orange,
//         child: Text("Online"),
//       ),
//     ));
//   }
}
