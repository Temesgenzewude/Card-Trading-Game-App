import 'package:flutter/material.dart';

import '../../../../utils/size_convertor.dart';
import 'build_tab_bar_for_home_page.dart';

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({
    super.key,
    required this.selectedCard,
    required this.cardGames,
    required this.tabController,
    required this.tabController2,
  });

  final ValueNotifier<String> selectedCard;
  final List<String> cardGames;
  final TabController tabController;
  final TabController tabController2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      padding: EdgeInsets.only(
        right: AppSizer.getWidth(context, 150),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 122.0),
            child: TabBar(
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 4),
              // indicatorPadding: const EdgeInsets.only(),
              dividerColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              indicator: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(0, 6),
                    spreadRadius: 0,
                  ),
                ],
              ),
              indicatorSize: TabBarIndicatorSize.label,
              controller: tabController2,
              tabs: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizer.getWidth(context, 10),
                  ),
                  child: Image.asset(
                    'assets/images/poke_collector_home.png',
                    height: 84.5,
                    width: AppSizer.getWidth(context, 80),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizer.getWidth(context, 10),
                  ),
                  child: Image.asset(
                    'assets/images/logo_images/p-logo.png',
                    height: 84.5,
                    width: AppSizer.getWidth(context, 76),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizer.getWidth(context, 8),
                  ),
                  child: Image.asset(
                    'assets/images/logo_images/one-piece.png',
                    width: AppSizer.getWidth(context, 80),
                    height: 84.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizer.getWidth(context, 8),
                  ),
                  child: Image.asset(
                    'assets/images/logo_images/lorcana.png',
                    width: AppSizer.getWidth(context, 80),
                    height: 84.5,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 230, right: 10),
            child: Text(
              'Welcome to TCG-Collector',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
                width: 240,
                child: BuildTabBarForHomePage(tabController: tabController)),
          ),
        ],
      ),
    );
  }
}
