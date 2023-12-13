import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class UnselectedDot extends StatelessWidget {
  const UnselectedDot({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          width: AppSizer.getWidth(context, 20),
          height: AppSizer.getHeight(context, 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
            // border: Border.all(
            //   color: Theme.of(context).colorScheme.onTertiary,
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
