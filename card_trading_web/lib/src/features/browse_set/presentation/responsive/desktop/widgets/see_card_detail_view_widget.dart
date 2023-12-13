import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/see_detail_title_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/collection_status_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeeCardDetail extends ConsumerStatefulWidget {
  const SeeCardDetail({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SeeCardDetailState();
}

class _SeeCardDetailState extends ConsumerState<SeeCardDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 173),
              vertical: AppSizer.getHeight(context, 95),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SeeDetailTitleWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizer.getHeight(context, 67),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardNameWidget(
                        primaryTitile: 'Card List',
                        width: 563,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 36,
                          vertical: 34,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            boxShadow()
                          ],
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Column(
                          children: [
                            const CollectionStatusCardWidget(),
                            Wrap(
                              spacing: AppSizer.getWidth(context, 20),
                              runSpacing: AppSizer.getWidth(context, 40),
                              children: List.generate(
                                10,
                                (index) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    boxShadow: [
                                      boxShadow()
                                    ],
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  child: Image.asset(
                                    'assets/images/image3.png',
                                    width: AppSizer.getWidth(
                                      context,
                                      140,
                                    ),
                                    height: AppSizer.getHeight(context, 222),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FooterWidget()
        ],
      ),
    );
  }
}
