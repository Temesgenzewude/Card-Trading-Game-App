import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/buy_this_card_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/rich_text_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardItemRightWidget extends StatelessWidget {
  const CardItemRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichTextWidget(
            boldText: 'Rarity',
            regularText: 'Uncommon',
          ),
          RichTextWidget(
            boldText: 'Set',
            regularText: 'Set name',
          ),
          RichTextWidget(
            boldText: 'Card',
            regularText: '2/182',
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSizer.getHeight(context, 31),
              bottom: AppSizer.getWidth(context, 100),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: AppColors.disabledColor,
                  size: 18,
                ),
                Flexible(
                  child: Text(
                    'You already have this card',
                    style: TextStyle(
                      color: AppColors.disabledColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Wrap(
            spacing: 4,
            runSpacing: 2,
            children: List.generate(
              4,
              (index) => const BuyThisCardWidget(),
            ),
          ),
        ],
      ),
    );
  }
}