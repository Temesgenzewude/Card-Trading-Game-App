import 'package:flutter/material.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
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
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 1,
              ),
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
