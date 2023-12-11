// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class BrowseSetsDesktop extends StatefulWidget {
  const BrowseSetsDesktop({super.key});

  @override
  State<BrowseSetsDesktop> createState() => _BrowseSetsDesktopState();
}

class _BrowseSetsDesktopState extends State<BrowseSetsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizer.getWidth(context, 154),
                vertical: AppSizer.getHeight(context, 54),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SeriesNameCardWidget(
                    wrap: Wrap(
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
                  const SizedBox(
                    height: 10,
                  ),
                  SeriesNameCardWidget(
                    wrap: Wrap(
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
                    wrap: Wrap(
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
            const FooterWidget()
          ],
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
    return Padding(
      padding: EdgeInsets.only(top: AppSizer.getHeight(context, 32)),
      child: Column(
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
      ),
    );
  }
}
