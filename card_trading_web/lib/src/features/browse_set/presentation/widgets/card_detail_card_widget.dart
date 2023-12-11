import 'package:flutter/material.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';

class CardDetailCardWidget extends StatelessWidget {
  const CardDetailCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardNameWidget(
          primaryTitile: 'Cards',
          width: 103,
          isCenter: true,
          verticalPadding: 9,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          width: AppSizer.getWidth(context, 103),
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
            children: [
              Text(
                '182',
                style: TextStyle(
                  fontSize: AppSizer.getHeight(context, 20),
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                '+82 Secret',
                style: TextStyle(
                  fontSize: AppSizer.getHeight(context, 20),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
