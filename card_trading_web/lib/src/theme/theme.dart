import 'package:flutter/material.dart';

import '../constants/colors.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      tertiary: AppColors.borderColor,
      shadow: AppColors.shadowColor,
      onTertiary: AppColors.textColor,
      onSurface: const Color.fromARGB(66, 255, 255, 255),
  ),
    secondaryHeaderColor: AppColors.appBarBackgroundColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor);
