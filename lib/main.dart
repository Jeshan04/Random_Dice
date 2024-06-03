import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: const Text(
            'Random Dice',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNum = Random().nextInt(6)+1;
  int rightNum = Random().nextInt(6)+1;

  void rnd(){
    setState(() {
      rightNum =  Random().nextInt(6)+1;
      leftNum = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              rnd();
            },
            child: Image.asset('images/dice$leftNum.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              rnd();
            },
            child: Image.asset('images/dice$rightNum.png'),
          ),
        )
      ]),
    );
  }
}

