import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class BuyThisCardWidget extends StatelessWidget {
  const BuyThisCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 25),
          vertical: AppSizer.getHeight(context, 8),
        ),
        width: 145,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue, // Border color
            width: 1.0, // Border width
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(
              '\$ 0.32',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
            Text(
              'By this card from seller name',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onTertiary,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
