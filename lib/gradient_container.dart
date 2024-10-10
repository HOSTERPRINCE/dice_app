import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(  // Added Center widget for alignment
        child:DiceRoller()
      ),
    );
  }
}
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello world!",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}