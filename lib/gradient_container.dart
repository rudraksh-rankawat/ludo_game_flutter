import 'package:flutter/material.dart';
import 'package:first_app/custom_text_try.dart';

class GradientContainer extends StatelessWidget {

  GradientContainer({super.key});
  var activeDiceImage = 'assets/images/dice-images/dice-6.png';
  var count = 0;
  void rollPress() {
    activeDiceImage = 'assets/images/dice-images/dice-1.png';
    count++;
    print('asdsafd ${count}');
  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
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
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
