import 'package:flutter/material.dart';
import 'package:test_task/colorMaker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _changeablePageColor;
  ColorMaker _colorMaker = new ColorMaker();

  @override
  void initState() {
    _changeablePageColor = _colorMaker.getRandomColor();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setRandomHomePageColor() {
    setState(() {
      _changeablePageColor = _colorMaker.getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: setRandomHomePageColor,
        child: Container(
          color: _changeablePageColor,
          child: Center(
            child: Text(
              "Hey there",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
      ),
    );
  }
}
