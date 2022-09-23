import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../colors/app_colors.dart';

class ButtonPrimary extends StatelessWidget {
  String title;
  Function onClick;

  Color color;
  Color borderColor;
  double height;
  double? width;

  double fontSize;
  FontWeight fontWeight;
  Color fontColor;

  ButtonPrimary({
    required this.title,
    required this.onClick,
    this.color = AppColors.buttonPrimary,
    this.borderColor = AppColors.buttonPrimaryBorder,
    this.height = 50,
    this.width,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.fontColor = AppColors.textWight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(
            width: 2.0,
            color: borderColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
        ),
        onPressed: () {
          print(title + 'button is clicked');
          onClick();
        },
        child: Text(
          title,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
