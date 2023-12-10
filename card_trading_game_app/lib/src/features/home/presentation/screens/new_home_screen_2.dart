import 'package:card_trading_game_app/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/footer_widget.dart';
import 'package:card_trading_game_app/src/features/home/presentation/screens/home_screen.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/browse_set_tab.dart';
import 'package:card_trading_game_app/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NewHomeScreen2 extends StatefulHookWidget {
  const NewHomeScreen2({Key? key}) : super(key: key);

  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen2> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
          SliverFillRemaining(
            child: SizedBox(
              width: 500,
              child: TabBarView(
                controller: tabController,
                children: const [
                  HomeScreenTab(),
                  BrowseSetTab(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
