import 'package:card_trading_game_app/src/constants/colors.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardNameWidget extends StatelessWidget {
  CardNameWidget(
      {super.key,
      required this.primaryTitile,
      this.secondaryTitle,
      required this.width});

  String primaryTitile;
  String? secondaryTitle;
  double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        width: AppSizer.getWidth(context, width),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 20),
          vertical: AppSizer.getHeight(context, 28),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              primaryTitile,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            secondaryTitle != null
                ? Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
