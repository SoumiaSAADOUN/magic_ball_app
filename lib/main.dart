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
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: (){
        print("pressed");
      },
      child: Container(
        child: Image.asset("assets/images/ball1.png"),
      ),
    ));
  }
}
