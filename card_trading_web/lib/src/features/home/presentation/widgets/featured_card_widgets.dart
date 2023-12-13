// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

import 'product_card_widget.dart';

class FeaturedCardWidget extends StatelessWidget {
  FeaturedCardWidget({
    super.key,
    this.cardTitle,
  });

  String? cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardNameWidget(
          primaryTitile: cardTitle ?? 'Featured Cards',
          width: 269,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 27),
            vertical: AppSizer.getHeight(context, 32),
          ),
          width: AppSizer.getWidth(context, 971),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              boxShadow(),
            ],
          ),
          child: Wrap(
            spacing: 16,
            runSpacing: 10,
            children: List.generate(
              9,
              (index) => const ProductCardWidget(),
            ),
          ),
        )
      ],
    );
  }
}
