import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Center(
          child: Text(
            "Ball 8",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int numBola = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              setState(() {
                numBola = (Random().nextInt(5)) + 1;
              });
            },
            child: Image.asset('images/ball$numBola.png'),
          ),
        ),
      ),
    );
  }
}
