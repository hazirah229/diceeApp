import 'dart:math'; //to use Random() generator
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
     home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.blueGrey,
      ),
       body: DicePage(),
     ),
   ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNum = Random().nextInt(6) + 1;
                });
                // print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
