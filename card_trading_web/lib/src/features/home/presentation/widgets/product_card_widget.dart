import 'package:flutter/material.dart';

import '../../../../constants/icons.dart';
import '../../../../utils/size_convertor.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizer.getWidth(context, 100),
      child: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              Text(
                '(512)',
                style: TextStyle(
                    fontSize: 10, color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          Text(
            'Card Name',
            style: TextStyle(
                fontSize: 12, color: Theme.of(context).colorScheme.primary),
          ),
          Text(
            '\$0.85',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary),
          )
        ],
      ),
    );
  }
}
