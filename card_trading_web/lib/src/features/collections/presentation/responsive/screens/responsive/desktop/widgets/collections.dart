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
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: AppSizer.getHeight(context, 340),
                        width: AppSizer.getWidth(context, 800),
                        child: Column(
                          children: [
                            Expanded(
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
                                        left: AppSizer.getWidth(context, 10),
                                        right: AppSizer.getWidth(context, 10),
                                        bottom: AppSizer.getWidth(context, 10),
                                      ),
                                      child: SeriesCardWidget(),
                                    );
                                  }),
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
                  vertical: AppSizer.getHeight(context, 20)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardNameWidget(
                        primaryTitile:
                            'Your cards from Card Set                   80/182',
                        width: 260),
                    Material(
                      elevation: 10,
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: AppSizer.getHeight(context, 380),
                          width: AppSizer.getWidth(context, 800),
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 9,
                                    itemBuilder: (context, index) {
                                      return const CardWithImage();
                                    }),
                              ),
                              Row(
                                children: [
                                  const Expanded(child: Text('')),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 20.0),
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
