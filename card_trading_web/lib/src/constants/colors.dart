import 'package:flutter/material.dart';

class AppColors {
  // Color.fromRGBO(142, 202, 230, 1),
  // Color.fromRGBO(33, 158, 188, 1),
  static const Color buttonStartColor = Color.fromRGBO(142, 202, 230, 1);
  static const Color buttonEndColor = Color.fromRGBO(33, 158, 188, 1);
  static const Color appBarBackgroundColor = Color.fromRGBO(0, 98, 148, 1);

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF8ECAE6), // #8ECAE6 in hexadecimal
      Color(0xFF219EBC), // #219EBC in hexadecimal
    ],
    stops: [0.0, 1.0],
  );

  static const LinearGradient buttonGradientLight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF8ECAE6), // Replace with your desired color value
      Color(0xFF219EBC), // Replace with your desired color value
    ],
  );

  static const Color primaryColor = Color.fromRGBO(0, 98, 148, 1);
  static const Color secondaryColor = Colors.white;
  static const Color borderColor = Color.fromRGBO(33, 158, 188, 1);
  static const Color textColor = Colors.black;
  static Color shadowColor = Colors.black.withOpacity(0.5);

  static const Color darkReddishTextColor = Color(0xFF331D2C);
  static const Color darkPurplishTextColor = Color(0xFF3F2E3E);
  static const Color offWhiteTextColor = Color(0xFFEFE1D1);

  static Color scaffoldBackgroundColor =
      const Color(0xFFF9F3F6).withOpacity(0.4);
  static Color stackedDiscountColor = const Color(0xFF3F2E3E);
  static const Color disabledColor = Color.fromRGBO(161, 159, 159, 0.502);
}
