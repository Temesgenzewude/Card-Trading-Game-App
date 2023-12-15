import 'package:card_trading_web/src/constants/icons.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: AppSizer.getWidth(context, 87),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: AppSizer.getWidth(context, 87),
                  // height: AppSizer.getHeight(context, 121),
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/images/image3.png',
                  ),
                ),
                Row(
                  children: [
                    AppIcons.yellowStar,
                    AppIcons.yellowStar,
                    AppIcons.yellowStar,
                    AppIcons.yellowStar,
                    AppIcons.yellowStar,
                    Text(
                      '(512)',
                      style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                Text(
                  'Card Name',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  '\$0.85',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              ],
            ),
            Positioned(
                top: AppSizer.getHeight(context, 10),
                left: AppSizer.getWidth(context, 10),
                child: Container(
                  alignment: Alignment.center,
                  height: 16,
                  width: AppSizer.getWidth(context, 47),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '15% Off',
                    style: TextStyle(
                      fontSize: 8,
                      fontFamily: 'InterRegular',
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
