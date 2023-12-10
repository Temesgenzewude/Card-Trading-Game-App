import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class ParagraphWidget extends StatelessWidget {
  const ParagraphWidget({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppSizer.getHeight(context, 20),
        horizontal: AppSizer.getWidth(context, 0)
      ),
      child:  Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black
            ),
          )
    );
  }
}