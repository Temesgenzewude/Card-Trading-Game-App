import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/text_button_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CardItemLeftWidget extends StatelessWidget {
  const CardItemLeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizer.getWidth(context, 280),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/image17.png',
            fit: BoxFit.cover,
          ),
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppSizer.getWidth(context, 90),
            runSpacing: AppSizer.getWidth(context, 15),
            children: [
              TextButtonWidget(buttonText: '<< Previous card'),
              TextButtonWidget(buttonText: 'Next card >>'),
            ],
          )
        ],
      ),
    );
  }
}
