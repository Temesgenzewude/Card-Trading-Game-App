import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/circular_tab_bar.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/card_with_image.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/custom_card_name_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/selected_dot_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/series_name_container.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/unselected_dot_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/product_card_widget.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Collections extends StatefulHookWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    final TabController _tabController =
        useTabController(initialLength: 4, initialIndex: 0);
    final tabBarIndex = useState(0);
    // final currentSelected = useState(0);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: AppSizer.getHeight(context, 32),
                    left: AppSizer.getWidth(context, 164)),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 67,
                        ),
                        Container(
                          height: 300,
                          width: AppSizer.getWidth(context, 883),
                          child: TabBarView(
                              controller: _tabController,
                              children: List.generate(
                                  4, (index) => const SeriesNameContainer())),
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 10,
                      left: AppSizer.getWidth(context, 380),
                      child: Container(
                          color: Colors.transparent,
                          height: 24,
                          width: AppSizer.getWidth(context, 300),
                          child: CircularTabBar(
                            tabController: _tabController,
                            length: 4,
                          )),
                    ),
                    CardNameWidget(
                      primaryTitile: 'Series name',
                      width: 313,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 80, bottom: 80, left: AppSizer.getWidth(context, 164)),
              child: Center(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 67,
                        ),
                        Material(
                          elevation: 10,
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: SizedBox(
                              height: 200,
                              width: AppSizer.getWidth(context, 883),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              AppSizer.getWidth(context, 10)),
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 9,
                                          itemBuilder: (context, index) {
                                            return const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              child: ProductCardWidget(),
                                            );
                                          }),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(''),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 18.0, bottom: 10),
                                        child: Text('View all'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const CustomCardNameWidget(),
                  ],
                ),
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
