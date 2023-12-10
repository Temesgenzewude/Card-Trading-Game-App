import 'package:flutter/material.dart';

import '../constants/colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    tertiary: AppColors.borderColor,
    shadow: AppColors.shadowColor,
  ),
  secondaryHeaderColor: AppColors.appBarBackgroundColor,
);

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: const ColorScheme.dark(
//     primary: AppC
//   ),
// );