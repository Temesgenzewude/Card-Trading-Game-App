import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_convertor.dart';

class BuildTabBarForHomePage extends StatelessWidget {
  const BuildTabBarForHomePage({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizer.getWidth(context, 300),
      child: TabBar(
          dividerColor: Colors.transparent,
          // indicatorColor: Theme.of(context).primaryColor,
          indicator: BoxDecoration(
            // shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(32.0),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF3F2E3E),
                Color(0xFFA78295),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 8,
                color: Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ],
          ),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: AppColors.offWhiteTextColor,
          unselectedLabelColor: AppColors.offWhiteTextColor,
          controller: tabController,
          tabs: const [
            Tab(
                child: SizedBox(
              height: 20,
              width: 90,
              child: Center(
                child: Text(
                  'Home',
                ),
              ),
            )),
            Tab(
                child: SizedBox(
              height: 20,
              width: 120,
              child: Center(
                child: Text(
                  'Browse Sets',
                ),
              ),
            )),
          ]),
    );
  }
}
