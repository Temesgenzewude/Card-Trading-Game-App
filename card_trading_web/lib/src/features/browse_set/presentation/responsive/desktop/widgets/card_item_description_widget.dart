
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardNameWidget(
              primaryTitile: 'Card name',
              width: 313,
              secondaryTitle: '#2',
            ),
            Container(
              width: AppSizer.getWidth(context, 645),
              padding: EdgeInsets.only(
                top: AppSizer.getHeight(context, 18),
                bottom: AppSizer.getHeight(context, 56),
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
        SizedBox(
          width: AppSizer.getWidth(context, 29),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: AppSizer.getHeight(context, 33)),
              child: const AlternateVersionCardWidget(),
            ),
            const OwnedCardsWidget(),
          ],
        ),
      ],
    );
  }
}
