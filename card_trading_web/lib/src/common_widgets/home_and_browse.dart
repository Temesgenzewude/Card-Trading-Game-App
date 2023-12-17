// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:card_trading_web/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets_desktop.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/mobile/mobile_layout.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_container.dart';
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
        useTabController(initialLength: 2, initialIndex: widget.isHome ? 0 : 1);
    final tabController2 = useTabController(initialLength: 3, initialIndex: 0);
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
                        tabController2: tabController2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 122.0),
                        child: SizedBox(
                          width: 400,
                          child: TabBar(
                            isScrollable: true,
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            indicatorPadding: const EdgeInsets.only(),
                            dividerColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            indicator: ShapeDecoration(
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
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: tabController2,
                            tabs: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSizer.getWidth(context, 2),
                                ),
                                child: Image.asset(
                                  'assets/images/logo_images/p-logo.png',
                                  height: 84,
                                  width: AppSizer.getWidth(context, 100),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSizer.getWidth(context, 2),
                                ),
                                child: Image.asset(
                                  'assets/images/logo_images/one-piece.png',
                                  width: AppSizer.getWidth(context, 80),
                                  height: AppSizer.getHeight(context, 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSizer.getWidth(context, 2),
                                ),
                                child: Image.asset(
                                  'assets/images/logo_images/lorcana.png',
                                  width: AppSizer.getWidth(context, 80),
                                  height: AppSizer.getHeight(context, 40),
                                ),
                              ),
                            ],
                          ),
                        ),
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
