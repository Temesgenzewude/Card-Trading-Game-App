import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../../common_widgets/app_bar_widget.dart';
import '../../../../../../../common_widgets/footer_widget.dart';
import '../../../../../../home/presentation/widgets/build_tab_bar_container.dart';
import 'signup_screen.dart';

class SignupAuthScreen extends StatefulHookWidget {
  const SignupAuthScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupAuthScreen> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg_images/bg_image.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
          body: const Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SignupDesktop(),
                    ],
                  ),
                ),
              ),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}