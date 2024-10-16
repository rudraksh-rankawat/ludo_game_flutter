import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/custom_text_try.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});
  

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 48, 4, 4),
            Color.fromARGB(255, 35, 63, 135),
            Color.fromARGB(255, 91, 24, 24),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
