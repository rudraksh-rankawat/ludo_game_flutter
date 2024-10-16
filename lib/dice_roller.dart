import 'package:flutter/material.dart';
import 'dart:math';
final randomiser = Random();

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 2;
  var count = 0;


  void rollPress() {
    
    setState(() {
      count++;
      currentDiceRoll = randomiser.nextInt(6) + 1;   
      
      
    });
    
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You rolled: $count',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
            Image.asset(
              'assets/images/dice-images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 60),
            TextButton(
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: rollPress,
              child: const Text('ROLL THE DICEE'),
            ),
          ],
        );
  }
}