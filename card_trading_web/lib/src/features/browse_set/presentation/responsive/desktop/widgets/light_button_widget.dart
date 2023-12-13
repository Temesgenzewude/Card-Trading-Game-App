import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class LightButtonWidget extends StatelessWidget {
  const LightButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 34),
          vertical: AppSizer.getHeight(context, 14),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromARGB(255, 142, 202, 230),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Complete your collection',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
