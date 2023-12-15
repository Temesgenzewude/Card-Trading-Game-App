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
      padding: EdgeInsets.only(
          left: AppSizer.getWidth(context, 150),
          right: AppSizer.getWidth(context, 150)),
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              height: 84,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(0, 6),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_images/pokellector_logo.png',
                  // width: AppSizer.getWidth(context, 70),
                  // height: AppSizer.getHeight(context, 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.asset(
                'assets/images/logo_images/one_piece__logo.png',
                width: AppSizer.getWidth(context, 80),
                height: AppSizer.getHeight(context, 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Image.asset(
                'assets/images/logo_images/disney_lorcana_logo.png',
                width: AppSizer.getWidth(context, 80),
                height: AppSizer.getHeight(context, 40),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
                width: 300,
                child: BuildTabBarForHomePage(tabController: tabController)),
          ),
        ],
      ),
    );
  }
}
