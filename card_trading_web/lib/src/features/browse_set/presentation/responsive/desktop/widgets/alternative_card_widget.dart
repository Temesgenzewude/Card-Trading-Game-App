import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/circular_tab_bar.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AlternateVersionCardWidget extends StatefulHookWidget {
  const AlternateVersionCardWidget({Key? key}) : super(key: key);

  @override
  _AlternateVersionCardWidgetState createState() =>
      _AlternateVersionCardWidgetState();
}

class _AlternateVersionCardWidgetState
    extends State<AlternateVersionCardWidget> {
  @override
  Widget build(BuildContext context) {
    final TabController tabController = useTabController(initialLength: 2);
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 67,
            ),
            Container(
              height: 260,
              width: AppSizer.getWidth(context, 302),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Theme.of(context).colorScheme.secondary,
                boxShadow: [boxShadow()],
              ),
              child: TabBarView(
                controller: tabController,
                children: List.generate(
                  2,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getWidth(context, 101),
                      vertical: 22,
                    ),
                    width: AppSizer.getWidth(context, 302),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                      boxShadow: [boxShadow()],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/image17.png',
                        ),
                        Text(
                          'Holo card game',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 10,
            left: 104,
            child: SizedBox(
                height: 24,
                child:
                    CircularTabBar(length: 2, tabController: tabController))),
        CardNameWidget(
          primaryTitile: 'Alternate version of this card',
          width: 302,
        ),
      ],
    );
  }
}
