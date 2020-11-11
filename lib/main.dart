import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Ball(),
    theme: ThemeData(
      fontFamily: "Jost",
    ),
  ));
}

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text(
          "Ask Me Anything",
        ),
      ),
      body: magic_ball(),
    );
  }
}

class magic_ball extends StatefulWidget {
  @override
  _magic_ballState createState() => _magic_ballState();
}

class _magic_ballState extends State<magic_ball> {
  int ballNum=1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: (){
        setState(() {
          ballNum= Random().nextInt(5)+1;
        });
        print(ballNum);
      },
      child: Container(
        child: Image.asset("assets/images/ball$ballNum.png"),
      ),
    ));
  }
}
