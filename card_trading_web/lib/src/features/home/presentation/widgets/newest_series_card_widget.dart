import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
import 'product_card_widget.dart';

class NewestSeriesCardWidget extends StatelessWidget {
  const NewestSeriesCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardNameWidget(
          primaryTitile: 'Newest Series',
          width: 374,
        ),
        Container(
          padding: EdgeInsets.only(
            left: AppSizer.getWidth(context, 27),
            right: AppSizer.getWidth(context, 33),
            top: AppSizer.getHeight(context, 22),
          ),
          width: AppSizer.getWidth(context, 662),
          // height: AppSizer.getHeight(context, 350),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 16,
                runSpacing: 10,
                children: List.generate(
                  6,
                  (index) => const ProductCardWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSizer.getHeight(context, 29),
                  bottom: AppSizer.getHeight(context, 16),
                ),
                child: DotsWidget(
                  size: 20,
                  selectedIndex: 0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
