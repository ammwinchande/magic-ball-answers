import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  List ballsList = List();
  Random random = Random();
  String currentBall = 'ball1.png';

  @override
  void initState() {
    super.initState();
    ballsList.addAll(['ball1.png', 'ball2.png', 'ball3.png', 'ball4.png', 'ball5.png']);
  }

  void updateAnswerBall() {
    setState(() {
      currentBall = ballsList[random.nextInt(5) + 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/$currentBall'),
          onPressed: () => updateAnswerBall(),
        ),
      ),
    );
  }
}
