import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: CustomTile()
        ),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  @override
  CustomTileState createState() => CustomTileState();
}

Color randomColorGenerator() {
  final rnd = math.Random();
  return Color(rnd.nextInt(0xffffffff));
}

class CustomTileState extends State<CustomTile> {
  Color color;

  @override
  void initState() {
    super.initState();
    color = randomColorGenerator();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: new Center(
            child: new Text('Hey there', textAlign: TextAlign.center)),
        onTap: () {
          setState(() {
            color = randomColorGenerator();
          });
        },
      ),
    );
  }
}


