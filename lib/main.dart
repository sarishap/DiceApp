import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceImg = 5;
  int secondDiceImg = 5;

  void changeDiceNumber() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
      secondDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDiceNumber();
                },
                child: Image.asset("images/dice$firstDiceImg.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDiceNumber();
                },
                child: Image.asset("images/dice$secondDiceImg.png")),
          ),
        ],
      ),
    );
  }
}
