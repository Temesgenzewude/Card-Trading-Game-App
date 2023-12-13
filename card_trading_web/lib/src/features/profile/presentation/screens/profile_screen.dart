// ignore_for_file: library_private_types_in_public_api

import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
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
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: Column(
        children: [
          Expanded(
              child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: AppSizer.getHeight(context, 20)),
            child: const ProfileTabDesktop(),
          )),
          const FooterWidget(),
        ],
      ),
    );
  }
}
