// ignore_for_file: must_be_immutable

import 'package:card_trading_game_app/src/constants/colors.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

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
        horizontal: AppSizer.getWidth(context, 5),
        vertical: AppSizer.getHeight(context, 8),
      ),
      decoration: BoxDecoration(
          gradient: AppColors.buttonGradient,
          borderRadius: BorderRadius.circular(buttonRadius)),
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
    );
  }
}
