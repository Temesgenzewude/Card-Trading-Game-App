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
          // padding: EdgeInsets.zero,
          // indicatorPadding: EdgeInsets.zero,
          // indicatorColor: Theme.of(context).primaryColor,
          indicator: BoxDecoration(
            // shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            gradient: const LinearGradient(
              colors: [
                //rgba(142, 202, 230, 1), rgba(33, 158, 188, 1)
                Color.fromRGBO(142, 202, 230, 1),
                Color.fromRGBO(33, 158, 188, 1),
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
          tabs: [
            Tab(
              child: SizedBox(
                height: AppSizer.getHeight(context, 43),
                width: 74,
                child: const Center(
                  child: Text(
                    'Home',
                  ),
                ),
              ),
            ),
            Tab(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 120, maxHeight: 43),
                child: const Center(
                  child: Text(
                    'Browse Sets',
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
