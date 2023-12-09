import 'package:card_trading_game_app/src/constants/colors.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/browse_set_tab.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/home_tab.dart';

import 'package:card_trading_game_app/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/footer_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/featured_card_widgets.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/newest_series_card_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/newest_sets_card_widget.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/build_tab_bar_for_home_page.dart';

class HomeScreen extends HookWidget {
  HomeScreen({super.key});

  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_images/bg_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: AppSizer.getWidth(context, 365),
                  right: AppSizer.getWidth(context, 147),
                  top: AppSizer.getHeight(context, 58),
                ),
                child: const AppBarWidget(),
              ),
              TabBarContainer(
                  selectedCard: selectedCard,
                  cardGames: cardGames,
                  tabController: tabController),
              Expanded(
                child: TabBarView(controller: tabController, children: const [
                  HomeTab(),
                  BrowseSetTab(),
                ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizer.getWidth(context, 150),
                  vertical: AppSizer.getHeight(context, 60),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewestSetsCardWidget(),
                    NewestSeriesCardWidget(),
                  ],
                ),
              ),
              const FeaturedCardWidget(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizer.getWidth(context, 150),
                  vertical: AppSizer.getHeight(context, 60),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewestSetsCardWidget(),
                    NewestSetsCardWidget(),
                    NewestSetsCardWidget(),
                  ],
                ),
              ),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

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
        height: AppSizer.getHeight(context, 120),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(
                left: AppSizer.getWidth(context, 175), right: 65),
            child: Container(
              height: AppSizer.getHeight(context, 80),
              width: AppSizer.getWidth(context, 180),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: AppSizer.getWidth(context, 10),
                      right: AppSizer.getWidth(
                        context,
                        15,
                      ),
                      bottom: AppSizer.getHeight(
                        context,
                        10,
                      )),
                  child: Image.asset(
                    'assets/images/logo_images/pokellector_logo.png',
                    height: AppSizer.getHeight(context, 80),
                    width: AppSizer.getWidth(context, 40),
                  ),
                ),
                DropdownButton(
                    // isDense: true,
                    underline: Container(),
                    padding: EdgeInsets.only(
                        left: AppSizer.getWidth(context, 10),
                        right: AppSizer.getWidth(context, 10)),
                    value: selectedCard.value,
                    style: TextStyle(
                        color: AppColors.darkReddishTextColor,
                        fontSize: AppSizer.getHeight(context, 20),
                        fontFamily: 'InterBold'),
                    dropdownColor: Theme.of(context).colorScheme.secondary,

                    // Down Arrow Icon
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.arrow_drop_down,
                          size: 20, color: AppColors.darkPurplishTextColor),
                    ),
                    items: cardGames.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value) {
                      selectedCard.value = value ?? "";
                    })
              ]),
            ),
          ),
          BuildTabBarForHomePage(tabController: tabController),
        ]),
      ),
    );
  }
}
