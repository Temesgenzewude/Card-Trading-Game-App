import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  const TextWidget({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizer.getWidth(context, 0),
        vertical: AppSizer.getHeight(context, 8),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 4),
              child:  Text(
                '.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0, // Adjust the font size as needed
                ),
              ),
            ),

           Text(
            text.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 20.0,  
            ),
      ),
          ],
        ),
    );
  }
}