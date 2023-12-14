import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 50),
      height: 1000,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              width: AppSizer.getWidth(context, 100),
              height: AppSizer.getHeight(context, 84),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 6),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                    'assets/images/logo_images/pokellector_logo.png',
                    width: AppSizer.getWidth(context, 86),
                    height: AppSizer.getHeight(context, 31)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.asset(
                'assets/images/logo_images/one_piece__logo.png',
                width: AppSizer.getWidth(context, 97),
                height: AppSizer.getHeight(context, 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/images/logo_images/disney_lorcana_logo.png',
                width: AppSizer.getWidth(context, 70),
                height: AppSizer.getHeight(context, 31),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
                right: AppSizer.getWidth(context, 150),
                top: 10.0,
                bottom: 10.0),
            child: SizedBox(
                width: AppSizer.getWidth(context, 300),
                child: BuildTabBarForHomePage(tabController: tabController)),
          ),
        ],
      ),
    );
  }
}
