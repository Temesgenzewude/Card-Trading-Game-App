import 'package:flutter/material.dart';

class AppColors {
  static const Color buttonStartColor = Color(0xFF3F2E3E);
  static const Color buttonEndColor = Color(0xFFA78295);

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [buttonStartColor, buttonEndColor],
  );

  static const Color primaryColor = Color.fromARGB(255, 63, 46, 62);
  static const Color secondaryColor = Colors.white;
  static const Color borderColor = Color.fromARGB(146, 63, 46, 62);
  static Color shadowColor = Colors.black.withOpacity(0.5);
}
