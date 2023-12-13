// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/app_bar_widget.dart';
import '../../../../common_widgets/footer_widget.dart';
import '../../../../common_widgets/user_profile_name_and_profile_pic.dart';
import '../../../home/presentation/widgets/build_tab_bar_container.dart';
import '../widgets/profile_tab.dart';

class ProfileScreen extends StatefulHookWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");

    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/images/bg_images/bg_image.png'),
            fit: BoxFit.cover),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: AppBarWidget(
                  left: buildProfileNameAndProfilePic(),
                ),
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
                    children: [ProfileTabDesktop()],
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
