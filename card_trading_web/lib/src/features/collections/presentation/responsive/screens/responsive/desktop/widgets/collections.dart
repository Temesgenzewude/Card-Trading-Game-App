import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/card_with_image.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Collections extends ConsumerStatefulWidget {
  const Collections({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CollectionsState();
}

class _CollectionsState extends ConsumerState<Collections> {
  @override
  Widget build(BuildContext context) {
    // final currentSelected = useState(0);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardNameWidget(primaryTitile: 'Your Collections', width: 200),
                  Material(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 269,
                        width: AppSizer.getWidth(context, 883),
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 30,
                                    horizontal: AppSizer.getWidth(context, 40)),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      if (index % 4 == 0) {
                                        // currentSelected.value =
                                        //     (currentSelected.value + 1) % 4;
                                      }
                                      return Padding(
                                        padding: EdgeInsets.only(
                                          top: AppSizer.getHeight(context, 10),
                                          bottom:
                                              AppSizer.getWidth(context, 10),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: AppSizer.getWidth(
                                                  context, 170),
                                              child: SeriesCardWidget(),
                                            ),
                                            SizedBox(
                                              width: AppSizer.getWidth(
                                                  context, 20),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: AppSizer.getHeight(context, 10),
                              ),
                              child: DotsWidget(
                                selectedIndex: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 80,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: AppSizer.getWidth(context, 360),
                      height: 59,
                      decoration: const ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x7F000000),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: AppSizer.getWidth(context, 20)),
                        child: Row(
                          children: [
                            const Text(
                              'Your cards from Card set',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'InterBold',
                              ),
                            ),
                            SizedBox(
                              width: AppSizer.getWidth(context, 80),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '80',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: AppSizer.getWidth(context, 32),
                                      fontFamily: 'InterRegular',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/182',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: AppSizer.getWidth(context, 12),
                                      fontFamily: 'InterRegular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: SizedBox(
                          height: 240,
                          width: AppSizer.getWidth(context, 883),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          AppSizer.getWidth(context, 40)),
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 9,
                                      itemBuilder: (context, index) {
                                        return const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          child: AspectRatio(
                                              aspectRatio: 0.5,
                                              child: CardWithImage()),
                                        );
                                      }),
                                ),
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: Text(''),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 60.0),
                                      child: Text('View all'),
                                    ),
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
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
