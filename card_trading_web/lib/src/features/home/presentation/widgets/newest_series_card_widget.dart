import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/circular_tab_bar.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
import 'product_card_widget.dart';

class NewestSeriesCardWidget extends StatefulHookWidget {
  const NewestSeriesCardWidget({Key? key}) : super(key: key);

  @override
  _NewestSeriesCardWidgetState createState() => _NewestSeriesCardWidgetState();
}

class _NewestSeriesCardWidgetState extends State<NewestSeriesCardWidget> {
  @override
  Widget build(BuildContext context) {
    final TabController _tabController = useTabController(initialLength: 4);
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSizer.getWidth(context, 662),
              decoration: const BoxDecoration(color: Colors.transparent),
              height: 67,
            ),
            Container(
              height: 254,
              width: AppSizer.getWidth(context, 662),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Theme.of(context).colorScheme.secondary,
                boxShadow: [boxShadow()],
              ),
              child: TabBarView(
                controller: _tabController,
                children: List.generate(
                  4,
                  (index) => Container(
                    padding: EdgeInsets.only(
                      left: AppSizer.getWidth(context, 27),
                      right: AppSizer.getWidth(context, 33),
                      top: AppSizer.getHeight(context, 22),
                    ),
                    width: AppSizer.getWidth(context, 662),
                    // height: AppSizer.getHeight(context, 350),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                      boxShadow: [boxShadow()],
                    ),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 10,
                      children: List.generate(
                        6,
                        (index) => const ProductCardWidget(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: AppSizer.getWidth(context, 240),
          child: Container(
            color: Colors.transparent,
            height: 24,
            width: AppSizer.getWidth(context, 300),
            child: CircularTabBar(length: 4, tabController: _tabController),
          ),
        ),
        CardNameWidget(
          primaryTitile: 'Newest Series',
          width: 374,
        ),
      ],
    );
  }
}
