import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var LeftDiceNumber = 5;
    var RightDiceNumber = 3;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              print('left button got pressed');
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          )),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$RightDiceNumber.png'),
              onPressed: () {
                print('Right button got pressed');
              },
            ),
          )
        ],
      ),
    );
  }
}
