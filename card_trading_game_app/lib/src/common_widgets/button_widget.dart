import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/size_convertor.dart';

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
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizer.getWidth(context, 2),
        vertical: AppSizer.getHeight(context, 4),
      ),
      decoration: BoxDecoration(
          gradient: AppColors.buttonGradient,
          borderRadius: BorderRadius.circular(buttonRadius)),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(
            buttonName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
