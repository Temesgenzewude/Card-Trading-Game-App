// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SeriesCardWidget extends StatelessWidget {
  SeriesCardWidget({super.key, this.imageWidth});

  double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            boxShadow(),
          ],
          border: Border.all(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
            width: 1,
          ),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/image26.png',
              width: AppSizer.getWidth(context, imageWidth ?? 115),
              fit: BoxFit.cover,
            ),
            const Text('set name'),
          ],
        ),
      ),
    );
  }
}
