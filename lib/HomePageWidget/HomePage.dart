import 'package:flutter/material.dart';
import 'package:ncertapp/HomePageWidget/MyDrawer.dart';
import 'package:ncertapp/NCERTBooksWidget/ClassNamewidget/ClassName.dart';
import 'package:ncertapp/ThemeWidget/ChangeThemeButton%20Widget.dart';
import 'package:ncertapp/NCERSolutionWidget/ClassNameWidget2/ClassName1.dart';
import 'package:ncertapp/AllClassesVideoWidget/ClassNameWidget/ClassName4.dart';
import 'package:ncertapp/CBSEPaperWidget/ClassNameWidget2/ClassName6.dart';
import 'package:ncertapp/NCERTIMportantQuestionWidget/ClassNameWidget2/ClassName3.dart';
import 'package:ncertapp/NCERTImportantMCQWidget/ClassNameWidget2/ClassName5.dart';
import 'package:ncertapp/NCERTNotesWidget/ClassNameWidget2/ClassName2.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // Used the Animation Controller
  Animation animation, delayedAnimation, muchdelayedAnimation, childAnimation;
  AnimationController animationController;

  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    super.initState();

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    muchdelayedAnimation = Tween(begin: -1, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("NCERT"),
              actions: [
                IconButton(icon: Icon(Icons.share), onPressed: () {}),
                ChangeThemeButtonWidget(),
              ],
            ),
            drawer: MyDrawer(),
            body: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                myTransform1(width, context, 'assets/images/book4.jpg',
                    'NCERT Books', ClassName()),
                myTransform(width, context, 'assets/images/book2.jpg',
                    'NCERT Solution', ClassName1()),
                myTransform1(width, context, 'assets/images/book2.jpg',
                    'NCERT Notes', ClassName2()),
                myTransform1(width, context, 'assets/images/info.png',
                    'NCERT Important Question', ClassName3()),
                myTransform(width, context, 'assets/images/video.jpg',
                    'All Classes Video', ClassName4()),
                myTransform(width, context, 'assets/images/NSO.jpg',
                    'NCERT Important MCQ', ClassName5()),
                myTransform1(width, context, 'assets/images/previous.jpg',
                    'CBSE Paper', ClassName6()),
              ],
            ),
          );
        });
  }

  Transform myTransform(
    double width,
    BuildContext context,
    String img,
    String text,
    route,
  ) {
    return Transform(
        transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    img,
                    width: 80,
                    height: 80,
                  ),
                  Text(text),
                ],
              ),
            )));
  }

  Transform myTransform1(
    double width,
    BuildContext context,
    String img,
    String text,
    route,
  ) {
    return Transform(
        transform:
            Matrix4.translationValues(delayedAnimation.value * width, 0.0, 0.0),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    img,
                    width: 80,
                    height: 80,
                  ),
                  Text(text),
                ],
              ),
            )));

    //  return Transform(
    //       transform: Matrix4.translationValues(
    //           muchdelayedAnimation.value * width, 0.0, 0.0),
  }
}
