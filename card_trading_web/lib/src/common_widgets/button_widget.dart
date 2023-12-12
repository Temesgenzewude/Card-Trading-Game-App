// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/size_convertor.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.buttonName,
    required this.buttonRadius,
    this.onPressed,
  });

  String buttonName;
  double buttonRadius;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 40),
          vertical: AppSizer.getHeight(context, 5),
        ),
        decoration: BoxDecoration(
            gradient: AppColors.buttonGradient,
            borderRadius: BorderRadius.circular(buttonRadius)),
        child: Text(
          buttonName,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 20),
        ),
      ),
    );
  }
}
