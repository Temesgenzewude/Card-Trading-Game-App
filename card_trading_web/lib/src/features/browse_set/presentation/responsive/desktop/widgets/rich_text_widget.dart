import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  RichTextWidget({
    super.key,
    required this.boldText,
    required this.regularText,
  });
  String boldText;
  String regularText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppSizer.getHeight(context, 15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$boldText:  ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            TextSpan(
              text: regularText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
