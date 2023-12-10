
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
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 27),
            vertical: AppSizer.getHeight(context, 35),
          ),
          width: AppSizer.getWidth(context, 662),
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductCardWidget(),
              ProductCardWidget(),
              ProductCardWidget(),
              ProductCardWidget(),
              ProductCardWidget(),
              ProductCardWidget(),
            ],
          ),
        )
      ],
    );
  }
}