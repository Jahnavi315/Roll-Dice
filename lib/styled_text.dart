import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  //StyledText(String s,{super.key}):classString=s;
  //this can be a const
  const StyledText(this.text,{super.key});
  final String text;//since we dont change, just accept the input
  @override
  Widget build(context){
    //this still cant be a const?
    return Text(
          text,
          style: const TextStyle(
                color:  Color.fromARGB(255, 133, 212, 228),
                fontSize: 75,
                fontWeight: FontWeight.bold,
                ),
          );
  }
}