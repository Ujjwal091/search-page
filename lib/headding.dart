import 'package:flutter/material.dart';

class Headding extends StatelessWidget {
  final double fontSize;
  final Color color;
  final String text;
  final FontWeight fontWeight;

  const Headding({
    super.key,
    this.fontSize = 16,
    this.color = const Color.fromRGBO(100, 100, 100, 1),
    required this.text,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color, 
        fontSize: fontSize, 
        fontWeight: fontWeight
      ),
    );
  }
}
