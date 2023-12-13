import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/featured_card_widgets.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/newest_series_card_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/newest_sets_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: AppSizer.getHeight(context, 67),
              bottom: AppSizer.getHeight(context, 56),
              left: AppSizer.getWidth(context, 155),
              right: AppSizer.getWidth(context, 155),
            ),
            // padding: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NewestSetsCardWidget(),
                        const NewestSeriesCardWidget(),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSizer.getHeight(context, 43),
                      ),
                      child: FeaturedCardWidget(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NewestSetsCardWidget(),
                        NewestSetsCardWidget(),
                        NewestSetsCardWidget(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const FooterWidget()
        ],
      ),
    );
  }
}
