// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SeriesNameCardWidget extends StatelessWidget {
  SeriesNameCardWidget({
    required this.children,
    super.key,
  });

  int children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizer.getHeight(context, 32)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizer.getWidth(context, 27),
                  vertical: AppSizer.getHeight(context, 35),
                ),
                width: AppSizer.getWidth(context, 917),
                // height: AppSizer.getHeight(context, 350),
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
                child: Wrap(
                  spacing: AppSizer.getWidth(context, 20),
                  runSpacing: AppSizer.getWidth(context, 40),
                  children: List.generate(
                    children,
                    (index) => SeriesCardWidget(),
                  ),
                ),
              ),
            ],
          ),
          CardNameWidget(
            primaryTitile: 'Series name',
            width: 313,
          ),
        ],
      ),
    );
  }
}
