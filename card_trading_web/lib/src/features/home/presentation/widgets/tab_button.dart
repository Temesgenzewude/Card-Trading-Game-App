

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_convertor.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.buttonName,
    required this.buttonRadius,
  });

  String buttonName;
  double buttonRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 30),
          vertical: AppSizer.getHeight(context, 20),
        ),
        decoration: BoxDecoration(
            gradient: AppColors.buttonGradient,
            borderRadius: BorderRadius.circular(buttonRadius)),
        child: Text(
          buttonName,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
