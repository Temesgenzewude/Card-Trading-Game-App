// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/inner_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class NewestSetsCardWidget extends StatelessWidget {
  NewestSetsCardWidget({super.key, this.width});

  double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppSizer.getWidth(context, width ?? 265),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [boxShadow()],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardNameWidget(
                primaryTitile: 'Newests sets',
                width: width ?? 267,
                secondaryTitle: 'View all',
              ),
              // ShadowContainer(width: width ?? 265),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizer.getWidth(context, 28),
                  vertical: AppSizer.getHeight(context, 22),
                ),
                child: Column(
                  children: [
                    InnerCardWidget(
                        imageUrl: 'assets/images/image3.png',
                        title: 'Card set name'),
                    SizedBox(
                      height: AppSizer.getHeight(context, 15),
                    ),
                    InnerCardWidget(
                        imageUrl: 'assets/images/image3.png',
                        title: 'Card set name'),
                    SizedBox(
                      height: AppSizer.getHeight(context, 15),
                    ),
                    InnerCardWidget(
                      imageUrl: 'assets/images/image3.png',
                      title: 'Card set name',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
