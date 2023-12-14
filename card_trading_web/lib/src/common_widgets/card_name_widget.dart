// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardNameWidget extends StatelessWidget {
  CardNameWidget({
    super.key,
    required this.primaryTitile,
    this.secondaryTitle,
    required this.width,
    this.isCenter,
    this.verticalPadding,
  });

  String primaryTitile;
  String? secondaryTitle;
  double width;
  bool? isCenter;
  double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.transparent,
      child: Container(
        width: AppSizer.getWidth(context, width),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 24),
          vertical: AppSizer.getHeight(context, verticalPadding ?? 20),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          gradient: AppColors.buttonGradient,
          boxShadow: [boxShadow()],
        ),
        child: Row(
          mainAxisAlignment: isCenter == null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                primaryTitile,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            secondaryTitle != null
                ? Flexible(
                    child: Text(
                      secondaryTitle!,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
