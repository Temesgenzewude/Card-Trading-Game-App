import 'package:card_trading_web/src/common_widgets/circle_indicator.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CircularTabBar extends StatefulHookWidget {
  final TabController tabController;
  final int length;
  const CircularTabBar(
      {required this.length, required this.tabController, Key? key})
      : super(key: key);

  @override
  _CircularTabBarState createState() => _CircularTabBarState();
}

class _CircularTabBarState extends State<CircularTabBar> {
  @override
  Widget build(BuildContext context) {
    var tabBarIndex = useState(widget.tabController.index);
    return TabBar(
      onTap: (int index) {
        tabBarIndex.value = widget.tabController.index;
      },
      isScrollable: true,
      controller: widget.tabController,
      indicatorColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.all(4),
      tabs: List.generate(
        widget.length,
        (index) => CircleIndicator(
          index: tabBarIndex.value,
          thisIndex: index,
        ),
      ),
    );
  }
}
