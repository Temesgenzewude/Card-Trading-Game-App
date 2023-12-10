// ignore_for_file: must_be_immutable

import 'package:card_trading_game_app/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/product_card_widget.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class BrowseSetsDesktop extends StatelessWidget {
  const BrowseSetsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSizer.getWidth(context, 154)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SeriesNameCardWidget(
                wrap: const Wrap(
                  runSpacing: 12,
                  spacing: 10,
                  children: [
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SeriesNameCardWidget(
                wrap: const Wrap(
                  runSpacing: 12,
                  spacing: 10,
                  children: [
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                  ],
                ),
              ),
              SeriesNameCardWidget(
                wrap: const Wrap(
                  runSpacing: 12,
                  spacing: 10,
                  children: [
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                    SeriesCardWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeriesNameCardWidget extends StatelessWidget {
  SeriesNameCardWidget({
    required this.wrap,
    super.key,
  });

  Wrap wrap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardNameWidget(
          primaryTitile: 'Series name',
          width: 313,
        ),
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
          child: wrap,
        )
      ],
    );
  }
}

class SeriesCardWidget extends StatelessWidget {
  const SeriesCardWidget({super.key});

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
            width: AppSizer.getWidth(context, 115),
            fit: BoxFit.cover,
          ),
          const Text('set name'),
        ],
      ),
    );
  }
}
