import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallGame(),
      ),
    ),
  );
}

class BallGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
