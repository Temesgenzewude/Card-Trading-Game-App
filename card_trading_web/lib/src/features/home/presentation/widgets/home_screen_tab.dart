import 'package:card_trading_web/src/features/home/presentation/widgets/featured_card_widgets.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/newest_series_card_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/newest_sets_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 180.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewestSetsCardWidget(),
                      NewestSeriesCardWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 45, horizontal: 180.0),
                  child: FeaturedCardWidget(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewestSetsCardWidget(),
                      NewestSetsCardWidget(),
                      NewestSetsCardWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
