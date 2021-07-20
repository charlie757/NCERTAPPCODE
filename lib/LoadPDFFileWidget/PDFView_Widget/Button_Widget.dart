import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
      elevation: 10,
      shadowColor: Colors.cyan,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          minimumSize: Size.fromHeight(50),
        ),
        child: Text(text, style: TextStyle(fontSize: 18)),
        onPressed: onClicked,
      ));
}
