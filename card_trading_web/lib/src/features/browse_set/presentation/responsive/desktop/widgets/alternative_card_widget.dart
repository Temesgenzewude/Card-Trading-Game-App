import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class AlternateVersionCardWidget extends StatelessWidget {
  const AlternateVersionCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardNameWidget(
          primaryTitile: 'Alternate version of this card',
          width: 302,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 101),
            vertical: AppSizer.getHeight(context, 22),
          ),
          width: AppSizer.getWidth(context, 302),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/image17.png',
              ),
              Text(
                'Holo card game',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSizer.getHeight(context, 10),
                ),
                child: DotsWidget(
                  selectedIndex: 0,
                  totalDots: 2,
                  size: 16,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
