import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/size_convertor.dart';
import 'build_tab_bar_for_home_page.dart';

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({
    super.key,
    required this.selectedCard,
    required this.cardGames,
    required this.tabController,
  });

  final ValueNotifier<String> selectedCard;
  final List<String> cardGames;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      padding: EdgeInsets.only(
        left: AppSizer.getWidth(context, 150),
        right: AppSizer.getWidth(context, 150),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Text('')),
          Flexible(
            child: Text(
              'Welcome to TCG-Collector, Manage Your Collection',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
