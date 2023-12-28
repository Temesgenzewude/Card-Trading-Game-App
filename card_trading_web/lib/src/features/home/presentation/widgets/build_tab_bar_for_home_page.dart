import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/colors.dart';

class BuildTabBarForHomePage extends StatefulWidget {
  final TabController tabController;

  const BuildTabBarForHomePage({super.key, required this.tabController});

  @override
  State<BuildTabBarForHomePage> createState() => _BuildTabBarForHomePageState();
}

class _BuildTabBarForHomePageState extends State<BuildTabBarForHomePage> {
  String dropdownValue = 'assets/images/logo_images/p-logo.png';
  @override
  Widget build(BuildContext context) {
    
    return TabBar(
        dividerColor: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),

        // indicatorColor: Theme.of(context).primaryColor,

        indicator: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
        controller: widget.tabController,
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'InterRegular',
          height: 0,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'InterMedium',
          height: 0,
        ),
        tabs: const [
          Tab(
            child: SizedBox(
              width: 65,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Home',
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 300,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Browse Sets',
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}
