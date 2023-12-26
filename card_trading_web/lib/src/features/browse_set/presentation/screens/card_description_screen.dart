import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/app_bar_widget.dart';
import '../../../home/presentation/widgets/build_tab_bar_container.dart';

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
            SliverAppBar(
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
