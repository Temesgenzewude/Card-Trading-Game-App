import 'package:flutter/material.dart';

class AppSizer {
  const AppSizer();

  static double getWidth(context, width) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (width * screenWidth) / 1280;
  }

  static double getHeight(context, height) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (height * screenHeight) / 1416;
  }
}
