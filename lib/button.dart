import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Color buttonColor;

  const Button({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.textColor = const Color.fromRGBO(100, 100, 100, 1),
    this.buttonColor = const Color.fromRGBO(245, 249, 248, 1),
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Someone wanna see more");
      },
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        // fixedSize: const Size(130, 0),
      ),

      child: Text(
        text,
        style: TextStyle(
          color: textColor, 
          fontSize: fontSize,
        ),
      ),
    );
  }
}
