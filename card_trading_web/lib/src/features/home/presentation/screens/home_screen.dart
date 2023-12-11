import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/app_bar_widget.dart';
import '../../../../common_widgets/footer_widget.dart';
import '../../../browse_set/presentation/screens/browse_sets.dart';
import '../../../browse_set/presentation/screens/responsive/desktop_layout.dart';
import '../../../browse_set/presentation/screens/responsive/mobile_layout.dart';
import '../../../browse_set/presentation/screens/responsive/tablet_layout.dart';
import '../widgets/build_tab_bar_container.dart';
import '../widgets/featured_card_widgets.dart';
import '../widgets/newest_series_card_widget.dart';
import '../widgets/newest_sets_card_widget.dart';

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
            BrowseSetTab(
              desktopScaffold: BrowseSetsDesktop(),
              mobileScaffold: BrowseSetsMobile(),
              tabletScaffold: BrowseSetsTablet(),
            ),
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
                  padding: EdgeInsets.symmetric(horizontal: 100.0),
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
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
