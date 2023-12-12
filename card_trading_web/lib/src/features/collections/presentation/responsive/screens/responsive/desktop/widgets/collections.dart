import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/card_with_image.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/four_dots_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Collections extends ConsumerStatefulWidget {
  const Collections({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CollectionsState();
}

class _CollectionsState extends ConsumerState<Collections> {
  var currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardNameWidget(primaryTitile: 'Your Collections', width: 200),
          Container(
            height: AppSizer.getHeight(context, 340),
            width: AppSizer.getWidth(context, 800),
            color: Theme.of(context).colorScheme.background,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 40.0, left: 10.0, right: 10.0, bottom: 20),
                          child: SeriesCardWidget(),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: FourDots(
                    index: currentSelected,
                  ),
                ),
              ],
            ),
          ),
          CardNameWidget(primaryTitile: 'Your cards from Card Set', width: 200),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: AppSizer.getHeight(context, 340),
              width: AppSizer.getWidth(context, 800),
              color: Theme.of(context).colorScheme.background,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    CardWithImage;
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
