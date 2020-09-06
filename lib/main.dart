import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 3;

  void changeDiceNum() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.red,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Roll a dice, settle a score!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
          Row(children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDiceNum();
                },
                child: Image.asset('images/dice$leftDiceNum.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDiceNum();
                },
                child: Image.asset('images/dice$rightDiceNum.png'),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
