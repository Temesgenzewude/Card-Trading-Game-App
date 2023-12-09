// ignore_for_file: must_be_immutable

import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class InnerCardWidget extends StatelessWidget {
  InnerCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  String imageUrl;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizer.getWidth(context, 19),
        vertical: AppSizer.getHeight(context, 12),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(0, 0),
            blurRadius: 1,
            // spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(imageUrl),
          ),
          SizedBox(
            width: AppSizer.getWidth(context, 10),
          ),
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 13),
          )
        ],
      ),
    );
  }
}
