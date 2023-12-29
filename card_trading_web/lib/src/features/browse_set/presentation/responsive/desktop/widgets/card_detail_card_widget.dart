import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardDetailCardWidget extends StatelessWidget {
  const CardDetailCardWidget({
    super.key,
    required this.cardName,
    required this.cardSubTitle,
    required this.cardTitle,
  });

  final String cardName;
  final String cardTitle;
  final String cardSubTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 10,
          color: Colors.transparent,
          child: Container(
            width: AppSizer.getWidth(context, 103),
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 14),
              vertical: 10,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    cardName,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'InterBold',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: AppSizer.getWidth(context, 103),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'InterBold',
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                cardSubTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'InterMedium',
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
