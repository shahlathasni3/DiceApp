import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}




class DicePage extends StatefulWidget {
  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red.shade900,
              ),
              onPressed: (){
                setState(() {
                  print(' $diceNumber Button Pressed');
                  diceNumber = Random().nextInt(6)+1;
                });


              },
              child: Image(
                image: AssetImage('images/dice$diceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
