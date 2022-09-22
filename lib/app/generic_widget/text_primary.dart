import 'package:flutter/material.dart';

class TextPrimary extends StatelessWidget {

String text;
 Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      'text',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'Ubuntu',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          height: 1),
      textAlign: TextAlign.start,
    );
  }
}
