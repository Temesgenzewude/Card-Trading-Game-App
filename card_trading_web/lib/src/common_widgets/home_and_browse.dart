// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:card_trading_web/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets_desktop.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/mobile/mobile_layout.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_for_home_page.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/home_screen_tab.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeAndBrowseTabs extends StatefulHookWidget {
  Widget? tabBarView1;
  Widget? tabBarView2;
  bool isScroll;
  bool isHome;

  HomeAndBrowseTabs(
      {Key? key,
      this.tabBarView1,
      this.tabBarView2,
      this.isScroll = true,
      this.isHome = true})
      : super(key: key);

  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<HomeAndBrowseTabs> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];

  @override
  Widget build(BuildContext context) {
    final tabController =
        useTabController(initialLength: 3, initialIndex: widget.isHome ? 0 : 2);
    var selectedCard = useState("Pokellector");
    return Scaffold(
      // extendBodyBehindAppBar: true,

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/bg_images/bg_image.png'),
            fit: BoxFit.cover,
          ),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: NestedScrollView(
          clipBehavior: Clip.none,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                clipBehavior: Clip.none,
                pinned: true,
                expandedHeight: 100,
                collapsedHeight: 100,
                flexibleSpace: FlexibleSpaceBar(
                  background: AppBarWidget(),
                ),
              ),
              SliverAppBar(
                expandedHeight: 94,
                collapsedHeight: 94,
                pinned: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      TabBarContainer(
                        selectedCard: selectedCard,
                        cardGames: cardGames,
                        tabController: tabController,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 163.0),
                        child: BuildTabBarForHomePage(
                            tabController: tabController),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          physics: widget.isScroll
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          // physics: const NeverScrollableScrollPhysics(),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              widget.tabBarView1 ?? const HomeScreenTab(),
              Container(),
              widget.tabBarView2 ??
                  const BrowseSetTab(
                    desktopScaffold: BrowseSetsDesktop(),
                    mobileScaffold: BrowseSetsMobile(),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
