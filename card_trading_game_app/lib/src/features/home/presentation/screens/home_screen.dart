import 'package:card_trading_game_app/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/footer_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/screens/home_screen.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/browse_set_tab.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/featured_card_widgets.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/newest_series_card_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/newest_sets_card_widget.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends StatefulHookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<HomeScreen> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");
    // return Scaffold(
    //   body: CustomScrollView(
    //     slivers: [
    //       const SliverAppBar(
    //         title: AppBarWidget(),
    //       ),
    //       SliverAppBar(
    //         pinned: true,
    //         backgroundColor: Theme.of(context).secondaryHeaderColor,
    //         title: TabBarContainer(
    //           selectedCard: selectedCard,
    //           cardGames: cardGames,
    //           tabController: tabController,
    //         ),
    //       ),
    //       DefaultTabController(
    //           length: 2,
    //           child: NestedScrollView(
    //             headerSliverBuilder:
    //                 (BuildContext context, bool innerBoxSelected) {
    //               return [];
    //             },
    //             body: const TabBarView(
    //                 children: [HomeScreenTab(), BrowseSetTab()]),
    //           )),
    //       SliverToBoxAdapter(
    //         child: TabBarView(controller: tabController, children: [
    //           Container(
    //             height: 100,
    //             color: Colors.black,
    //           ),
    //           // Column(
    //           //   children: [
    //           //     Row(
    //           //       crossAxisAlignment: CrossAxisAlignment.start,
    //           //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           //       children: [
    //           //         Expanded(
    //           //           child: NewestSetsCardWidget(),
    //           //         ),
    //           //         Expanded(
    //           //           child: NewestSeriesCardWidget(),
    //           //         ),
    //           //       ],
    //           //     ),
    //           //     Padding(
    //           //       padding: EdgeInsets.symmetric(vertical: 45),
    //           //       child: FeaturedCardWidget(),
    //           //     ),
    //           //     Row(
    //           //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           //       children: [
    //           //         Flexible(
    //           //           child: NewestSetsCardWidget(),
    //           //         ),
    //           //         Flexible(
    //           //           child: NewestSetsCardWidget(),
    //           //         ),
    //           //         Flexible(
    //           //           child: NewestSetsCardWidget(),
    //           //         ),
    //           //       ],
    //           //     ),
    //           //   ],
    //           // ),
    //         ]),
    //       ),
    //       const SliverToBoxAdapter(
    //         child: Column(
    //           children: [
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Expanded(
    //                   child: NewestSetsCardWidget(),
    //                 ),
    //                 Expanded(
    //                   child: NewestSeriesCardWidget(),
    //                 ),
    //               ],
    //             ),
    //             Padding(
    //               padding: EdgeInsets.symmetric(vertical: 45),
    //               child: FeaturedCardWidget(),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Flexible(
    //                   child: NewestSetsCardWidget(),
    //                 ),
    //                 Flexible(
    //                   child: NewestSetsCardWidget(),
    //                 ),
    //                 Flexible(
    //                   child: NewestSetsCardWidget(),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       // SliverToBoxAdapter(
    //       //   child: TabBarView(
    //       //     controller: tabController,
    //       //     children: [
    //       //       HomeScreenTab(),
    //       //       BrowseSetTab(),
    //       //     ],
    //       //   ),
    //       // ),
    //       // SliverToBoxAdapter(
    //       //   child: Container(
    //       //     height: 200,
    //       //     color: Colors.black,
    //       //   ),
    //       // ),
    //       // const FooterWidget(),
    //     ],
    //   ),
    // );
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: AppBarWidget(),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              title: TabBarContainer(
                selectedCard: selectedCard,
                cardGames: cardGames,
                tabController: tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: const [
            HomeScreenTab(),
            BrowseSetTab(),
          ],
        ),
      ),
    );
  }
}

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 180.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewestSetsCardWidget(),
                      NewestSeriesCardWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 45, horizontal: 180.0),
                  child: FeaturedCardWidget(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 180.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: NewestSetsCardWidget(),
                      ),
                      Flexible(
                        child: NewestSetsCardWidget(),
                      ),
                      Flexible(
                        child: NewestSetsCardWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
