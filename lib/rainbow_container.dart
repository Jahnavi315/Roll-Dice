import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice.dart';
//import 'package:third_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class RainbowContainer extends StatelessWidget {
  //if rainbowColors passed as a named parameter, 'required' keyword is needed
  //since List<Color> cant be null but a named para can be null!
  const RainbowContainer(this.rainbowColors, {super.key});
  final List<Color> rainbowColors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: rainbowColors,
          // list is can be modified even though its final
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}