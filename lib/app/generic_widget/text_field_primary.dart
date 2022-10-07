import 'package:flutter/material.dart';
import 'package:open_movie/colors/app_colors.dart';

class TextFieldPrimay extends StatelessWidget {
  String hintText;
  TextInputType? keyboardType;
  Color backgroundColor;
  Color textColor;
  Color hintColor;
  double fontSize;
  double height;
  IconData? prefixIcon;

  TextFieldPrimay({
    required this.hintText,
    this.keyboardType,
    this.backgroundColor = AppColors.layerOnePrimary,
    this.fontSize = 16,
    this.height = 42,
    this.hintColor = AppColors.textLightGray,
    this.textColor = Colors.white,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextField(
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        style: TextStyle(
            color: textColor, fontFamily: 'Ubuntu', fontSize: fontSize),
        decoration: InputDecoration(
            prefixIcon: (prefixIcon != null) ? Icon(prefixIcon) : null,
            hintText: hintText,
            hintStyle: TextStyle(
                color: hintColor, fontFamily: 'Ubuntu', fontSize: fontSize),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: backgroundColor),
      ),
    );
  }
}
