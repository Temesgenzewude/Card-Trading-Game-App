import 'package:card_trading_game_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    tertiary: AppColors.borderColor,
    shadow: AppColors.shadowColor,
  ),
);

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: const ColorScheme.dark(
//     primary: AppC
//   ),
// );