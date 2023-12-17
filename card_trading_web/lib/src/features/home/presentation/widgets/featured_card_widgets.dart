// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/shadow_container.dart';
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
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSizer.getWidth(context, 662),
              decoration: const BoxDecoration(color: Colors.transparent),
              height: 67,
            ),
            Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const ShadowContainer(width: 270),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getWidth(context, 27),
                      vertical: AppSizer.getHeight(context, 32),
                    ),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 10,
                      children: List.generate(
                        9,
                        (index) => const ProductCardWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CardNameWidget(
          primaryTitile: cardTitle ?? 'Featured Cards',
          width: 269,
        ),
      ],
    );
  }
}
