import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppColors {
  //General
  static const Color primary = Color(0xF9C22E);
  static Color primary20 = Color(0xF9C22E).withOpacity(0.2);

  //Layers
  static const Color background = Color(0x0B0B0B);
  static const Color layerOnePrimary = Color(0x171717);

  //Text
  static const Color textPrimay = Color(0xF9C22E);
  static const Color textWight = Color(0xFFFFFF);
  static const Color textLightGray = Color(0x4E4E4E);

  //Buttons
  static const Color buttonPrimary = Color(0xF9C22E);
  static Color buttonPrimaryBorder = Color(0xF9C22E).withOpacity(0.2);

  // bool isDarkMode() {
  //   // mode
  //   var brightness = SchedulerBinding.instance!.window.platformBrightness;
  //   bool isDarkMode = brightness == Brightness.dark;
  //   return isDarkMode;
  // }
}
