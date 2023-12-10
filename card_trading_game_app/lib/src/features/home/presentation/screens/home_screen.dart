import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/app_bar_widget.dart';
import '../../../../common_widgets/footer_widget.dart';
import '../../../../utils/size_convertor.dart';
import '../widgets/browse_set_tab.dart';
import '../widgets/build_tab_bar_container.dart';
import '../widgets/featured_card_widgets.dart';
import '../widgets/newest_series_card_widget.dart';
import '../widgets/newest_sets_card_widget.dart';

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
    // print(selectedCard.value);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
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
                      right: AppSizer.getWidth(
                        context,
                        147,
                      ),
                      top: AppSizer.getHeight(context, 58),
                    ),
                    child: const AppBarWidget(),
                  ),
                  TabBarContainer(
                    selectedCard: selectedCard,
                    cardGames: cardGames,
                    tabController: tabController,
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: const [
                HomeScreenTab(),
                BrowseSetTab(),
              ],
            ),
          ),
          // SliverToBoxAdapter(
          //   child: HomeScreenTab(),
          // ),
          // const SliverToBoxAdapter(
          //   child: FeaturedCardWidget(),
          // ),
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: AppSizer.getWidth(context, 150),
          //       vertical: AppSizer.getHeight(context, 60),
          //     ),
          //     child: const Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         NewestSetsCardWidget(),
          //         NewestSetsCardWidget(),
          //         NewestSetsCardWidget(),
          //       ],
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizer.getWidth(context, 150),
        vertical: AppSizer.getHeight(context, 60),
      ),
      child: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NewestSetsCardWidget(),
              NewestSeriesCardWidget(),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 45),
            child: FeaturedCardWidget(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NewestSetsCardWidget(),
                NewestSetsCardWidget(),
                NewestSetsCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
