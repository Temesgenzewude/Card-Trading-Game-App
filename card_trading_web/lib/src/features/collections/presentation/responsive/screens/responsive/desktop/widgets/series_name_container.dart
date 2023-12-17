import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/dots_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/series_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SeriesNameContainer extends StatelessWidget {
  const SeriesNameContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizer.getWidth(context, 27),
        vertical: AppSizer.getHeight(context, 35),
      ),
      width: AppSizer.getWidth(context, 883),
      // height: AppSizer.getHeight(context, 350),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [boxShadow()],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Wrap(
              spacing: AppSizer.getWidth(context, 20),
              runSpacing: AppSizer.getWidth(context, 40),
              children: List.generate(
                5,
                (index) => SeriesCardWidget(),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        
        ],
      ),
    );
  }
}
