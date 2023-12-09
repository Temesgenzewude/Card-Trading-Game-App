import 'package:flutter/material.dart';

class AppColors {
  static const Color buttonStartColor = Color(0xFF3F2E3E);
  static const Color buttonEndColor = Color(0xFFA78295);

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [buttonStartColor, buttonEndColor],
  );
}
