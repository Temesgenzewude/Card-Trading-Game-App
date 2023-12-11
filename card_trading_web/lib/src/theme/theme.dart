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
    ),
    secondaryHeaderColor: AppColors.appBarBackgroundColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor);
