// ignore_for_file: library_private_types_in_public_api

// Import necessary packages and widgets
import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_collection_item.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/see_detail_title_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/collection_status_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';

class SeeCardDetailListView extends StatefulWidget {
  const SeeCardDetailListView({super.key});

  @override
  _SeeCardDetailListViewState createState() => _SeeCardDetailListViewState();
}

class _SeeCardDetailListViewState extends State<SeeCardDetailListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizer.getWidth(context, 173), vertical: 95),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SeeDetailTitleWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizer.getHeight(context, 67),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 67,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizer.getWidth(context, 30),
                              vertical: 34,
                            ),
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                const CollectionStatusCardWidget(),
                                Wrap(
                                  spacing: AppSizer.getWidth(context, 2),
                                  runSpacing: 10,
                                  children: List.generate(
                                    30,
                                    (index) => CardListView(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      CardNameWidget(
                        primaryTitile: 'Card List',
                        width: 563,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.transparent,
                        child: Container(
                          width: AppSizer.getWidth(context, 563),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizer.getWidth(context, 24),
                            vertical: 22,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            gradient: AppColors.buttonGradient,
                            boxShadow: [boxShadow()],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Card List',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'InterBold',
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.grid_view,
                                    size: 20,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  const SizedBox(
                                    width: 29,
                                  ),
                                  Icon(
                                    Icons.list,
                                    size: 25,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
