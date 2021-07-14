import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class10BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class11BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class12BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class6BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class7BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class8BooksNotes.dart';
import 'package:ncertapp/NCERTNotesWidget/AllClassesBooksNotesWid3/Class9BooksNotes.dart';

class ClassName2 extends StatefulWidget {
  const ClassName2({Key key}) : super(key: key);

  @override
  _ClassName2State createState() => _ClassName2State();
}

class _ClassName2State extends State<ClassName2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Notes"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          inkwell(width, context, Colors.pink, 'Class XII Notes', '12',
              Class12BooksNotes()),
          inkwell(width, context, Colors.grey, 'Class XI Notes', '11',
              Class11BooksNotes()),
          inkwell(width, context, Colors.orange, 'Class X Notes', '10',
              Class10BooksNotes()),
          inkwell(width, context, Colors.pinkAccent, 'Class IX Notes', '9',
              Class9BooksNotes()),
          inkwell(width, context, Colors.yellow, 'Class VIII Notes', '8',
              Class8BooksNotes()),
          inkwell(width, context, Colors.cyan, 'Class VII Notes', '7',
              Class7BooksNotes()),
          inkwell(width, context, Colors.blue, 'Class VI Notes', '6',
              Class6BooksNotes()),
        ],
      ),
    );
  }

  InkWell inkwell(double width, BuildContext context, Color color, String name,
      String number, route) {
    return InkWell(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 25,
              child: Text(number),
            ),
            Text(name),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
