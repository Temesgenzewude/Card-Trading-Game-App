import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/alternative_card_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_item_left_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_item_right_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/owned_card_widgets.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardItemDescriptionWidget extends StatelessWidget {
  const CardItemDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 67,
                ),
                Container(
                  width: AppSizer.getWidth(context, 645),
                  padding: EdgeInsets.only(
                    top: 18,
                    bottom: 56,
                    left: AppSizer.getWidth(context, 25),
                    right: AppSizer.getWidth(context, 25),
                    // vertical: AppSizer.getHeight(context, 18),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      boxShadow(),
                    ],
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardItemLeftWidget(),
                      CardItemRightWidget(),
                    ],
                  ),
                ),
              ],
            ),
            CardNameWidget(
              primaryTitile: 'Card name',
              width: 313,
              secondaryTitle: '#2',
            ),
          ],
        ),
        SizedBox(
          width: AppSizer.getWidth(context, 29),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AlternateVersionCardWidget(),
            SizedBox(
              height: 33,
            ),
            OwnedCardsWidget(),
          ],
        ),
      ],
    );
  }
}
