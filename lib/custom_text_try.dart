import 'package:flutter/material.dart';

class CustomTextTry extends StatelessWidget{
  const  CustomTextTry(this.text ,{super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 243, 239, 239),
        fontSize: 28,
        // fontFamily: String.fromEnvironment();
      ),
    );
  }
}