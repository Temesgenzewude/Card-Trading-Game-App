import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

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
    return SizedBox(
      height: 84,
      width: AppSizer.getWidth(context, 420),
      child: TabBar(
          // indicatorPadding: EdgeInsets.only(left: 4),
          dividerColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          indicator: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
          tabs: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Tab(
                child: SizedBox(
                  width: 140,
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
            ),
            Container(
              height: 60,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  dropdownColor: Colors.white,
                  padding: const EdgeInsets.all(4),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  onTap: () {
                    setState(() {
                      widget.tabController.index = 1;
                    });
                  },
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: [
                    'assets/images/logo_images/p-logo.png',
                    'assets/images/logo_images/one-piece.png',
                    'assets/images/logo_images/lorcana.png',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Image.asset(
                          value,
                          width: AppSizer.getWidth(context, 64),
                          height: 87,
                        ));
                  }).toList(),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Tab(
                child: SizedBox(
                  width: 160,
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
            ),
          ]),
    );
  }
}
