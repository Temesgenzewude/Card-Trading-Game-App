import 'package:card_trading_web/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDescriptionScreen extends StatefulHookWidget {
  const CardDescriptionScreen({super.key});

  @override
  State<CardDescriptionScreen> createState() => _CardDescriptionScreenState();
}

class _CardDescriptionScreenState extends State<CardDescriptionScreen> {
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
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
