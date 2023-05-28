import 'dart:math';
import 'package:flutter/material.dart';

//widget class
class DiceRoller extends StatefulWidget{
  //this can be const but the _DiceRollerState class const. cant be const 
  //as that is the one that changes
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//state class
class _DiceRollerState extends State<DiceRoller>{
  //no need of adding explicit constructor
  var currentDice=1;
  //to avoid redundant storage and deletion in memory,
  //since each time rollDice executes a new Random() obj would be created discarding the old one
  //but this way only 1 obj of Random and generate 0-6 rnos with that obj itself
  final randomObj=Random();

  void rollDice() {
    //this tells flutter to execute build method again and check for updates give
    setState(
      //anonymous function
      () {
      currentDice=randomObj.nextInt(6) +1;
      }
    );
    print('rollDice executed...');
  }
  @override
  Widget build(context) {
    return Column(
          //whats this?
          //mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          //max is default
          children: [
            Image.asset(
              'assets/images/Alea_$currentDice.png',
              //width: 400,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //text clr is foreground clr
                foregroundColor: Colors.white,
                //padding: const EdgeInsets.all(40),
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Roll the Dice'),
            ),
          ],
        );
  }
}