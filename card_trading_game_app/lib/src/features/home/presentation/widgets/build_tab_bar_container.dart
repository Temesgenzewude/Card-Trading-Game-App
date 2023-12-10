import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
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
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizer.getHeight(context, 34),
      ),
      child: Container(
        height: AppSizer.getHeight(context, 84),
        width: double.infinity,
        padding: EdgeInsets.only(
          right: AppSizer.getWidth(context, 165),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(
                    left: AppSizer.getWidth(context, 155)
                    , right: 21),
                child: Container(
                  width: AppSizer.getWidth(context, 100),
                  height: AppSizer.getHeight(context, 84),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
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
              ),
              Image.asset(
                'assets/images/logo_images/one_piece__logo.png',
                width: AppSizer.getWidth(context, 97),
                height: AppSizer.getHeight(context, 25),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset(
                  'assets/images/logo_images/disney_lorcana_logo.png',
                  width: AppSizer.getWidth(context, 70),
                  height: AppSizer.getHeight(context, 31),
                ),
              ),
            ]),
            BuildTabBarForHomePage(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
