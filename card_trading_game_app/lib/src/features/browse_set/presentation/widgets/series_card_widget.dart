import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SeriesCardWidget extends StatelessWidget {
  SeriesCardWidget({super.key, this.imageWidth});

  double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
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
    );
  }
}
