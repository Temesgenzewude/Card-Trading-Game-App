import 'package:card_trading_game_app/src/constants/icons.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: AppSizer.getWidth(context, 87),
          // height: AppSizer.getHeight(context, 121),
          fit: BoxFit.contain,
          image: const AssetImage(
            'assets/images/image14.png',
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppIcons.yellowStar,
            AppIcons.yellowStar,
            AppIcons.yellowStar,
            AppIcons.yellowStar,
            AppIcons.yellowStar,
            Text(
              '(512)',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        const Text(
          'Card Name',
          style: TextStyle(fontSize: 12),
        ),
        const Text(
          '\$0.85',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
