import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/size_convertor.dart';

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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
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
                      'View all',
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
