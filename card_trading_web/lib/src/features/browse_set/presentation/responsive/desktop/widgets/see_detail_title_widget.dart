import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/size_convertor.dart';
import 'card_detail_card_widget.dart';

class SeeDetailTitleWidget extends StatelessWidget {
  const SeeDetailTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: AppSizer.getWidth(context, 50)),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              boxShadow: [boxShadow()],
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
                width: 1,
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Image.asset(
              'assets/images/image26.png',
              width: AppSizer.getWidth(
                context,
                110,
              ),
              height: AppSizer.getHeight(context, 200),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'SetName',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: AppSizer.getHeight(context, 36),
              ),
              child: const Text('The first TCG set to feature Paradox Pokemon'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: CardDetailCardWidget(
                    cardName: "Cards",
                    cardTitle: '182',
                    cardSubTitle: '+82 Secret', 
                  ),
                ),
                CardDetailCardWidget(
                  cardName: 'Released',
                  cardTitle: 'Nov 3rd',
                  cardSubTitle: '2023',
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
