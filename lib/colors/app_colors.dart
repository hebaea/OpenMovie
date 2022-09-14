import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppColors {
  //General
  static const Color primary = Color(0xffF9C22E);
  static Color primary20 = Color(0xff44391C);

  //Layers
  static const Color background = Color(0xff0B0B0B);
  static const Color layerOnePrimary = Color(0xff171717);

  //Text
  static const Color textAppPrimay = Color(0xffF9C22E);
  static const Color textWight = Color(0xffFFFFFF);
  static const Color textLightGray = Color(0xff4E4E4E);

  //Buttons
  static const Color buttonPrimary = Color(0xffF9C22E);
  static Color buttonPrimaryBorder = Color(0xff44391C);

  // bool isDarkMode() {
  //   // mode
  //   var brightness = SchedulerBinding.instance!.window.platformBrightness;
  //   bool isDarkMode = brightness == Brightness.dark;
  //   return isDarkMode;
  // }
}
