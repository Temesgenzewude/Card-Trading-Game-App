import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class UnselectedDot extends StatelessWidget {
  const UnselectedDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        width: AppSizer.getWidth(context, 8),
        height: AppSizer.getHeight(context, 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.onTertiary,
          ),
        ),
      ),
    );
  }
}
