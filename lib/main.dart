import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blueAccent.shade700,
          ),
          body: MagicGame(),
        ),
      ),
    );

class MagicGame extends StatefulWidget {
  @override
  _MagicGameState createState() => _MagicGameState();
}

void pressButton() {
  ballNumber = Random().nextInt(5) + 1;
}

int ballNumber = 0;

class _MagicGameState extends State<MagicGame> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressButton();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
