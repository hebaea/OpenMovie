import 'package:flutter/material.dart';
import 'package:open_movie/colors/app_colors.dart';

class TextPrimary extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  TextAlign align;

  TextPrimary({
    required this.text,
    this.color = AppColors.textWight,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.align = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'Ubuntu',
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: 1),
      textAlign: align,
    );
  }
}
