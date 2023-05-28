import 'package:flutter/material.dart';
import 'package:roll_dice/rainbow_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 25, 25),
        body:
         RainbowContainer(
          [
            Color.fromARGB(249, 64, 10, 92),
            Color.fromARGB(250, 72, 29, 107),
           /* Color.fromARGB(252, 4, 62, 98),         
            Color.fromARGB(250, 5, 129, 42),
            Color.fromARGB(249, 149, 186, 12),
            Color.fromARGB(249, 107, 25, 6)*/
          ]
         ),
      ),
    ),
  );
}

//const keyword
//giving dynamically-compile time runtime