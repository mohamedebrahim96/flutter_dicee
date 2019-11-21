import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(backgroundColor: Colors.red,
  ),
  body: MyDicee(),
),));
class MyDicee extends StatefulWidget {
  @override
  _MyDiceeState createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  _changeRandomNumbers(){
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
      leftDicenumber = Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                setState(() {
                  _changeRandomNumbers();
                });
                  print("Left button is clicked: $leftDicenumber");
                },
                child: Image.asset("images/dice_$leftDicenumber.png"),),
            )
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(child: Image.asset("images/dice_$rightDicenumber.png"),
              onPressed: () {
              setState(() {
                _changeRandomNumbers();
              });
                print("Right button is clicked");
              },),
          )
          ,),
      ],),
    );
  }
}
